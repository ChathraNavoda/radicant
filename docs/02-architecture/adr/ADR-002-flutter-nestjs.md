# ADR-002 — Flutter + NestJS

**Status:** Accepted

**Date:** 2026-07-16

---

## Context

Radicant aims to support mobile, web, and future clients while providing a maintainable backend.

---

## Decision

Use Flutter for the client application and NestJS for the backend API.

---

## Rationale

Flutter

- Single codebase
- Mature ecosystem
- Excellent developer experience

NestJS

- Modular architecture
- TypeScript throughout
- Dependency injection
- Strong enterprise patterns

Together they provide a consistent TypeScript/Dart architecture suitable for long-term development.

---

## Consequences

Advantages

- Shared architectural thinking
- Excellent scalability
- Clear separation between frontend and backend

Trade-offs

- Two technology stacks to maintain