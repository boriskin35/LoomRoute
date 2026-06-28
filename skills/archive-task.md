# Skill: ARCHIVE_TASK: Archiving Completed Tasks

## Purpose
Move `brief.md` and `checks.md` of a completed task to the archive to clean up the working directory.

## Algorithm
1. **Verify Readiness:**
   - All items in `checks.md` must be marked as `pass`.
   - If there are `fail` or empty items, stop and notify the user.

2. **Define Paths:**
   - Sources: `./<env>/<project>/brief.md` and `checks.md`
   - Destination: `./archive/<env>/<project>/<YYYY-MM-DD>_[task-name]/`

3. **Transfer (SAFE_COPY protocol):**
   - Create the destination archive folder.
   - Copy the files.
   - Verify identity (`diff` or hash sum).
   - Delete the original files from the active project directory.

## Compliance
After completing the archive task, output:
```xml
<skills_loaded>
archive-task.md
</skills_loaded>

<compliance>
archive-task.md: task archived successfully to ./archive/<env>/<project>/...
</compliance>
```

