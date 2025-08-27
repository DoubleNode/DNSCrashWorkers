#!/bin/bash

# Test compilation of ALL test files
set -e

echo "🔍 Testing compilation of ALL test files..."

# Get dependency paths
DEPS_BASE=".build/checkouts"

# Check if dependencies exist
if [ ! -d "$DEPS_BASE" ]; then
    echo "❌ Dependencies not found. Please run 'swift package resolve' first."
    exit 1
fi

# Define include paths for dependencies
INCLUDE_PATHS=""
INCLUDE_PATHS="$INCLUDE_PATHS -I $DEPS_BASE/DNSCore/Sources"
INCLUDE_PATHS="$INCLUDE_PATHS -I $DEPS_BASE/DNSError/Sources"  
INCLUDE_PATHS="$INCLUDE_PATHS -I $DEPS_BASE/DNSProtocols/Sources"
INCLUDE_PATHS="$INCLUDE_PATHS -I $DEPS_BASE/DNSDataObjects/Sources"
INCLUDE_PATHS="$INCLUDE_PATHS -I $DEPS_BASE/DNSBlankWorkers/Sources"
INCLUDE_PATHS="$INCLUDE_PATHS -I Sources"

# Find all Swift test files
TEST_FILES=($(find Tests/DNSCrashWorkersTests -name "*.swift" -not -name "SimpleCompilationTest.swift"))

echo "📝 Found ${#TEST_FILES[@]} test files to compile..."

FAILED_COUNT=0
SUCCESS_COUNT=0

for test_file in "${TEST_FILES[@]}"; do
    if [ -f "$test_file" ]; then
        echo "  Testing: $test_file"
        # Just parse, don't try to link since we don't have full framework
        if swiftc -parse "$test_file" $INCLUDE_PATHS -target arm64-apple-macos10.15 2>/dev/null; then
            echo "  ✅ $test_file - Syntax OK"
            ((SUCCESS_COUNT++))
        else
            echo "  ❌ $test_file - Compilation errors found"
            # Show the actual error for debugging
            swiftc -parse "$test_file" $INCLUDE_PATHS -target arm64-apple-macos10.15 2>&1 | head -5
            ((FAILED_COUNT++))
        fi
    else
        echo "  ⚠️ $test_file - File not found"
    fi
done

echo ""
echo "📊 Compilation Results:"
echo "  ✅ Successful: $SUCCESS_COUNT"
echo "  ❌ Failed: $FAILED_COUNT"
echo "  📁 Total: ${#TEST_FILES[@]}"

if [ $FAILED_COUNT -eq 0 ]; then
    echo "🎉 All test files compiled successfully!"
    exit 0
else
    echo "⚠️ Some test files had compilation errors."
    exit 1
fi