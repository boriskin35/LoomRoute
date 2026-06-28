# Skill: Create New Environment

## Purpose
Step-by-step instructions for creating a new environment folder in the LoomRoute ecosystem.

## Algorithm
1. Create the environment folder: `./<environment-name>/`
2. Create the environment constitution `./<environment-name>/CLAUDE.md`:
   - Define the agent's role.
   - Specify the workflow pattern (e.g., Prompt Chaining, Orchestrator-Workers, Evaluator-Optimizer).
   - Set the ACI Policy (Poka-yoke) using relative paths.
   - List Guardrails specific to this environment.
3. Create `./<environment-name>/skills/` for local environment skills.
4. Create `./<environment-name>/registry.md` to log projects inside the environment.
5. Register the new environment inside the root `./registry.md` under the routing map.

## Compliance
After creating the environment, output:
```xml
<skills_loaded>
create-environment.md
</skills_loaded>

<compliance>
create-environment.md: environment './<environment-name>/' created, root './registry.md' updated
</compliance>
```

