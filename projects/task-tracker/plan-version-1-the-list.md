---
title: "Version 1 — the list itself"
type: plan
created: 2026-08-12
tags: [plan]
status: proposed
goal: "A task list you can trust: add, complete, delete softly, survive a refresh, count what's open"
governed_by: "[[adr-004-version-1-in-one-file]]"
---

# Version 1 — the list itself

You are looking at a Plan. A plan names an outcome and holds all the work
underneath it. Nothing under a plan moves until a human accepts the plan.

## Goal
A task list you can trust: add, complete, delete softly, survive a refresh,
count what's open. Five features, one file ([[adr-004-version-1-in-one-file]]).

## Why now
The vault already decided everything that matters: the eventual stack
([[adr-001-stack-choice]]), the ordering ([[adr-002-newest-first]]), and that
deletion hides but never erases ([[adr-003-soft-delete-tasks]]). Version 1
cuts scope to what one build day can honestly ship.

## Shape
Two slices: [[scope-capture-and-complete]] (a task goes in and gets done) and
[[scope-trust-the-list]] (the list earns your trust).

## The catch-all retires
[[wi-task-crud]] was written for the version-2 stack — API routes it is far
too early to build. The five work items under this plan split its scope into
finer pieces. When this plan is accepted, mark wi-task-crud **superseded**:
a catch-all retires the moment finer items replace it.
