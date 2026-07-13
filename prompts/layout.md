# Prompt Module — Layout & Information Architecture

## Purpose
Turn the research brief into an IA blueprint and pick a layout family and one variant. Do this before choosing typography or colors.

## Inputs
- Scope brief and research brief from `prompts/research.md`.

## Steps
1. **Page type.** Landing / dashboard / portfolio / documentation / blog / pricing / admin / hybrid.
2. **Load family:** `layouts/<family>/README.md`.
3. **Content model.** List every section with: purpose, primary content, priority (P0/P1/P2), device fold expectations.
4. **Section sequence.** Order sections by user task flow, not by aesthetic rhythm. First section must answer "am I in the right place?".
5. **Pick variant.** Load two variants max from `layouts/<family>/variants/`; choose one; note why the others were rejected.
6. **Navigation.** Decide top nav / side nav / breadcrumbs / anchor nav. Justify against personas.
7. **Mobile fold.** Sketch the mobile order — often not the same as desktop.
8. **Load `industries/<vertical>/layout-preferences.md`** to sanity-check against vertical expectations.

## Outputs
- **IA blueprint**: section list with purpose, priority, device order.
- **Chosen layout family + variant** with one-sentence rationale.
- **Navigation decision**.

## Guardrails
- Never propose "hero → 3-card feature grid → CTA → footer" unless the research brief explicitly demands it.
- Never load all variant files. Two maximum.
- If two variants tie, pick the one that most differs from the last generated page (variety mandate).
- If the page has more than 8 sections, challenge before designing — cut or fold sections.

## Handoff
Pass IA blueprint + chosen variant into `prompts/design.md`.
