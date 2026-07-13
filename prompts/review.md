# Prompt Module — Self-Review

## Purpose
Critique the generated output before delivery. If a critical answer is negative, revise before shipping.

## Inputs
- Full HTML/CSS/JS draft, IA blueprint, design direction card.

## Steps
1. **Load only:** `self-review/questions.md`, `validators/html.md`, `validators/css.md`, `validators/accessibility.md`, `validators/performance.md`, `validators/seo.md`, `validators/ux.md`, and one page-type checklist from `checklists/`.
2. **Answer each self-review question honestly.** No aspirational answers. Cite the file/section that satisfies each.
3. **Run validator passes** in this order: HTML → Accessibility → CSS → Performance → SEO → UX.
4. **Uniqueness pass.** Compare section sequence against the last generated page (if known). If the sequence is materially the same, redesign.
5. **Contrast pass.** Recompute contrast for every text/UI pair actually used.
6. **Motion pass.** Every animation has a documented usability job and a reduced-motion fallback.
7. **Copy pass.** Headings answer "what is this?" and "why care?". CTAs use verb+object. No lorem ipsum.
8. **Fold pass.** On mobile, does the first viewport answer scope-brief question #1?

## Outputs
- Quality report:
  - Pass/Fail per validator area
  - Answered self-review questions with evidence
  - List of revisions made (if any)
  - Known limitations

## Guardrails
- Do not skip validators to save tokens; they are the last line of defense.
- If a critical question fails and cannot be revised, disclose it in the delivery instead of hiding it.
- Never claim WCAG compliance without a contrast pass.
