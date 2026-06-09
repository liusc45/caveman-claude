#!/usr/bin/env bash
# Manual install into ~/.claude (alternative to the /plugin marketplace flow).
set -euo pipefail

CLAUDE_DIR="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$CLAUDE_DIR/skills" "$CLAUDE_DIR/commands" "$CLAUDE_DIR/agents" "$CLAUDE_DIR/output-styles"

cp -R "$REPO_DIR/skills/caveman-compress" "$CLAUDE_DIR/skills/"
cp "$REPO_DIR/commands/caveman.md" "$CLAUDE_DIR/commands/"
cp "$REPO_DIR/agents/caveman.md" "$CLAUDE_DIR/agents/"
cp "$REPO_DIR/output-styles/caveman.md" "$CLAUDE_DIR/output-styles/"

echo "caveman installed in $CLAUDE_DIR"
echo ""
echo "  /output-style Caveman      # persistent caveman mode (recommended)"
echo "  /caveman lite|full|ultra   # toggle intensity in current session"
echo "  /caveman off               # back to normal"
echo ""
echo "Prefer the plugin flow? In Claude Code run:"
echo "  /plugin marketplace add liusc45/caveman-claude"
echo "  /plugin install caveman@caveman-claude"
