# Typography

## Philosophy

Typography must communicate professionalism before personality. In an ecosystem built for engineers, text is data, and clarity is paramount. Content is the absolute hero; the typeface exists to deliver it without interference.

---

## UI Font

**Plus Jakarta Sans** (via Google Fonts)

### Technical Rationale
*   **Modern Geometric Stance:** Slightly wider proportion profiles that allow data matrices and UI text to feel breathable even in dense layouts.
*   **High-Density Clarity:** Designed specifically for digital screens, keeping small badges, sidebar titles, and dashboard cards perfectly legible.
*   **Clean Professionalism:** Modern and premium without feeling gimmicky or chasing passing design fads.

---

## Monospace Font

**JetBrains Mono** (via Google Fonts)

### Strict Usage Policy
Monospace type serves an exact structural purpose. It is explicitly reserved for:
*   Inline code fragments and execution blocks
*   Terminal commands and shell outputs
*   Technical metadata snippets and key-value tables

> ⚠️ **Constraint:** Never use monospace fonts for standard narrative paragraph blocks or core UI label descriptions.

---

## Typography Scaling Matrix

| Token | Size | Weight | Line Height | Tracking | Target Application |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `displayLarge` | 32px | Bold (700) | 40px | +1.2px | Main feature anchors, splash markers |
| `headlineMedium` | 24px | SemiBold (600) | 32px | 0px | Primary section headers |
| `titleMedium` | 18px | Medium (500) | 24px | +0.5px | Component titles, card headers |
| `bodyLarge` | 16px | Regular (400) | 24px | 0px | Narrative paragraphs, descriptive blocks |
| `labelSmall` | 12px | Medium (500) | 16px | +1.0px | Meta tags, button actions, small tooltips |