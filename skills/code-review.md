# Skill: Agent Code Review

## Purpose
Inspect code for errors, security vulnerabilities, and adherence to workspace standards.

## Checklist
- [ ] Syntax (run linter/compiler checks if applicable).
- [ ] Security: no hardcoded secrets/API keys, no raw SQL injections.
- [ ] Poka-yoke: parameters and arguments have descriptions and examples.
- [ ] Paths: relative to workspace root (e.g., `./`), avoid absolute system-specific paths (like `D:\`).
- [ ] Imports: unused imports removed.
- [ ] Error handling: try/except or try/catch blocks used properly.

## Iterative Review Loop
1. Review code against the checklist above.
2. If errors are found, fix them immediately.
3. Repeat the check after applying fixes.
4. Run a maximum of 3 iterations.

### Post-Loop Protocol
- Show the final review report: what was fixed, and what remains.
- If errors persist, suggest concrete next actions to fix them.
- Do not ask "should I continue or accept?": suggest a direct action.

## Compliance
After completing the code review, output:
```xml
<skills_loaded>
code-review.md
</skills_loaded>

<compliance>
code-review.md: review completed, <N> iterations run, <M> errors fixed
</compliance>
```

