# LoomRoute Ecosystem Architecture

This document describes the design philosophy, context routing mechanics, and folder structure of the **LoomRoute** agentic framework.

---

## 1. Design Philosophy: Isolated Contexts

The core philosophy of LoomRoute is **Context Gating**. 

Most AI coding assistants struggle as the codebase grows because they load too much irrelevant information, leading to high token usage, confusion, and slower responses. 

LoomRoute solves this by dividing work into **isolated environments**:
- **Work (`./work/`)**: Specifically for software engineering, deployments, writing code, and client tasks.
- **Individual (`./individual/`)**: Specifically for personal journaling, ideas, reflections, and second brain curation.

### Key Rules:
- The **Second Brain (`individual`) is not the root** of the workspace; it is just one of the isolated environments.
- The root of the repository acts purely as a **declarative router**. It holds no personal project code or data.

---

## 2. Environment Entry Protocol (File Load Sequence)

When an AI agent (such as Claude Code, Opencode, Antigravity, Mimo, or Qwen CLI) initializes in the workspace or switches environments, it follows a strict **3-step discovery sequence**:

```
[User Request]
      │
      �: �
1. CLAUDE.md (Root) ──�: � Loads global rules and triggers Routing Classifier
      │
      �: �
2. registry.md (Root) ──�: � Maps query to the selected environment folder
      │
      �: �
3. <env>/CLAUDE.md ──�: � Transitions agent's role and loads local rules
```

1. **`CLAUDE.md` (Constitution)**: Defines the active agent role, ACI (Poka-yoke) path policies, guardrails, and links to available skills.
2. **`registry.md` (Registry)**: Tells the agent which environment folder corresponds to which trigger keywords.
3. **`skills/*.md` (Skills)**: Defines the "verbs" (archive-task, safe-copy, note-capture, etc.) that the agent can read and execute as clear step-by-step algorithms.

---

## 3. Directory Layout

The skeletal layout of the workspace is designed to be clean and modular:

```
./
├── CLAUDE.md              ← Root constitution (Routing role)
├── README.md              ← Project overview & English quick start
├── README.RU.md           ← Russian overview & quick start
├── registry.md            ← Global environment mapping table
├── docs/                  ← Technical documentation
│   ├── ARCHITECTURE.md    ← Framework architecture (English)
│   ├── ARCHITECTURE.RU.md ← Framework architecture (Russian)
│   ├── METHOD_KARPATI.md  ← Work packet methodology (English)
│   └── METHOD_KARPATI.RU.md ← Work packet methodology (Russian)
├── skills/                ← Global agent skills (archive, safe-copy, etc.)
├── templates/             ← Global templates (briefs, checklists)
├── archive/               ← Global task archive
├── work/                  ← Work environment folder
│   ├── CLAUDE.md          ← Local work constitution (Developer role)
│   ├── registry.md        ← Project index inside work/
│   └── skills/            ← Local deployment skills (vercel, surge)
└── individual/            ← Second Brain environment folder
    ├── CLAUDE.md          ← Local second brain constitution (Curator role)
    ├── registry.md        ← Note index inside individual/
    ├── MEMORY.md          ← Stateful session-to-session memory
    ├── skills/            ← Local capture skills (note-capture)
    └── inbox/             ← Incoming raw drafts
```

## 4. How to Add Custom commands

Adding your own commands to automate custom workflows (like deployments, database migrations, or code generation) is extremely simple:

1. **Create a Skill File**: Write a Markdown file (e.g., `./skills/deploy-aws.md` or `./work/skills/deploy-vercel.md`) outlining the step-by-step algorithm the agent must follow.
2. **Register the Command**: Open `./skills/commands.md` and add a new row to the "Command Catalogue" table mapping your custom command (e.g., `/deploy aws`) to the path of your new skill file.
3. **Run the Command**: Simply type `/deploy aws` in your CLI agent's chat, and the agent will load the skill and execute it.


