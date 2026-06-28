# Skill: Note Capture

## Purpose
Quickly capture an incoming thought, idea, meeting note, or external link in a structured format.

## Algorithm

### 1. Receive Input
Accept raw text, voice transcript, web link, file, or code snippet.

### 2. Identify the Note Type
- Thought / Idea
- Meeting note
- Reference / Inspiration (link, quote)
- Task / Next action
- Reflection / Log

### 3. Create the Note File
File path format: `./individual/inbox/<YYYY-MM-DD>_<topic-slug>.md`

YAML frontmatter:
```yaml
---
date: <YYYY-MM-DD>
tags: []
status: seedling
type: <type from step 2>
---
```

### 4. Populate Content
- Brief summary (1-3 sentences).
- Raw source material (verbatim).
- Any initial connections or next steps.

### 5. Establish Cross-References
Use `[[wiki-style links]]` to connect to relevant notes in the `./individual/notes/` directory.

## Compliance
After capturing the note, output:
```xml
<skills_loaded>
note-capture.md
</skills_loaded>

<compliance>
note-capture.md: note created at './individual/inbox/<file-name>.md', type '<type>', connections established: <N>
</compliance>
```
