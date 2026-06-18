---
description: Adds or updates a Mermaid architecture diagram in README.md.
disable-model-invocation: true
---

# Add Mermaid architecture diagram

## Context

!`git status --short`
!`ls`

## Instructions

Update or create the Architecture section in README.md using only repository evidence.

Keep context usage low. Do not read the full diff unless necessary. Inspect only files needed to infer entrypoint, clients, modules, backing services, migrations, and API docs.

Prefer existing README, dependency files, Makefile, env example, Docker Compose files, Go source folders, Python source folders, migration folders, docs, and tests.

Add one GitHub-renderable Mermaid fenced block with language tag mermaid.

The Mermaid diagram must start with flowchart LR.

Do not wrap the Mermaid block inside another code block.

Show only inferred components:

* Clients, generic if needed.
* Main API or application.
* Clear internal modules.
* Backing services.
* Migrations to database, if present.
* Swagger or OpenAPI to API, if present.

Do not invent clients, services, workers, gateways, queues, or integrations.

Prefer 6 to 12 nodes, short labels, and Docker Compose service names when available.

The section must include:

* One short architecture paragraph.
* One Mermaid diagram.
* One short Main flow list.

Output: update README.md in place; do not duplicate existing architecture sections; keep Mermaid valid for GitHub; stay factual; end with a short summary of changes and missing information.
