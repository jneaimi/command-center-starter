# Cloud fallback — for machines that block local installs

Government / managed laptops often block installing Node, git, or Claude Code. Rather than stall
the room in hour one, run the whole command center in a browser-based dev environment. Any of
these works; pick the one your network allows.

## Option A — GitHub Codespaces (most turnkey)

1. Push this repo to a GitHub repo (or fork the program's published one).
2. On the repo page: **Code ▸ Codespaces ▸ Create codespace on main**.
3. In the Codespace terminal: `npm i -g @anthropic-ai/claude-code` then `claude`.
4. Sign in with the participant's Claude subscription. Everything in `.claude/` loads as normal.

A `.devcontainer/` can be added so Node + Claude Code are pre-installed on boot (zero terminal
setup) — see the program's published repo.

## Option B — Gitpod

Open `https://gitpod.io/#<REPO-URL>`. Same steps: install Claude Code in the terminal, sign in, work.

## Option C — a provided cloud VM / web VS Code

If IT provides a sanctioned cloud VM or browser VS Code, clone the repo there and install Claude
Code in its terminal.

## What still holds in the cloud

- The vault is a git repo, so commits + `git diff` (the doorway / your audit trail) work identically.
- The non-sensitive-only rule is even more important in a shared cloud env — keep it personal-productivity.

> Confirm the chosen path with the logistics POC **before delivery day** and test it on one machine.
