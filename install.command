#!/bin/bash

# Toast Compass — Installer
# Double-click this file to install the /compass skill in Claude Code.

SKILL_DIR="$HOME/.claude/skills/compass"
SOURCE_DIR="$(dirname "$0")"

mkdir -p "$SKILL_DIR"

cp "$SOURCE_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"
cp "$SOURCE_DIR/coordinator.md" "$SKILL_DIR/coordinator.md"
cp "$SOURCE_DIR/agent-1.md" "$SKILL_DIR/agent-1.md"
cp "$SOURCE_DIR/agent-2.md" "$SKILL_DIR/agent-2.md"
cp "$SOURCE_DIR/agent-2b.md" "$SKILL_DIR/agent-2b.md"
cp "$SOURCE_DIR/agent-2c.md" "$SKILL_DIR/agent-2c.md"
cp "$SOURCE_DIR/agent-3.md" "$SKILL_DIR/agent-3.md"
cp "$SOURCE_DIR/agent-4.md" "$SKILL_DIR/agent-4.md"

echo ""
echo "✓ Toast Compass installed successfully."
echo ""
echo "Next step: Quit and relaunch Claude Code, then type /compass to get started."
echo ""
read -p "Press Enter to close this window."
