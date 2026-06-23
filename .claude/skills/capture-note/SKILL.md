---
name: capture-note
description: File a thought into the vault with correct frontmatter and a kebab-case filename. Use when the user says things like "save this to my vault", "capture this as a note", or "note this down for me".
---

# Capture a note

When the user asks you to save or capture a thought:

1. Decide the note `type` (`decision` · `learning` · `reference` · `idea`) from what they said.
2. Choose a short, kebab-case filename — lowercase, dashes, no spaces (e.g. `budget-call-decision.md`).
3. Write the file under `knowledge/` (or `inbox/` if it is still rough), starting with frontmatter:

   ```
   ---
   type: <type>
   tags: [<a, few, topic, words>]
   created: <YYYY-MM-DD>
   ---
   ```

   then the note body.
4. Stop there. File the note — do **not** add `[[wikilinks]]`. Linking is the human's judgment.
5. Tell the user the path you wrote, and remind them to review the `git diff` before committing.

You honour the conventions in `CLAUDE.md` (frontmatter fields + naming). You file; the human connects.
