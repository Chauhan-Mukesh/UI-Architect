# Example — Dashboard

## Prompt
"Design the analytics home for a marketing analytics SaaS."

## Research
- Persona: marketing analyst; opens dashboard 5–10 times a day.
- Primary task: check today's performance vs baseline for owned campaigns.
- Anti-goal: not a KPI wall; the analyst needs to spot anomalies.

## Design direction
- Tone: focused, dense-but-readable.
- Layout: `layouts/dashboard/variants/01` (sidebar + workspace).
- Type: `technical` voice with tabular-nums enabled for metric tiles.
- Colors: neutral base + one semantic palette (up/down/flat), dark mode default for ops users.

## Output plan
- Sidebar: workspace switcher, primary areas (Overview, Campaigns, Audiences, Reports, Settings), user menu.
- Top toolbar: date range picker, breakdown selector, save-view.
- Main workspace:
  - Row of metric tiles with delta vs prior period.
  - Time series chart with anomaly markers.
  - Table of campaigns sortable by delta.
  - Right rail: selected campaign details.
- Empty and loading states for each region.

## Review notes
- Charts have text alternatives (data tables).
- Focus management on route change verified.
- Density does not violate 24×24 target size.
- No marketing patterns (heroes, decorative section headers).
