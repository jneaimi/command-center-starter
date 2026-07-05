---
name: capture-note
description: Use when the user says "save this", "capture this", "note this down",
  or "add this to my vault". Files a new note into ~/vault with correct
  frontmatter, kebab-case name, and a placeholder link — ready for review.
---
When the user asks to capture a note:
1. Decide the type: reference · learning · decision · project. Ask only if unclear.
2. Create `knowledge/<kebab-title>.md` with frontmatter: title, type,
   created (today, YYYY-MM-DD), tags.
3. Write the body. Add a "Related:" line with a [[wikilink]] to the most
   relevant existing note (read knowledge/index.md to pick one). Never invent a
   link target that doesn't exist.
4. Add the new note to knowledge/index.md under its type.
5. Show what you created and STOP — do not commit. The user reviews and commits.
