---
title: Task Tracker — project index
type: project
created: 2026-06-20
tags: [project, task-tracker]
status: active
---

# Task Tracker

A small personal task app — my sandbox for the patterns in `knowledge/`.

## Decisions
- [[adr-001-stack-choice]] — SvelteKit + SQLite
- [[adr-002-newest-first]] — the newest task sits at the top

## Work items
- [[wi-task-crud]] — create / list / complete tasks
- [[wi-sync-across-devices]] — one list on every device (version 2)

## Related knowledge
- [[../../knowledge/why-sqlite-for-the-tracker|Why SQLite]]
- [[../../knowledge/sveltekit-server-boundary|The server boundary]]
- [[../../knowledge/env-vars-and-secrets|Secrets handling]]
