# cloud-session

Scaffold for working in Claude Code cloud sessions.

The SessionStart hook in `.claude/hooks/session-start.sh` runs when a cloud
session starts. It installs dependencies for whatever project files exist here
(`requirements.txt`, `pyproject.toml`, `package.json`), so tests and linters
work right away.
