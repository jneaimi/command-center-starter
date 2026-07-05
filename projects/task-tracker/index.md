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
- [[adr-002-auth-sessions-over-jwt]] — server sessions, not JWT

## Work items
- [[wi-auth-flow]] — sign-in + session
- [[wi-task-crud]] — create / list / complete tasks

## Related knowledge
- [[../../knowledge/why-sqlite-for-the-tracker|Why SQLite]]
- [[../../knowledge/sveltekit-server-boundary|The server boundary]]
- [[../../knowledge/env-vars-and-secrets|Secrets handling]]
