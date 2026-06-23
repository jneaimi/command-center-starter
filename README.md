# Command Center — Starter Repo

The reference implementation of the personal AI command center you build across Weeks 1–2
of the Full-Stack AI Vibe Coder program — plus a safety net for restoring a vault that did
not survive between sessions.

> You learn by **building these by hand** in the labs. This repo is the worked example and
> the fallback: if your vault breaks, or a skill won't install, copy the matching piece from
> here and keep moving. The handouts show the *anatomy*; these are the working files.

## What's inside

```
CLAUDE.md                 standing rules (non-sensitive only · frontmatter + naming · no orphans)
inbox/                    raw capture (in-tray)
knowledge/                durable memory — example linked notes + index.md (the front door)
projects/                 active workspace
templates/                note.md + project.md — the conventions, ready to reuse
.claude/
  skills/
    capture-note/         Day 3 — files a thought with frontmatter + naming (does not link)
    weekly-review/        Day 5 — reads + SUGGESTS links; never writes (auto)
    new-project/          Day 5 — scaffolds a project from the template (slash-only, writes)
  agents/
    note-researcher.md    Day 6 — read-only worker that answers from your notes, with citations
docs/
  INSTALL.md              one-command setup
  CLOUD-IDE.md            fallback for machines that block local installs
  FACILITATOR.md          per-day "reinstall X" map + delivery notes
```

## Quick start

```bash
git clone <REPO-URL> command-center
cd command-center
claude        # Claude Code loads CLAUDE.md + the .claude/ skills & agent automatically
```

Then try the loop:
- Say *"save this to my vault: I decided to batch my errands on Fridays"* → `capture-note` files it.
- Review the change with `git diff`, then `git add -A && git commit -m "capture"`.
- Ask *"based on my notes, how did the budget decision affect the vendor choice?"* → delegate to
  `note-researcher` and watch it cite `budget-call-decision` and `vendor-shortlist`.

## A note on the example content

`knowledge/` ships three linked example notes so the graph and the `note-researcher` work out of
the box. **Replace them with your own** — they exist only to demonstrate the conventions.

## The rule that never moves

Only ever work with **non-sensitive** content. This is personal-productivity material, never
classified or sensitive. See `CLAUDE.md`.
