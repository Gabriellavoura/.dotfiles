---
description: Adds or updates a Mermaid architecture diagram in README.md.
disable-model-invocation: true
---

# Add Mermaid architecture diagram

## Context

!`git status --short`
!`ls`

## Instructions

Add or update the `## Architecture` section in `README.md`.

Use only repository evidence. Do not read the full diff unless necessary. Inspect only files needed to identify the app entrypoint, clients, modules, backing services, migrations, and API docs.

Prefer when present:

* `README.md`
* `go.mod`, `pyproject.toml`, `requirements*.txt`
* `Makefile`, `.env.example`, `docker-compose*.yml`
* `cmd/**`, `internal/**`, `pkg/**`
* `app/**`, `src/**`
* `db/migrations/**`, `migrations/**`, `docs/**`

## Diagram rules

Create one real Mermaid block in `README.md`.

The final README must contain an actual fenced block with:

* opening fence: three backticks followed by `mermaid`
* first Mermaid line: `flowchart LR`
* closing fence: three backticks

Do not nest or escape the Mermaid block inside another Markdown code block.

Show only what can be inferred:

* clients, using generic names if needed
* main API/application component
* internal modules, only if clear
* backing services: PostgreSQL/PostGIS, Redis, MongoDB, queues, object storage, external APIs
* migrations to database, if present
* Swagger/OpenAPI to API, if present

Do not invent services, clients, workers, gateways, queues, or integrations.

Prefer 6 to 12 nodes. Use short labels. Use Docker Compose service names when available. Use `subgraph` only if it improves readability.

## README section

The `## Architecture` section must include:

1. one short factual paragraph
2. one renderable Mermaid diagram
3. one short `Main flow` list

Do not copy placeholder text or generic examples unless they match the repository.

## Output requirements

* Update `README.md` in place.
* Do not create a separate diagram file.
* Do not duplicate an existing architecture section.
* Keep Mermaid syntax valid for GitHub rendering.
* Keep the section factual and practical.
* Do not include Claude/AI attribution.
* End with a short summary of what changed and what could not be inferred.
