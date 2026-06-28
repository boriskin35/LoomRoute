# Skill: Method Karpati (Work Packets)

## Purpose
A structured workflow for executing non-trivial tasks using briefs and verification checklists.

## When to Use
- The task requires multiple steps.
- Comprehensive result validation is needed.
- The user requests a robust implementation.

## Template Selection
- **Complex Tasks** (new features, integrations, refactoring): use `./templates/brief.template.md`
- **Minor Tasks** (tweaks, small bug fixes): use `./templates/brief-lite.template.md`

## Algorithm
0. **Information Gathering:** Ask the user 3-5 clarifying questions (goals, tech stack, constraints, scope). Do not proceed until you have the answers.
1. **Vision:** Write a short project vision (1-3 sentences) at the top of the brief.
2. **Brief:** Create `./work/<project>/brief.md` using the template `./templates/brief.template.md`.
3. **Checklist:** Create `./work/<project>/checks.md` using the template `./templates/checks.template.md`.
4. **Validation:** Validate all code changes using the checks list. If a check has a `fail` status, fix the issue until it is `pass`.
5. **Completion:** Do not declare the task complete or attempt deployment until all items in `checks.md` are marked as `pass`.

## Compliance
Upon setting up the work packet, output:
```xml
<skills_loaded>
method-karpati.md
</skills_loaded>

<compliance>
method-karpati.md: brief created, checks initialized (<N>/<M> items pass)
</compliance>
```
