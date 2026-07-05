---
title: Work item — auth flow
type: work-item
created: 2026-06-23
tags: [work-item, auth]
status: active
---

# WI — Auth flow

Implements [[adr-002-auth-sessions-over-jwt]].

## Scope
- [ ] Sign-in form → POST /api/session
- [ ] Create session row, set httpOnly cookie
- [ ] Sign-out → delete row + clear cookie
- [ ] Guard `/api/*` behind a session check

## Notes
CORS only bites if the app and API end up on different origins — see
[[../../knowledge/debugging-cors|CORS note]].
