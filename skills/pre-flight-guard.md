# Skill: Pre-flight Guard: Checklist Before Dangerous Operations

## Purpose
Verify preconditions before executing any destructive or critical operation (moving, deleting, deploying, clearing, hard resetting).

## Critical Operations
| Operation Type | Requires Pre-flight |
|---|---|
| Read, Write, Copy (`cp`) | No |
| Delete/Move (`rm`, `rmdir`, `mv` simulation) | Yes |
| Deploy (`surge`, `vercel --prod`) | Yes |
| Git hard reset / clean (`git reset --hard`, `git clean`) | Yes |
| Third-party build scripts | Yes |

## Mandatory Checklist
- [ ] **Backup Exists?**: If the directory is not a Git repository, make a copy to `./.backups/<date>/`.
- [ ] **Paths Exist?**: Verify that `source` and `destination` exist on the filesystem.
- [ ] **Isolation Maintained?**: Confirm the operation is fully contained within the active environment folder and does not touch other environments.
- [ ] **User Confirmed?**: Display exactly what actions will be executed and get explicit user approval.
- [ ] **No Trash Files?**: Confirm that temporary files, `node_modules/`, and system reserved names (like `nul`) are excluded.

## Failure Protocol
If any checklist item is not satisfied, stop immediately. Report the failed item to the user and do not proceed.

