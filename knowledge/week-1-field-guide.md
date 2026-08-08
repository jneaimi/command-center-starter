---
title: Week 1 Field Guide
type: reference
created: 2026-06-20
tags: [week-1, reference, onboarding]
---

# UAEN Full-Stack AI · Week 1 Field Guide

*Your reference for everything Week 1 built — the concepts, the words, and where
every file lives. Week 1 happened in `~/day1-save-points`, the training site; on
Day 5 that site was archived to `~/archive/vault-week1` and the vault got its real
address, `~/vault`. This note ships with the starter so the story travels with you.*

---

## 1 · The big picture

Everything rests on four ideas. If you remember only these, you're fine.

- **The Line.** Judgment sits above it — yours. Production sits below — the AI's.
  You trust AI output below the Line because a referent exists: a source you can
  check it against.
- **The vault is one home for what you know.** Plain markdown files in one folder,
  tracked by git. No database, no lock-in — you can read every file yourself.
- **The AI works through a doorway.** You ask; the AI *proposes* a change. Nothing
  lands until you read the `git diff` and commit — or restore. The AI never signs
  its own work in.
- **Dual-legible.** The same note serves you and the AI: you can read and edit it,
  the AI can find and walk it. If only one side can use it, it fails the test.

> **The one-line model:** *The vault is the surface. The doorway is the review.
> You commit, the AI never does.*

---

## 2 · The two homes — where everything lives

Two kinds of home matter. One holds **what you know**. The other holds **how the
AI behaves**. And one rule from Day 3 decides what goes where: **judgment is
global, vault tools live with the vault.**

### The vault — your knowledge (Week 1: `~/day1-save-points` · now: `~/vault`)

```
vault/
├─ inbox/            raw captures — unsorted, temporary
├─ knowledge/        your real notes
│   └─ index.md      the front door — where the AI starts walking
├─ projects/         one folder per project (ADRs + work items)
├─ templates/        ready-made note shapes — notes born connected
├─ .claude/
│   └─ skills/       PROJECT skills — tools that live with this vault
│                    (Week 1: capture-note · Day 5: my-vault)
└─ CLAUDE.md         this vault's standing rules
```

*Everything here is yours, in plain text, under git. Project skills ride with the
folder: archive the vault and the tool goes with it, commits and all.*

### `~/.claude` — how the assistant behaves, everywhere

```
~/.claude/
├─ CLAUDE.md              GLOBAL rules — load in EVERY session, any folder
├─ skills/
│   └─ think/             /think — Day 2's judgment skill, global on purpose
└─ hooks/
    └─ vault-write-guard.sh   a sleeping stub — Day 6 wires it up
```

*This folder configures the assistant itself. Judgment (`/think`) belongs here
because it applies in every folder. A vault tool does not.*

### Which file does what

| File | Where | What it does |
|---|---|---|
| **Note** | `vault/knowledge/*.md` | One thing you know — frontmatter + links |
| **`index.md`** | `vault/knowledge/` | The hub the AI reads first, then walks out |
| **Template** | `vault/templates/*.md` | A blank note shape — new notes born connected |
| **Vault `CLAUDE.md`** | `vault/` | Standing rules for *this vault only* |
| **Global `CLAUDE.md`** | `~/.claude/` | Standing rules for *every* session |
| **Project skill** | `vault/.claude/skills/<name>/SKILL.md` | A vault tool — loads when you work in the vault, commits with it |
| **Global skill** | `~/.claude/skills/<name>/SKILL.md` | An everywhere tool — `/think` is the one you have |

---

## 3 · Glossary — the words of Week 1

| Term | What it is | Tiny example |
|---|---|---|
| **The Line** | Judgment above (yours) · production below (AI's) | you frame, it drafts |
| **Referent** | The source note you check the AI against | *"quote my Scope line"* |
| **Save point** | A git commit — the trail of your thinking | `git commit -m "…"` |
| **The gate / doorway** | Read the change, then accept or restore | `git diff` before commit |
| **Surface** | Notes and folders you and the AI both use | the vault |
| **Dual-legible** | Both of you can open it, use it, change it | a note ✓ · a vanished chat ✗ |
| **Frontmatter** | The `---` labels at the top the AI filters on | `type: learning` |
| **Wikilink `[[ ]]`** | A link between notes — the thread the AI walks | `[[debugging-cors]]` |
| **Hub** | A note that points at many — the front door | `knowledge/index.md` |
| **Orphan** | A note with no links in or out — barely exists | *(missing from the index)* |
| **One idea per note** | One thought per file, about one screen | split and `[[link]]` if bigger |
| **Template** | A starter shape so notes arrive labeled + linked | `templates/learning.md` |
| **kebab-case** | lowercase-words-on-hyphens | `debugging-cors.md` |
| **Skill** | A capability described once in a SKILL.md | capture-note |
| **Project skill** | A skill living inside the vault, on its trail | `vault/.claude/skills/…` |
| **Trigger** | The description words that wake a skill | *"save this…"* |
| **`/think`** | Purpose · Success · Scope before the AI helps | `/think quick <decision>` |
| **The house rule** | Reads run free. Writes wait for your review. | Week 2's law |

---

## 4 · The eight moves (what you did all week)

Every hands-on step of Week 1 was one of these eight. Day 5 grows them into one
tool; they don't change.

1. **Capture** — get a thought into a file (`inbox/`, then a real note).
2. **Frontmatter** — add the `---` labels so the AI can filter.
3. **Link** — connect notes with `[[wikilinks]]`. No orphans, no dangling links.
4. **Index** — keep the hub current; it's where the AI starts.
5. **Template** — new durable notes come from `templates/`, born connected.
6. **Convention** — write the rule once in `CLAUDE.md`, stop repeating yourself.
7. **Skill** — teach the AI a capability; gate what it writes.
8. **Retrieve** — ask; watch the AI walk *your* links and cite *your* notes.

---

## 5 · The story so far — day by day

| Day | What happened | What you keep |
|---|---|---|
| **1 · Think With AI** | The Line · three questions before you ask · save points in `~/day1-save-points` | judgment framing + a git trail |
| **2 · The Collaboration Surface** | The gate (`git diff` → accept or restore) · vault rooms · `CLAUDE.md` rules · `/think` installed globally | the surface + the doorway habit |
| **3 · The Findable Surface** | Search → frontmatter → graph · hub + links · one idea per note · **capture-note built as a project skill** | findable memory + your first tool |
| **4 · The Project Day** | The e-statement ASP evaluation: method → criteria → matrix → strategy, all through the vault | proof the moves work on a real job |
| **5 · The Capable Surface** | The site is archived with honors · the vault gets its real address · capture-note grows into `my-vault` | this vault, and the house rule |

---

## 6 · The terminal — everything you need

| Command | What it does |
|---|---|
| `cd ~/vault` | Go into the vault |
| `ls` | List what's here |
| `code .` | Open the folder in VS Code |
| `git status` | What changed since the last save point |
| `git diff` | **Read the change — the doorway** |
| `git add <file>` | Choose what enters the next save |
| `git commit -m "…"` | Take the save point, under your name |
| `git restore <file>` | Refuse a change — cheap and honorable |
| `git log --oneline` | The trail |
| `claude` | Start the AI (in the folder whose skills you want) |

> Files are created and edited in VS Code. The terminal stays simple: `cd`,
> `git`, `code`, `claude`.

---

## 7 · Using this guide

It's already in the graph — linked from `knowledge/index.md`, no orphan. When you
forget where a project skill lives or what a referent is, it's all here. Your
Week-1 site is safe at `~/archive/vault-week1`, trail and all: tonight's homework
sends your new tool in to carry the best of it home.

---

*Week 1 built the surface and the habit. Week 2 builds the tools that keep the
habit for you — and the rule they all obey: reads run free, writes wait for you.*
