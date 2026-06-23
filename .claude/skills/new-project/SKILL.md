---
name: new-project
description: Scaffold a new project folder and index from the template.
disable-model-invocation: true
---

# New project

When the user runs `/new-project <name>`:

1. Create `projects/<name>/index.md` from `templates/project.md`.
2. Fill the frontmatter (`type: project`, today's `created`, a couple of `tags`) and the project title.
3. Leave a `## Related` stub with a placeholder `[[ ]]` link.
4. Then stop. Do not create extra files or start work inside the project.

This skill writes, so it is manual-only (`disable-model-invocation: true`) — it runs only when the
user explicitly types `/new-project`. Talking about a new project must not trigger it.
