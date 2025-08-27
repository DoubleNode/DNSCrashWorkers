#!/bin/bash

echo "🔧 Fixing Swift 6 concurrency warnings..."

# Find all test files with allTests and fix them
find Tests/DNSCrashWorkersTests -name "*.swift" -type f | while read file; do
    if grep -q "static var allTests" "$file"; then
        echo "  Fixing: $file"
        sed -i '' 's/static var allTests/static let allTests/g' "$file"
    fi
done

echo "✅ Fixed all concurrency warnings for allTests properties"