# ADR-003 — Monorepo Structure

**Status:** Accepted

**Date:** 2026-07-16

---

## Context

Radicant consists of multiple applications and shared documentation.

Maintaining independent repositories would increase coordination overhead.

---

## Decision

Adopt a monorepo structure.

---

## Repository Structure

apps/

- radicant
- api

docs/

Architecture

Brand

Planning

---

## Consequences

Advantages

- Unified version history
- Easier onboarding
- Shared documentation
- Simpler CI/CD
- Consistent tooling

Trade-offs

- Larger repository
- Requires disciplined organization