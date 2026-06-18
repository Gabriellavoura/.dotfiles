---
description: Creates or updates README.md with endpoint documentation and local development instructions.
disable-model-invocation: true
---

# Create README

## Context

!`git status --short`
!`git diff --name-only HEAD | sed -n '1,80p'`
!`ls`

## Instructions

Create or update `README.md` using only facts found in the repository.

Keep context usage low. Do not read the full diff unless necessary. Open only files needed to document setup, endpoints, tests, dependencies, and migrations.

Prefer these files when present:

* `README.md`
* `go.mod`, `go.sum`
* `pyproject.toml`, `requirements*.txt`, `uv.lock`, `poetry.lock`
* `Makefile`
* `.env.example`
* `docker-compose*.yml`
* `cmd/**`, `internal/**`, `pkg/**`
* `app/**`, `src/**`
* `db/migrations/**`, `migrations/**`
* `docs/**`, `tests/**`

## README content

Include only sections supported by repository evidence.

### Overview

Briefly explain what the app does.

### Architecture

Add a short architecture summary if clear from the repository.

If a Mermaid diagram is needed, use `/add-architecture-mermaid`. Do not include Mermaid-specific instructions here.

### Tech stack

List detected technologies: Go, Python, Docker, databases, cache, router/framework, migration tool, test tools.

### Requirements

List required tools and services.

### Environment variables

Document variables from `.env.example`, config files, or Compose files.

Use:

| Variable | Description | Example/default |
| -------- | ----------- | --------------- |

### Running

Document supported run options only:

* Docker Compose, if Compose files exist.
* Local Go command, if Go entrypoint exists.
* Local Python command, if Python entrypoint exists.
* Make targets, if available.

### API endpoints

Document endpoints found in route files, handlers, or API docs.

Use:

| Method | Path | Auth | Description |
| ------ | ---- | ---- | ----------- |

Do not invent endpoints. If auth is unclear, write `not documented`.

### Migrations

Document migration commands only if migration files, Make targets, or migration tooling exist.

### Tests

Document detected test commands.

For Go, prefer:

```bash
go test ./...
```

For Python, use the detected tool, such as:

```bash
pytest
```

Use `make test` only if the target exists.

### Updating dependencies

Document only the detected ecosystem.

For Go:

```bash
go get -u ./...
go mod tidy
go test ./...
```

For Python, document the matching tool only when present:

```bash
uv sync
uv lock --upgrade
```

```bash
poetry update
```

```bash
pip install -U -r requirements.txt
```

Mention Docker image updates only if Compose files exist.

### Useful commands

If `Makefile` exists, list relevant targets in a table.

### Troubleshooting

Add only issues supported by repository context, such as missing env vars, database connection refused, dirty migration state, or port conflicts.

## Output requirements

* Update `README.md` in place, or create it if missing.
* Use valid Markdown.
* Keep it factual and practical.
* Do not add speculative architecture, services, commands, or endpoints.
* Do not include Claude/AI attribution.
* End with a short summary of what changed and what information was missing.
