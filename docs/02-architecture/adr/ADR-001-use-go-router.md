# ADR-001 — Use GoRouter

**Status:** Accepted

**Date:** 2026-07-16

---

## Context

Radicant requires a scalable navigation solution that supports declarative routing, deep linking, and future route guards while remaining easy to maintain.

---

## Decision

Use GoRouter as the application's routing library.

---

## Alternatives Considered

### Navigator 2.0

Pros

- Built into Flutter

Cons

- Verbose
- Boilerplate-heavy
- Harder to maintain

---

### auto_route

Pros

- Powerful code generation

Cons

- Additional complexity
- More tooling dependencies

---

## Consequences

Advantages

- Declarative API
- Excellent Flutter ecosystem support
- Easy deep linking
- Clean routing architecture

Trade-offs

- Additional dependency