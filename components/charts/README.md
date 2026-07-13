# Charts

## Purpose
Visualize quantitative relationships. Chart choice must match the question.

## Structure
- SVG or Canvas rendered chart with a legend and axes.
- Provide the underlying data via `<table>` (visually hidden if desired) for accessibility.

## Variants
- Line (trends over time).
- Bar (categorical comparison).
- Column (time-series categorical).
- Pie/donut (composition — used sparingly, prefer stacked bars).
- Area (cumulative over time).
- Scatter (correlation).

## States
- Default, hover (tooltip), keyboard-focused data point.
- Loading (skeleton). Empty (with reason).

## Mobile
- Simplify: fewer series, larger fonts.
- Tooltips triggered on tap; do not require hover.

## Accessibility
- Chart has an accessible name (`aria-label` or `<title>` in SVG) describing what it shows.
- Data table equivalent provided (visually hidden `<table>` or linked).
- Do not rely on color alone to distinguish series — pair with shape, pattern, or direct labels.
- Charts respect `prefers-reduced-motion` for animated reveals.

## Anti-patterns
- 3D charts.
- Pie chart with more than 5 slices.
- Two Y-axes without clear pairing.
- Y-axis truncated to exaggerate a difference.
