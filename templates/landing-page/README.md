# Template — Landing Page

## Purpose
Structural spec for a conversion-oriented landing page. Not a code drop; a shape the generator fills.

## Sections (in order, adjust to research brief)
1. Hero — headline + subhead + primary CTA (see `layouts/hero/`)
2. Social proof strip (logos, one-line quote, or metric)
3. Problem framing / for-whom
4. Solution / how it works (3–5 steps or capabilities)
5. Deeper proof (case study, testimonial with attribution, metric block)
6. FAQ (real objections)
7. Final CTA restating value

## Cross-references
- Layout family: `layouts/landing/` — choose variant 01, 02, or 03 based on research.
- Component picks: buttons, cards, forms, testimonials, faq, footer.
- Quality gates: `checklists/landing.md`, `validators/*`, `self-review/questions.md`.

## Rules
- One primary CTA repeated in hero + final section; no additional primaries.
- Section sequence follows the research brief, not this list mechanically.
- If a section can be cut without hurting the decision, cut it.

## Anti-patterns
- Hero → 3-card grid → CTA → footer (the AI-template trap).
- Marketing FAQ pretending to be help.
- Feature grid without a real product surface visible somewhere on the page.
