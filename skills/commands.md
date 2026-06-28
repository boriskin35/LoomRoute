# LoomRoute Slash Commands

## Purpose
Short commands to automate routine workflows. Instead of describing the task, trigger the slash command.

## Command Catalogue

### System Commands
| Command | Description | Algorithm |
|---|---|---|
| `/help` | Display the list of all commands | Output this file entirely |
| `/troubleshoot` | Step-by-step issue troubleshooting | Run `./skills/troubleshoot.md` |

### Working Packets (Method Karpati)
| Command | Description | Algorithm |
|---|---|---|
| `/brief <topic>` | Create a detailed brief for a task | Use `./templates/brief.template.md` |
| `/brief-lite <topic>` | Create a simplified brief for small tasks | Use `./templates/brief-lite.template.md` |
| `/checks <topic>` | Create a verification checklist | Use `./templates/checks.template.md` |
| `/archive` | Archive a completed task | Run `./skills/archive-task.md` |

### Work and Projects
| Command | Description | Algorithm |
|---|---|---|
| `/deploy vercel <project>` | Deploy a project to Vercel | Run `./work/skills/deploy-vercel.md` |
| `/deploy surge <project>` | Deploy a project to Surge | Run `./work/skills/deploy-surge.md` |
| `/review` | Conduct code review | Run `./skills/code-review.md` |

### Notes
| Command | Description | Algorithm |
|---|---|---|
| `/note <text>` | Quickly capture a raw note | Run `./individual/skills/note-capture.md` |
| `/notes` | Show recent captured notes | List contents of `./individual/inbox/` |

## Usage Rules
- Triggering a command replaces the task description: do not write both.
- After running a command, wait for the result, then confirm or adjust.
- Commands run in the context of the active environment (determined by `./registry.md`).


