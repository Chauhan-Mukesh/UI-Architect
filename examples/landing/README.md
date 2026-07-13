# Example — Landing Page

## Prompt (representative)
"Build a landing page for a mid-market SaaS tool that helps ops teams triage incidents faster."

## Research decisions
- Vertical: SaaS → operations subsegment.
- Personas: ops lead (evaluator), on-call engineer (end user), VP eng (economic buyer).
- Competitor patterns: dashboard screenshot in hero, incident timeline visual, integration logos, ROI metric block.
- Journey risks: buyers demo before purchase; missing SOC2 / SSO trust content loses enterprise deals.

## Design direction
- Tone: precise, credible, calm.
- Layout family: `layouts/landing/variants/03` (product-first).
- Typography: `technical` voice — sans body + monospace for code snippets.
- Colors: navy + neutrals with a warm accent for CTAs; parity dark mode.
- Motion: restrained; entrance fade only.

## Output plan
- Hero: headline + short subhead + primary CTA + hero screenshot of the incident view.
- Trust strip: 6 customer logos or 1 quote with attribution.
- How it works: 4 capability cards with real product screenshots.
- Metric block: "-45% MTTR" with methodology footnote.
- Deep case study callout.
- FAQ addressing SOC2, data residency, SSO, on-call integrations.
- Final CTA.

## Review notes
- Passed WCAG contrast at both themes.
- LCP hero image preloaded, ≤ 200 KB.
- Single primary CTA verb+object ("Start free trial").
- Section sequence differs from previous session's SaaS landing.
