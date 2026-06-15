#!/bin/bash

# Toast Compass — Installer
# Double-click this file to install the /compass skill in Claude Code.

SKILL_DIR="$HOME/.claude/skills/compass"
SOURCE_DIR="$(dirname "$0")"

echo ""
echo "Installing Toast Compass..."
echo ""

mkdir -p "$SKILL_DIR"

cp "$SOURCE_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"
cp "$SOURCE_DIR/toast-compass-coordinator.md" "$SKILL_DIR/coordinator.md"
cp "$SOURCE_DIR/toast-compass-agent-1-objective-method.md" "$SKILL_DIR/agent-1.md"
cp "$SOURCE_DIR/toast-compass-agent-2-recruitment.md" "$SKILL_DIR/agent-2.md"
cp "$SOURCE_DIR/toast-compass-agent-2b-maze-study-setup.md" "$SKILL_DIR/agent-2b.md"
cp "$SOURCE_DIR/toast-compass-agent-2c-maze-recruitment.md" "$SKILL_DIR/agent-2c.md"
cp "$SOURCE_DIR/toast-compass-agent-3-interview-guide-builder-session-coach.md" "$SKILL_DIR/agent-3.md"
cp "$SOURCE_DIR/toast-compass-agent-4-synthesis-shareout.md" "$SKILL_DIR/agent-4.md"

echo "✓ Toast Compass installed successfully."
echo ""
echo "──────────────────────────────────────────"
echo "To use Compass:"
echo ""
echo "  Claude Code desktop:"
echo "  Open the Code tab (</>) and type /compass"
echo ""
echo "  Terminal:"
echo "  Type /compass in any Claude Code session"
echo "──────────────────────────────────────────"
echo ""
read -p "Press Enter to close this window."
