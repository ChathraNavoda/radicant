# Architecture

# Artifact: System Context

This artifact establishes the high-level technical boundaries of Radicant. It maps how the user interacts with the primary client interface and how data flows through the core infrastructure layers down to the data store.

## Diagram

Refer to `system-context.png` (exported from `system-context.excalidraw`) for the visual architecture map.

# Artifact: Happy Path Product Flow

This artifact outlines the optimal, friction-free journey a developer experiences when using Radicant daily—from silent automated background ingestion to one-click active career reflection.

## Diagram

Refer to `product-flow.png` (exported from `product-flow.excalidraw`) for the step-by-step state machine.

## The Happy Path Lifecycle

1.  **Passive Ingestion:** The engineer codes as normal. Radicant silently picks up GitHub commits, PR status changes, and active workspace updates.
2.  **Morning Synthesis:** The engineer opens Radicant. The app greets them with a clean, pre-compiled visual checklist of yesterday's output.
3.  **AI Influx:** The AI Engine processes the raw technical changes and proposes a structured, highly professional journal entry summarizing the architectural modifications.
4.  **One-Click Commit:** The engineer reviews the summary, makes minor edits if necessary, and presses one button to commit the day to their permanent Engineering Memory.
5.  **Compound Value:** The timeline updates, metrics populate the Growth Dashboard, and the knowledge graph updates for future CV/Portfolio generation.

## Decision Review

*   **Why does this exist?** To ensure the product maintains an ultra-low friction threshold. If logging feels like a chore, engineers will abandon it.
*   **Does it support the mission?** Yes. It visualizes the shift from a chaotic, scattered developer workflow to a single unified career operating system.
*   **Is it the simplest solution?** Yes. It eliminates manual input forms, forcing the system to rely heavily on automation and smart defaults.
*   **Would we still choose this in a year?** Yes. The "automate background data, manual approve reflection" model is the core engine of Radicant's user experience.