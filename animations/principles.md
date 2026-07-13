# Animations — Principles

## Purpose
Motion communicates state, hierarchy, and continuity. Motion for style alone is noise.

## Principles
- **Purposeful** — every animation has a usability job: state change, orientation, feedback, or wait masking.
- **Restrained** — small motions travel small distances.
- **Fast** — 120–200ms for micro, 200–400ms for transitions, up to 800ms for enter/exit.
- **Interruptible** — user actions cancel or reverse motion.
- **Reduced-motion aware** — every non-essential motion has a reduced-motion fallback.

## Rules
- Animate `transform` and `opacity` when possible.
- Ease-out for enters, ease-in for exits.
- Motion tokens: `--dur-fast`, `--dur-base`, `--dur-slow`; `--ease-out`, `--ease-in`, `--ease-in-out`.
- Never animate for the sake of animating.

## Anti-patterns
- Auto-playing marketing animations that block interaction.
- Motion that shifts layout on scroll.
- Long, decorative reveals that delay reading.
- Simultaneous motion in multiple regions without purpose.
