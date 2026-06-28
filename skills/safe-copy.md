# Skill: SAFE_COPY: Secure File Migration

## Purpose
Safely copy or migrate files and directories without data loss or corruption, avoiding direct `mv` commands.

## Three-Step Protocol
Direct use of `mv` is **forbidden**. Always use the following three steps:

1. **Copy (`cp`)**: Copy the files recursively to the destination: `cp -r <source> <destination>`
2. **Verify (`diff`)**: Compare the source and destination to confirm they are identical: `diff -r <source> <destination>` (or compare file hash sums).
3. **Remove (`rm`)**: Delete the source files after verification: `rm -rf <source>`

## Guardrails
- If any step returns an error, stop immediately and report to the user.
- Before copying directories larger than 10MB, show the size and ask for user confirmation.

## Example
```bash
# Step 1: Copy
cp -r "./my-source-folder" "./work/my-project"

# Step 2: Verify
diff -r "./my-source-folder" "./work/my-project"

# Step 3: Remove original
rm -rf "./my-source-folder"
```

## Excluded Files
- `node_modules/`
- `.git/`
- `nul` (Windows reserved device names)
- `.env` (never copy environment variables between different projects unless specified)

