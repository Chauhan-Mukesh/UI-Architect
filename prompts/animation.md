# Prompt Module — Animation

## Purpose
Use motion where it improves usability. Reject motion added for style.

## Inputs
- Design direction card (motion posture).

## Steps
1. **Load only:** `animations/principles.md`, `animations/reduced-motion.md`, and up to two of `hover.md` / `scroll.md` / `micro-interactions.md` / `loading.md` / `timing.md` as needed.
2. **Justify each motion.** For every animation, name the usability job: state change, orientation, feedback, hierarchy reveal, or wait masking. If none, remove it.
3. **Timing.** 120–200 ms for micro (hover, tap), 200–400 ms for transitions, 400–800 ms for enter/exit. Use ease-out for enters, ease-in for exits.
4. **Distance.** Small motions travel small distances. No page-length parallax for decoration.
5. **Reduced motion.** Wrap every non-essential animation in `@media (prefers-reduced-motion: reduce)` and disable or shorten it. Never remove essential state feedback in reduced motion — replace it with an instant version.
6. **Focus and hover.** Focus state must not depend on motion alone.
7. **Loading.** Prefer skeletons over spinners past 400 ms. Never animate more than one region simultaneously without purpose.

## Outputs
- Motion inventory: element / trigger / duration / easing / reduced-motion fallback.

## Guardrails
- No auto-playing carousels.
- No motion that blocks interaction.
- No infinite loops except loading indicators.
- Motion must not reduce Core Web Vitals (avoid layout thrash; prefer `transform`/`opacity`).
