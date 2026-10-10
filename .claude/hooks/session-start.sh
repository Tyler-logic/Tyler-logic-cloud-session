#!/bin/bash
set -euo pipefail

# Only bootstrap in Claude Code cloud sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

if [ -f requirements.txt ]; then
  pip install -r requirements.txt
fi

if [ -f pyproject.toml ]; then
  pip install -e ".[dev]" 2>/dev/null || pip install -e .
fi

if [ -f package.json ]; then
  npm install
fi
