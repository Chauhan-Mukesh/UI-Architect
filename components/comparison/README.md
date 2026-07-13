# Comparison

## Purpose
Help visitors evaluate options side by side. Reduce ambiguity.

## Structure
- Table with rows as attributes, columns as options.
- Or card comparison (each option in its own card, side by side).

## Variants
- Feature matrix — canonical for pricing/plans.
- Attribute grid — for products or services with visual attributes.
- Before/after — two-column visual/text comparison.

## States
- Column highlight on hover.
- "Recommended" column marker.

## Mobile
- Sticky first column (row labels) with horizontal scroll for options.
- Or collapse to per-option accordions with the same attribute order.

## Accessibility
- Real `<table>` markup: `<th scope="col">` for columns, `<th scope="row">` for attributes.
- Icons (check/dash) paired with text (`aria-hidden` on icon, visible label).
- Column headers repeat when scrolling long tables (`<thead>` sticky).

## Anti-patterns
- Icon-only cells with no label.
- Columns of unequal information (one option with detail, others with vague labels).
- Marketing bullet fluff mixed with real attributes.
