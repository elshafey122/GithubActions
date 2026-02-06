#!/bin/bash

# Expected output
EXPECTED="hello Test"

# Run the app and capture output
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

# Compare results
if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "✅ Test passed!"
  exit 0
else
  echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi
