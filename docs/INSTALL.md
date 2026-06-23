# Install

## Local (preferred)

Requires: git, a recent Node.js, and Claude Code (`npm i -g @anthropic-ai/claude-code`), plus an
active Claude subscription.

```bash
git clone https://github.com/jneaimi/command-center-starter.git command-center
cd command-center
claude
```

Claude Code automatically loads `CLAUDE.md`, the skills under `.claude/skills/`, and the agent
under `.claude/agents/` for any session started inside this folder.

## Restore just one piece

If your own vault already exists and you only need to recover a part:

```bash
# the four-folder scaffold + rules
cp -R command-center/{inbox,knowledge,projects,templates,CLAUDE.md} your-vault/

# a single skill (e.g. after a Day-5 typo)
cp -R command-center/.claude/skills/weekly-review your-vault/.claude/skills/

# the Day-6 agent
cp command-center/.claude/agents/note-researcher.md your-vault/.claude/agents/
```

## Locked-down machine?

If you cannot install locally (common on managed/government devices), use the cloud fallback —
see `CLOUD-IDE.md`.
