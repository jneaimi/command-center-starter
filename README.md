# The Starter Vault — Week 2 · Day 5

The shared vault every student adopts on the morning of Day 5, so the whole room
starts from the same known-good ground. This repo root **is** the vault: you clone
it straight to `~/vault`.

## Adopt it (Day 5, 09:00)

```bash
# 1. archive your Week-1 vault first — nothing is deleted, it is your proof
mv ~/vault ~/archive/vault-week1

# 2. adopt the shared starter vault
git clone https://github.com/jneaimi/command-center-starter.git ~/vault

# 3. open it
code ~/vault
```

Your clone is yours: every `git commit` you sign stays on your machine.

## What's inside

```
CLAUDE.md                     the vault rules
knowledge/                    9 interlinked notes + index.md (the front door)
projects/CLAUDE.md            zone rules — rules can nest
projects/task-tracker/        a real project: index + 2 ADRs + 2 work items
templates/                    one per note type: reference · learning · decision · project
inbox/                        quick captures (opens for real in Week 4)
setup/dot-claude/             the ~/.claude side — install it in step 4 below
```

## 4. Stage the `~/.claude` side

You direct the AI; you check the result. In a Claude session say:

```
Set up my ~/.claude from ~/vault/setup/dot-claude: copy CLAUDE.md to
~/.claude/CLAUDE.md, copy hooks/ to ~/.claude/hooks/, and copy
skills/capture-note only if I don't already have it. Show me what you did.
```

Then open `~/.claude/CLAUDE.md` yourself and confirm the rules are the ones in
`setup/dot-claude/CLAUDE.md`. The guard in `hooks/` is a sleeping stub — it gets
wired up on Day 6.

## 5. Validate the adoption

In a Claude session started inside `~/vault`, say:

```
Look around this vault and report: how many notes in knowledge/ plus the index,
what the task-tracker project contains, whether every note has frontmatter
(title, type, created, tags), and whether any [[link]] points at a note that
does not exist — skip the field guide, its example links are quotes. Read only,
change nothing.
```

Expected: 9 notes + index · task-tracker with 2 ADRs + 2 work items · frontmatter
everywhere · no dangling links.

## The rule that never moves

Non-sensitive content only. And the house rule of Week 2: **reads run free,
writes wait for your review.**
