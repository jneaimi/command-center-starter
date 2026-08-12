# Projects — zone rules

Rules that apply to everything under `projects/`. These stack on top of the
vault's root CLAUDE.md.

## Required frontmatter
- `created` — YYYY-MM-DD, always.
- `type` — one of: project · adr · plan · scope · work-item.

## Conventions
- Each project is a folder with an `index.md` hub.
- Decisions are ADRs: `adr-NNN-<slug>.md`, numbered per project, status one of
  proposed · accepted · shipped.
- Work items are `wi-<slug>.md` and link back to the ADR they implement.

## The work model (from Day 8)
- A **plan** states an outcome: `plan-<slug>.md`, with a `goal` in its own
  words. A **scope** slices a plan: `scope-<slug>.md`, `parent:` pointing at
  its plan. A **task** is the actual work: `wi-<slug>.md`, `parent:` pointing
  at its scope. ADRs record decisions off to the side of that spine.
- Task statuses, in order: backlog → planned → active → review → done.
- Who moves what: **humans** accept plans, scopes and ADRs
  (proposed → accepted), release tasks (backlog → planned), and approve
  finished work (review → done). **The AI** drafts (everything lands
  proposed or backlog), claims (planned → active), and submits
  (active → review). The AI never marks anything done or accepted —
  completing work is the human's call.
