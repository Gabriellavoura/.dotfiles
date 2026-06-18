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

Create or update README.md using only repository evidence.

Keep context usage low. Do not read the full diff unless necessary. Inspect only files needed for setup, endpoints, tests, dependencies, and migrations.

Prefer existing README, dependency files, Makefile, env example, Docker Compose files, Go source folders, Python source folders, migration folders, docs, and tests.

Include only supported sections:

* Overview: what the app does.
* Architecture: short summary if clear; use /add-architecture-mermaid for diagrams.
* Tech stack: detected Go, Python, Docker, database, cache, framework, migration tool, and test tool.
* Requirements: required tools and services.
* Environment variables: variables from env-example files, config, or Compose.
* Running: Docker Compose, Go, Python, or Make only when supported.
* API endpoints: method, path, and description; write "not documented" if auth is unclear.
* Tests: detected commands only; use go test ./..., pytest, or make test only when valid.
* Updating dependencies: only detected ecosystem; include test command after update.

Use tables where helpful, especially for environment variables and endpoints.

Output: update or create README.md; use valid Markdown; stay factual; do not invent architecture, services, commands, or endpoints;end with a short summary of changes and missing information.
