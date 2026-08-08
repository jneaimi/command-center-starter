# Facilitator notes

This repo is the published copy of the canonical Day-5 vault
(source of truth: `~/Documents/uaen-training/canonical-vault/` on the
trainer machine). If the canonical vault changes, re-sync and push.

## Delivery model (this cohort)

Nothing is pre-staged on student machines. Students drive the whole adoption
themselves, AI-assisted, from the Day-5 handout:

1. Archive their Week-1 training site (`mv ~/day1-save-points ~/archive/vault-week1`).
2. Clone this repo to `~/vault`.
3. Direct the AI to install `setup/dot-claude/` into `~/.claude`, then gate it.
4. Direct the AI to validate the vault (read-only report), then gate it.

## Restore map

| Broke | Copy from |
|---|---|
| Whole vault | re-clone this repo to `~/vault` |
| Global rules | `setup/dot-claude/CLAUDE.md` → `~/.claude/CLAUDE.md` |
| Day-6 guard stub | `setup/dot-claude/hooks/` → `~/.claude/hooks/` |
| Week-1 site (incl. capture-note) | student's own `~/archive/vault-week1` — never from this repo |

## Continuity

- Day 5 archives the Week-1 site (capture-note, a project skill, rides inside it)
  and builds `my-vault` as a PROJECT skill at `~/vault/.claude/skills/` (3 verbs,
  committed on the vault trail). Nothing skill-shaped is staged into `~/.claude`.
- Day 6 wires `hooks/vault-write-guard.sh` as a PreToolUse hook (law 1: commits are human).
- Day 7 adds the doctor; the field guide's example links are the doctor's one skip.
- Day 8 reveals `projects/task-tracker/` was the capstone brief all along — do not
  rename or trim it.
