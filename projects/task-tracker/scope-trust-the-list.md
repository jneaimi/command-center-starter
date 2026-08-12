---
title: "Trust the list — it keeps what you gave it"
type: scope
created: 2026-08-12
tags: [scope]
status: proposed
parent: "[[plan-version-1-the-list]]"
---

# Trust the list — it keeps what you gave it

The second slice of [[plan-version-1-the-list]]: the list earns your trust.
Deleting hides but never erases ([[adr-003-soft-delete-tasks]]), a refresh
loses nothing, and the open count tells the truth.

This scope holds [[wi-soft-delete-task]], [[wi-survive-refresh]] and
[[wi-open-count]].

**Waits for a human.** Once the plan is accepted, release these tasks by
moving them backlog → planned. Then they can be claimed, one at a time.
