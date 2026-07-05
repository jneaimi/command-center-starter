# hooks/

`vault-write-guard.sh` is a **stub** shipped so Day 6 has a live example.
It is NOT wired up yet — on Day 6 you register it as a `PreToolUse` hook in
`~/.claude/settings.json` and make it enforce the write gate. Today it just
demonstrates the shape: reads pass, writes into ~/vault get flagged for review.
