#!/bin/bash
# LoomRoute Lint: Validate CLAUDE.md files and skills

echo "=== LoomRoute Lint ==="
echo ""

ERRORS=0

# Validate root CLAUDE.md
echo "Validating root CLAUDE.md..."
if [ -f "./CLAUDE.md" ]; then
    LINES=$(wc -l < "./CLAUDE.md")
    if [ "$LINES" -gt 70 ]; then
        echo "  ERROR: CLAUDE.md exceeds 70 lines ($LINES)"
        ERRORS=$((ERRORS + 1))
    else
        echo "  OK: $LINES lines (limit 70)"
    fi
    
    # Check mandatory sections
    for section in "## Role" "## Guardrails"; do
        if ! grep -q "$section" "./CLAUDE.md"; then
            echo "  ERROR: Missing mandatory section '$section'"
            ERRORS=$((ERRORS + 1))
        fi
    done
    
    # Check references to deleted files
    for deleted in "compliance-protocol.md" "poka-yoke-aci.md"; do
        if grep -q "$deleted" "./CLAUDE.md"; then
            echo "  ERROR: Reference to deleted file '$deleted'"
            ERRORS=$((ERRORS + 1))
        fi
    done
else
    echo "  ERROR: root CLAUDE.md not found"
    ERRORS=$((ERRORS + 1))
fi

echo ""

# Validate environment CLAUDE.md files (dynamically discovered)
echo "Validating environment CLAUDE.md files..."
for env_dir in */; do
    env=${env_dir%/}
    # Skip standard global folders that are not environments
    if [ "$env" = "skills" ] || [ "$env" = "templates" ] || [ "$env" = "archive" ] || [ "$env" = "docs" ] || [ "$env" = "*" ]; then
        continue
    fi
    
    FILE="./$env/CLAUDE.md"
    if [ -f "$FILE" ]; then
        LINES=$(wc -l < "$FILE")
        if [ "$LINES" -gt 70 ]; then
            echo "  ERROR: $env/CLAUDE.md exceeds 70 lines ($LINES)"
            ERRORS=$((ERRORS + 1))
        else
            echo "  OK: $env/CLAUDE.md: $LINES lines"
        fi
    else
        echo "  ERROR: $env/CLAUDE.md not found in environment directory '$env'"
        ERRORS=$((ERRORS + 1))
    fi
done

echo ""

# Validate skill files
echo "Validating global skills..."
for skill in "./skills/"*.md; do
    if [ -f "$skill" ]; then
        NAME=$(basename "$skill")
        LINES=$(wc -l < "$skill")
        if [ "$LINES" -gt 60 ]; then
            echo "  WARNING: $NAME exceeds 60 lines ($LINES)"
        fi
    fi
done

echo ""

# Validate links in CLAUDE.md
echo "Checking skill references in CLAUDE.md..."
if [ -f "./CLAUDE.md" ]; then
    for skill in $(grep -o 'skills/[a-zA-Z0-9_-]*\.md' "./CLAUDE.md" | sort -u); do
        if [ ! -f "./$skill" ]; then
            echo "  ERROR: Reference to non-existent file '$skill'"
            ERRORS=$((ERRORS + 1))
        fi
    done
fi

echo ""

# Result summary
if [ $ERRORS -eq 0 ]; then
    echo "=== Lint clean! No errors found. ==="
else
    echo "=== Total errors found: $ERRORS ==="
    exit 1
fi


