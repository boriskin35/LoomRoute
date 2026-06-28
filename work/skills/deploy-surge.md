# Skill: Deploy to Surge

## Purpose
Quickly deploy static websites to Surge.sh.

## Algorithm
1. Verify if the Surge authentication token is configured in the environment variables or the project's local `.env` (`SURGE_TOKEN`).
2. Export the token to the terminal session if needed: `$env:SURGE_TOKEN="..."` (PowerShell) or `export SURGE_TOKEN="..."` (Bash).
3. Determine the build output folder (e.g., `./dist/`) and the target custom domain (e.g., `<my-project>.surge.sh`).
4. Execute the deployment command: `surge <build-folder> <domain>.surge.sh`
5. Print the live URL for the user.

## Example
```powershell
cd ./work/my-project && surge ./dist my-project.surge.sh
```

## ACI (Poka-yoke)
- The authentication token must never be committed to Git.
- Show a brief summary of changes before executing the deploy.
- If Surge prompts for credentials interactively, stop the process and request the user to log in manually in their terminal using `surge login`.
