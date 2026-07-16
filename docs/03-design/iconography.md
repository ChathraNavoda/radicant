# Iconography

## Philosophy

Icons exist to accelerate navigation and clarify state, not to decorate the canvas. In an interface built for engineers, icons are visual utilities. They must look precise, uniform, and geometric—resembling engineering tool schematics rather than soft consumer graphics.

---

## Technical Specifications

To ensure perfect consistency across the product, all assets must conform to these strict architectural constraints:

*   **Grid Framework:** All custom or library icons must sit on a uniform **24x24px bounding box canvas**.
*   **Stroke Uniformity:** Icons are constructed using a fixed **2.0px stroke width**. Never scale an icon up or down arbitrarily without adjusting its relative stroke weight to match.
*   **Geometry & Rounding:** Outer paths should use a subtle **1.5px corner radius** (matching our layout radius language). Avoid hyper-sharp corners or perfectly circular cartoon edges.
*   **Outline Bias:** Icons must remain as vector outlines. **Never use filled versions** unless explicitly indicating a selected, active toggle state or a critical alert flash.

---

## Foundational Library: Lucide

We adopt **Lucide Icons** as our structural framework baseline. It offers clean, developer-focused, scalable vector paths that natively mirror our typographic rules.

---

## The Metaphor Boundary: The Tree System

Because the brand identity centers around *Radicant* ("setting roots in motion"), it is easy to over-index on organic metaphors. We enforce a strict constraint:

> ⚠️ **The Rule of the Metaphor:** The tree, root, or organic metaphor must appear **sparingly**. Do not use leaves for success checkmarks or tree trunks for home icons. 
> 
> Reserve organic visual metaphors exclusively for high-tier milestone achievements, core architecture flow models (like branching), or brand splash screens. Everywhere else, the icon profile must prioritize raw technical utility.

---

## Common Mappings Matrix

| Interface State | Preferred Icon Mapping | Behavioral Context |
| :--- | :--- | :--- |
| **Terminal / CLI** | `terminal` | Shell executions, commands |
| **Project Repository** | `folder-git-2` | Tracked workspace boundaries |
| **Pipeline / Build** | `git-branch` | Branch tracking and operational steps |
| **System Settings** | `sliders` or `sliders-horizontal` | Precise calibration controls |
| **Success Flash** | `check-circle-2` | Confirmed compile loops |
| **Critical Failure** | `alert-circle` | Direct code blocks / system errors |