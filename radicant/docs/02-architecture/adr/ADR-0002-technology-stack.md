# ADR-0002: MVP Technology Stack

## Status

Accepted

## Date

2026-07-14

## Context

Radicant is being developed by a solo founder with limited operational budget.

The architecture should maximize maintainability, developer productivity, and future scalability while minimizing infrastructure cost during the MVP stage.

---

## Decision

The MVP technology stack is:

- Flutter
- NestJS
- PostgreSQL
- Prisma
- REST API

Additional services such as Redis, background workers, advanced monitoring, analytics, and object storage are intentionally deferred.

AI integrations will be abstracted behind a provider interface to avoid vendor lock-in.

---

## Consequences

### Positive

- Low operational cost
- Clean architecture
- Strong type safety
- Excellent developer experience
- Easy migration to larger infrastructure

### Negative

- Some advanced capabilities are postponed
- Background processing will initially be limited
- Additional infrastructure will be introduced incrementally as the product grows