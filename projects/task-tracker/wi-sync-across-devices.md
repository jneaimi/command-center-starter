---
title: Work item — sync across devices
type: work-item
created: 2026-06-23
tags: [work-item, sync]
status: planned
---

# WI — Sync across devices

The version-2 goal: the same list on the laptop and on the phone. This is the
work that needs the [[adr-001-stack-choice]] stack, because sync needs one
place where the truth lives: the server's database.

## Scope
- [ ] The server keeps the list in SQLite (the one true copy)
- [ ] Each device reads and writes through the API
- [ ] A change on one device shows on the other after a refresh

## Notes
Two devices talking to one API is where cross-origin rules bite — see
[[../../knowledge/debugging-cors|CORS note]]. Server code stays behind the
boundary: [[../../knowledge/sveltekit-server-boundary|server boundary note]].
