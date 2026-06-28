# Skill: Troubleshooter: Step-by-Step Debugging

## Purpose
When the AI starts guessing fixes blindly, this skill forces a systematic, measurement-driven debugging process.

## When to Use
- The first attempt to fix an issue failed.
- The root cause of a bug is not immediately obvious.
- Systematic isolation of a failure is needed.

## Algorithm

### 1. Define the Problem
- What is the expected behavior? What is the actual behavior? When does the issue occur?

### 2. Map Inputs and Outputs
- What data goes in? What is expected to come out? What is actually coming out?

### 3. Divide and Conquer (Trace the Flow)
- Segment the system into sequential steps (A → B → C → D). Identify the step where the data becomes corrupt or lost.

### 4. Verify Each Step (Measure)
- Inspect the input and output of each specific step.
- The first step where the input is correct but the output is incorrect is the point of failure.

### 5. Identify the Root Cause
- Find *why* the failing step is broken (do not just patch the symptoms).

### 6. Propose a Data-Backed Fix
- Base the fix on the gathered metrics and measurements, not assumptions.

## Core Rule
**Never guess.** Every debugging step must be backed by measurements or direct inspection.

## Compliance
After completing the troubleshooting protocol, output:
```xml
<skills_loaded>
troubleshoot.md
</skills_loaded>

<compliance>
troubleshoot.md: problem defined, <N> steps verified, root cause identified
</compliance>
```

