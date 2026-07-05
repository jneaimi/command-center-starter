---
title: Work item — task CRUD
type: work-item
created: 2026-06-24
tags: [work-item, crud]
status: planned
---

# WI — Task CRUD

Create, list, complete, delete tasks.

## Scope
- [ ] POST /api/tasks — create
- [ ] GET /api/tasks — list (newest first)
- [ ] PATCH /api/tasks/:id — toggle complete
- [ ] DELETE /api/tasks/:id

## Notes
Every API path returns structured JSON on error — see
[[../../knowledge/readable-error-messages|error messages note]].
