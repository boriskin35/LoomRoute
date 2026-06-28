# Method Karpati (Work Packets Workflow)

This document explains the **Method Karpati** (Work Packets) workflow used inside the **work** environment of LoomRoute.

---

## 1. Concept: Brief and Checks

The **Method Karpati** is a software engineering workflow popularized by Andrej Karpathy. It ensures that an AI agent or a developer works systematically, minimizing mistakes and avoiding "code churn" or blind guessing.

The workflow revolves around two critical documents created for each non-trivial task:
1. **`brief.md` (The Blueprint)**: Before writing any code, you document the task requirements, context, architecture choices, and expected outcomes.
2. **`checks.md` (The Verification Checklist)**: Along with the brief, you create a step-by-step checklist of tests, assertions, and verification commands. Every item starts as uncompleted `[ ]` and must pass verification to become `[x]` (`pass`).

---

## 2. Step-by-Step Workflow

When you start a task in the `work` environment (e.g. creating a feature, fixing a bug, or deploying):

```
[Start Task] ──�: � 1. Gather Info ──�: � 2. Create brief.md & checks.md
                                             │
   ┌─────────────────────────────────────────┘
   �: �
3. Write Code ──�: � 4. Run Checks (Pass/Fail)
                        │
                        ├─�: � Fail: Fix code & repeat step 4
                        │
                        └─�: � Pass: 5. Archive task & Deploy
```

### Step 0: Information Gathering
The agent asks 3-5 clarifying questions about the project goals, requirements, constraints, and dependencies. **Coding does not begin until these questions are answered.**

### Step 1: Writing the Brief
The agent creates `./work/<project>/brief.md` using the templates:
- `./templates/brief.template.md` (for large/complex projects).
- `./templates/brief-lite.template.md` (for small tweaks and bug fixes).

The brief defines the scope of changes and the architectural design decisions.

### Step 2: Creating the Checklist
The agent creates `./work/<project>/checks.md` based on `./templates/checks.template.md`.
The checklist specifies exact verification commands (e.g., `npm run test`, checking HTTP status codes, verifying file creation).

### Step 3: Execution and Verification
The agent writes the code. Once done, it runs each command from `checks.md` to verify the code:
- If a check passes, it is marked as `[x] pass`.
- If a check fails, it is marked as `[ ] fail`, and the agent must debug the code and repeat the check.

### Step 4: Archiving and Deploy
The task is not considered complete and no deployment is allowed until **every single item** in `checks.md` is marked as `pass`. Once complete, the task is archived using the `/archive` command (which triggers the `./skills/archive-task.md` skill, moving files to `./archive/`).


