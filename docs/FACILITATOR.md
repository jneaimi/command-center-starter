# Facilitator notes

This repo is the answer key + safety net for Weeks 1–2. Participants build each piece by hand;
hand them the matching piece from here only when a lab would otherwise stall.

## Per-day "reinstall X" map

| Day | If a participant is stuck on… | Restore from this repo |
|-----|-------------------------------|------------------------|
| D2  | the vault scaffold / lost vault | `inbox/ knowledge/ projects/ templates/` + `CLAUDE.md` (line one) |
| D3  | the capture skill won't install/fire | `.claude/skills/capture-note/` + `CLAUDE.md` line two (frontmatter + naming) |
| D5  | the two starter skills | `.claude/skills/weekly-review/` (auto) + `.claude/skills/new-project/` (slash-only) |
| D6  | the starter agent | `.claude/agents/note-researcher.md` |

Each is a copy-paste away (see `INSTALL.md` ▸ "Restore just one piece"). Restoring should take
under 10 minutes — pair the participant with a neighbour and keep the room moving.

## Syntax note — the agent tool list

The Day-6 handout shows the key-ring as `tools: [Read, Grep, Glob]` to make the concept legible.
Claude Code reads the same three tools from a comma-separated line: `tools: Read, Grep, Glob`
(the form in `note-researcher.md`). Same key-ring — read + search, no write/delete/shell.

## The example notes

`knowledge/` ships three linked example notes (`budget-call-decision`, `vendor-shortlist`,
`buying-a-laptop`) so the graph and `note-researcher` demo work immediately. Tell participants to
replace them with their own — they are scaffolding, not content.

## Non-sensitive only

UAEN is a government entity. Announce the non-sensitive-content rule every session; it is line one
of `CLAUDE.md` for exactly this reason.
