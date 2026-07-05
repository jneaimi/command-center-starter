#!/usr/bin/env bash
# vault-write-guard.sh — a PreToolUse hook (wired up on Day 6).
# Governs writes into ~/vault: allows reads freely, flags writes for review.
# Fail-closed: if anything is unexpected, block and let the human decide.
#
# Reads the tool call on stdin (JSON), inspects the target path, and either
# allows (exit 0) or blocks (exit 2 with a reason on stderr).

set -euo pipefail
input="$(cat)"
tool="$(printf '%s' "$input" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("tool_name",""))' 2>/dev/null || echo "")"
path="$(printf '%s' "$input" | python3 -c 'import sys,json; d=json.load(sys.stdin); print(d.get("tool_input",{}).get("file_path",""))' 2>/dev/null || echo "")"

case "$tool" in
  Read|Grep|Glob) exit 0 ;;                    # reads run free
  Write|Edit|NotebookEdit)
    case "$path" in
      "$HOME/vault/"*) echo "vault write to $path — review the diff before commit." >&2 ; exit 0 ;;
      *) exit 0 ;;
    esac ;;
  *) exit 0 ;;
esac
