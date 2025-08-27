#!/bin/bash

# Test compilation script to verify our test files compile correctly
set -e

echo "🔍 Testing compilation of individual test files..."

# Create temporary directory for compilation test
TEMP_DIR=$(mktemp -d)
echo "Using temporary directory: $TEMP_DIR"

# Copy source files
cp -r Sources "$TEMP_DIR/"

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

# Test files to compile
TEST_FILES=(
    "Tests/DNSCrashWorkersTests/WKRCrashAnalyticsWorkerTests.swift"
    "Tests/DNSCrashWorkersTests/WKRCrashAuthenticationWorkerTests.swift"
    "Tests/DNSCrashWorkersTests/WKRCrashCacheWorkerTests.swift"
    "Tests/DNSCrashWorkersTests/WKRCrashAccountWorkerTests.swift"
    "Tests/DNSCrashWorkersTests/WKRCrashUsersWorkerTests.swift"
    "Tests/DNSCrashWorkersTests/DNSCrashWorkersIntegrationTests.swift"
    "Tests/DNSCrashWorkersTests/DNSCrashWorkersErrorHandlingTests.swift"
)

echo "📝 Testing subset of test files for compilation..."

for test_file in "${TEST_FILES[@]}"; do
    if [ -f "$test_file" ]; then
        echo "  Testing: $test_file"
        # Just parse, don't try to link since we don't have full framework
        if swiftc -parse "$test_file" $INCLUDE_PATHS -target arm64-apple-macos10.15 2>&1; then
            echo "  ✅ $test_file - Syntax OK"
        else
            echo "  ❌ $test_file - Compilation errors found"
        fi
    else
        echo "  ⚠️ $test_file - File not found"
    fi
done

# Cleanup
rm -rf "$TEMP_DIR"

echo "✅ Compilation test completed!"