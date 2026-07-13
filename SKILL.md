---
name: ui-architect
description: Design and build production-quality HTML/CSS/JS interfaces the way a senior UI/UX agency would — research first, design intentionally, review before delivery. Use when the user asks for a website, landing page, dashboard, portfolio, marketing page, redesign, or any non-trivial frontend, especially when they want an original visual identity (not a generic AI template) and industry-appropriate UX.
---

# UI Architect

Behave like a multidisciplinary UI/UX team, not an HTML generator. Do the research, choose the visual language, then implement. Review before delivery.

## Workflow (all requests)

1. **Scope** — restate the ask; capture goals, audience, constraints.
2. **Research** — industry patterns, user intents, competitor structures, journey risks.
3. **IA** — content model, navigation, task paths, page priority.
4. **Direction** — layout family, typography voice, color intent, motion posture.
5. **Plan** — accessibility, responsive strategy, performance budget.
6. **Generate** — semantic HTML, modern CSS, minimal JS.
7. **Review** — self-critique against `self-review/questions.md`; revise before delivery.

## Loading map (read files only when the phase needs them)

**Scope + Research:**
- `prompts/research.md` — how to run the research phase
- `research/*` — process, personas, competitor, heuristic, journey, industry, conversion, a11y
- `industries/<vertical>/*` — pick the closest vertical; load only files relevant to phase
- `knowledge/design-thinking.md`, `knowledge/information-architecture.md`

**Direction (visual language):**
- `prompts/design.md`, `prompts/layout.md`, `prompts/typography.md`, `prompts/color.md`, `prompts/animation.md`
- `layouts/<family>/README.md` + one or two `variants/*` (never all)
- `typography/<voice>.md` (one), `typography/font-pairings.md`, `typography/type-scales.md`
- `colors/psychology.md`, `colors/industry.md`, `colors/accessibility.md`
- `design-systems/<one>.md` — reference only when a system is named or clearly implied
- `animations/principles.md`, `animations/reduced-motion.md`

**Plan (quality gates):**
- `accessibility/wcag.md`, `accessibility/keyboard.md`, `accessibility/contrast.md`, `accessibility/focus.md`
- `performance/core-web-vitals.md`, `performance/images.md`, `performance/fonts.md`
- `seo/metadata.md`, `seo/structured-data.md`, `seo/headings.md`

**Generate:**
- `prompts/html.md`, `prompts/css.md`, `prompts/javascript.md`
- `html/semantic.md`, `html/landmarks.md`, `html/forms.md`, `html/aria.md`
- `css/architecture.md`, `css/variables.md`, `css/grid.md`, `css/flex.md`, `css/responsive.md`, `css/container-queries.md`
- `javascript/modules.md`, `javascript/events.md`, `javascript/performance.md`, `javascript/accessibility.md`
- `components/<name>/README.md` — only components actually used
- `templates/<type>/README.md` — only if a template family matches

**Review:**
- `prompts/review.md`, `self-review/questions.md`
- `validators/html.md`, `validators/css.md`, `validators/accessibility.md`, `validators/performance.md`, `validators/seo.md`, `validators/ux.md`
- `checklists/<page-type>.md` — page-type specific

**Rule:** load the shortest set that answers the current phase. Never load an entire directory. If a file is not listed above for the current phase, do not load it.

## Stage outputs

- **Scope brief** — goals, primary/secondary users, constraints, success metrics.
- **Research brief** — personas, competitor patterns, journey risks, industry expectations.
- **IA blueprint** — content model, navigation, task paths, page priority.
- **Design direction** — layout family + variant, type voice, color intent, motion posture.
- **Implementation draft** — semantic HTML, modern CSS, minimal JS, responsive plan.
- **Quality report** — a11y, performance, SEO, UX review, revision notes.

## Operating rules

1. Research before generation. No exceptions.
2. WCAG 2.2 AA is a floor, not a target.
3. Semantic HTML + progressive enhancement.
4. Mobile-first. Container queries where they simplify.
5. CSS variables + logical properties. No inline styles.
6. JavaScript is a last resort. Prefer HTML/CSS solutions.
7. Never reuse the previous session's section order or layout.
8. Never imitate a specific company's brand. Reference systems, don't copy them.
9. Always self-review before delivery; if a critical answer is negative, revise.

## Anti-patterns to reject

- Generic hero → 3-card feature grid → CTA → footer.
- Decorative sections with no user value.
- Duplicate/competing primary CTAs above the fold.
- Motion added for style without usability purpose.
- Colour choices unmoored from industry, brand, or accessibility.
- Delivering without a self-review pass.
