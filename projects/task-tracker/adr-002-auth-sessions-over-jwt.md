---
title: Auth — server sessions over JWT
type: adr
created: 2026-06-22
tags: [adr, auth, security]
status: accepted
---

# ADR-002 — Auth: server sessions over JWT

## Status
accepted

## Context
Need sign-in for a single-user app that may add a second user later.

## Decision
Opaque session id in an httpOnly cookie; session state in SQLite. No JWT.

## Consequences
- Logout is real (delete the row) — no "valid until expiry" tokens floating around.
- Secrets stay server-side ([[../../knowledge/env-vars-and-secrets|secrets note]]).
- Implemented by [[wi-auth-flow]].
