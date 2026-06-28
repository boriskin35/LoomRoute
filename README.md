# LoomRoute: Agentic Context Scaffold

A lightweight, isolated context-routing framework designed specifically for terminal-based AI coding agents (**Claude Code**, **Opencode**, **Antigravity 2.0**, **Qwen CLI**, and **Mimo CLI**). It organizes your workspace into isolated environments (e.g., `work` and `individual`) to keep agent context clean, minimize token usage, and enforce structured workflows.

> [!WARNING]
> **IDE Compatibility:** This framework is designed specifically for terminal-based CLI agents that read `CLAUDE.md` natively on start. It is **not** fully compatible with IDEs like Cursor or Windsurf out-of-the-box, as they do not support dynamic local rule switching during chat sessions.

---

## 💡 Bilingual Repository / Двуязычный репозиторий

This repository contains bilingual documentation (English and Russian). You can safely delete the files in the language you do not need:
- To keep **English only**: delete all `*.RU.md` files.
- To keep **Russian only**: delete the English `.md` files and rename the `*.RU.md` files to take their place (e.g., rename `README.RU.md` to `README.md`).

---

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/boriskin35/LoomRoute.git
   ```
2. Navigate into the directory:
   ```bash
   cd LoomRoute
   ```
3. Launch your CLI agent (e.g., `claude` or `qwen`).
4. Type `/help` to see the list of available commands (or simply type `help` if your terminal client/IDE intercepts the slash key).
5. Try creating a new environment: *"Create a new environment named learn"* or type `help` to see options.

---

## Workspace Structure

- `CLAUDE.md`: Root constitution (Router agent role).
- `registry.md`: Global routing registry.
- `skills/`: Global agent skills (archive, safe-copy, etc. in English).
- `templates/`: Document templates (briefs, checks).
- `work/`: Professional environment (code, web apps, deployments).
- `individual/`: Personal environment (Second Brain, diary, ideas).

---

## Built-in Commands

LoomRoute comes with 9 preconfigured commands. If your terminal client or IDE intercepts the `/` character, type them as normal text without the slash (e.g., `help` instead of `/help`):

- `/help` (or `help`): Lists all available commands.
- `/troubleshoot` (or `troubleshoot`): Initiates systematic step-by-step debugging.
- `/review` (or `review`): Audits and reviews your code.
- `/note <text>` (or `note <text>`): Captures a quick thought into your Second Brain inbox.
- `/notes` (or `notes`): Shows recent raw drafts in your inbox.
- `/brief <topic>` / `/brief-lite <topic>`: Generates Karpati task briefs.
- `/checks <topic>`: Creates verification checklists.
- `/archive` (or `archive`): Safely archives completed work packets.

## Custom Commands

You can easily add your own custom commands (like `/deploy` or `/test`) in three simple steps: write a skill markdown file, register it in `skills/commands.md`, and run it. For a step-by-step guide, see [docs/ARCHITECTURE.md#4-how-to-add-custom-slash-commands](./docs/ARCHITECTURE.md#4-how-to-add-custom-slash-commands).

---

## Detailed Guides (Documentation)

For in-depth explanations, refer to the following documents inside the `./docs/` folder:

- **Ecosystem Architecture:** [docs/ARCHITECTURE.md](./docs/ARCHITECTURE.md) (Russian: [docs/ARCHITECTURE.RU.md](./docs/ARCHITECTURE.RU.md)): Philosophy, visual folder tree, and file-reading protocol.
- **Method Karpati Workflow:** [docs/METHOD_KARPATI.md](./docs/METHOD_KARPATI.md) (Russian: [docs/METHOD_KARPATI.RU.md](./docs/METHOD_KARPATI.RU.md)): Work packets (`brief.md` + `checks.md`) methodology.
- **Catalog of Commands:** [skills/commands.md](./skills/commands.md): Detailed description of available slash commands.

---

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.


