# Color System

## Philosophy

Color exists to communicate meaning. It should never exist only for decoration. The interface should remain mostly neutral, allowing important actions, context shifts, and engineering achievements to stand out cleanly.

> **Design Directive:** We deliberately avoid overly saturated "startup greens." This palette is built to feel organic, grounded, and age exceptionally well over years of daily screen time.

---

## Semantic Tokens & Design Intent

### Core Brand Tokens
*   **Primary** (Deep Forest Green)
    *   *Meaning:* Growth, knowledge synthesis, and continuous forward momentum.
*   **Secondary** (Muted Sage)
    *   *Meaning:* Organic visual balance; anchors structural, non-interactive elements.
*   **Accent** (Warm Gold)
    *   *Meaning:* Celebrations, locked milestones, rare discoveries, and highlight events.

### Canvas Tokens
*   **Background** (Stone White)
    *   *Meaning:* A calm, low-strain digital workspace environment.
*   **Surface** (Soft Neutral Gray)
    *   *Meaning:* Explicit content containers, panels, elevated cards, and structural separators.

### Functional Status Tokens
*   **Success** (Natural Green) — Positive confirmation, built steps, clean test suites.
*   **Warning** (Warm Amber) — Non-breaking alerts, pending states, deprecation updates.
*   **Error** (Muted Red) — System failures, broken builds, immediate security blocks.
*   **Information** (Muted Steel Blue) — Contextual callouts, neutral tooltips, architectural logs.

---

## Initial Palette (v0.1)

This palette serves as our baseline testing layout configuration. Tokens map directly out of our layout assets down into the software implementation.

| Token | Hex | Target Purpose |
| :--- | :--- | :--- |
| **Primary** | `#1F5C3A` | Brand execution / Primary active states |
| **Primary Container** | `#DDEEE3` | Subtle backgrounds / Light focal accents |
| **Secondary** | `#7A8F7A` | Supporting UI frameworks / Static borders |
| **Accent** | `#C89B3C` | High-tier achievements and specialized indicators |
| **Background** | `#F7F6F2` | Core layout canvas |
| **Surface** | `#FFFFFF` | Component cards and elevated dialogue blocks |
| **Text Primary** | `#1F2937` | High-contrast body prose and titles |
| **Text Secondary** | `#6B7280` | Subtitles, meta tags, and placeholder copy |
| **Success** | `#2E7D32` | Explicit success feedback loops |
| **Warning** | `#D97706` | Explicit warning state loops |
| **Error** | `#B3261E` | Explicit structural error alerts |
| **Information** | `#2E5B82` | General system information and inline notes |