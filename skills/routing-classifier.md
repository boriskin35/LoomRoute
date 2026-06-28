# Skill: Routing Classifier

## Purpose
Dynamically determine the most appropriate environment to handle the user's request.

## Algorithm

### 1. Retrieve Available Environments
- Load the root `./registry.md` file.
- Extract the list of currently registered environment folders and their triggers from the "Routing Map" table.

### 2. Classify User Input
Compare the actual user input received in this conversation against the extracted environments and their triggers.
Use the following classification prompt format internally:

```
Analyze the actual user input received in this conversation and select the most appropriate environment from the registered list: [Insert list of environments extracted from registry.md].
First explain your reasoning, then provide your selection in this XML format:

<reasoning>
Brief explanation: why the input belongs to this environment based on triggers and context.
</reasoning>

<selection>
Name of the selected environment folder (or "root" if it's a global action like creating a new environment).
</selection>
```

### 3. Priority Gating
If the input matches multiple environments, select the one with the highest priority as defined in the "Environment Priority" list in `./registry.md`.

### 4. Ambiguity Resolution
If the input does not match any registered environment triggers, list the available environments and ask the user to clarify.

## Compliance
After classifying the input, output the selection details to trigger the next step.
