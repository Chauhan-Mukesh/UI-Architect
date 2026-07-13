# Pricing Component

## Purpose
Present pricing tiers or units clearly so visitors can self-select without contacting sales.

## Structure
- Tier cards (see `layouts/pricing/variants/01.md`) or feature matrix.
- Each tier: name, price, cadence, description, feature list, CTA.

## Variants
- Tier cards (2–4 plans).
- Feature matrix (many plans, many features).
- Usage calculator (see `layouts/pricing/variants/03.md`).
- Toggle-driven cadence (monthly ↔ annual).

## States
- Recommended tier highlighted (border, badge — not neon).
- Toggle animates price change.
- Loading during price recalculation announced via `aria-live`.

## Mobile
- Cards stack; recommended remains visually distinct.
- Feature matrix becomes per-tier accordion.

## Accessibility
- Toggle uses `aria-pressed` or `<input type="radio">` semantics.
- Prices announced when toggle changes.
- Tier CTA has an accessible name that includes the tier ("Choose Team plan").

## Anti-patterns
- Fake discount timers.
- Hiding cadence unit ("$29" without /month/user).
- Recommended tier styled so heavily it distorts comparison.
