# Pricing Layouts

## Purpose
Help visitors self-select the right plan. Reduce ambiguity; disclose costs plainly.

## When to use which variant
- **01 Tier comparison** — 3–4 clear tiers with feature differentiators.
- **02 Feature matrix** — many features across many plans.
- **03 Usage-based / calculator** — pay-as-you-go or hybrid pricing.

## Universal rules
- Show currency, billing cadence, and what's included in every price.
- Recommended tier is visually distinct but not deceptive.
- Fine print (limits, overages) is visible, not linked to a footer.
- Enterprise plans that require contact are labeled clearly.

## Anti-patterns
- "Contact us" for pricing on every tier.
- Toggle switches (monthly/annual) that don't reflect the shown price.
- Feature bullets that are marketing copy, not real capabilities.
- Discount countdowns that reset per session.

## Accessibility
- Tables use real `<table>` markup with `<th scope>`.
- Toggle switches are real controls with `aria-pressed` or a semantically appropriate pattern.

## Responsive
- Mobile: tier cards stack; feature matrix becomes accordion per tier.
- Desktop: side-by-side comparison.
