# Unhandled FormatException in Dart JSON Decoding

This example demonstrates a common error in Dart applications that handle JSON data.  The code attempts to fetch and parse JSON data, but the error handling is insufficient.  A malformed JSON response can cause a `FormatException` during `jsonDecode`, which is masked by a generic `catch` block.

## Problem

The original `fetchData` function uses a generic `catch` block.  This means any error during the API call or JSON parsing will trigger the same error message. This makes diagnosing the root cause difficult.  A `FormatException` specifically related to malformed JSON is not identified, hindering debugging.

## Solution

The solution provides more specific exception handling. The `try-catch` block specifically targets `FormatException` to handle JSON parsing errors differently from network or other issues.   This allows for more informative error messages and targeted debugging.