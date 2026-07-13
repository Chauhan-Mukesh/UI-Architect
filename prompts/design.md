# Prompt Module — Design Direction

## Purpose
Choose the visual language: typography voice, color intent, spacing rhythm, motion posture. Commit to one direction; document why.

## Inputs
- IA blueprint from `prompts/layout.md`.
- Scope + research briefs.

## Steps
1. **Tone target.** Pick 3 adjectives (e.g., calm/authoritative/warm). Every design decision must serve them.
2. **Typography voice.** Choose one from `typography/{editorial,minimal,corporate,luxury,technical,medical,government,startup}.md`. Load it. Also load `typography/font-pairings.md` and `typography/type-scales.md`.
3. **Color intent.** Load `colors/psychology.md` + `industries/<vertical>/recommended-colors.md`. Commit to a primary/secondary/accent/neutral palette with reasoning.
4. **Contrast pre-check.** Load `colors/accessibility.md`. Verify AA (4.5:1 body, 3:1 large text and UI).
5. **Spacing rhythm.** Choose a base unit (usually 4 or 8 px) and a scale. Every gap uses the scale.
6. **Motion posture.** From `animations/principles.md`: choose "restrained" or "expressive". Load `animations/reduced-motion.md`.
7. **Design system reference.** If the request implies one (shadcn, Material, Apple HIG, etc.), load one file from `design-systems/`. Reference; do not copy.
8. **Anti-imitation check.** Confirm none of the choices copy a specific brand.

## Outputs
- **Design direction card**:
  - Tone adjectives (3)
  - Type voice + pairing + scale
  - Palette (roles + hex + contrast notes)
  - Spacing scale
  - Motion posture
  - System reference (or "none")

## Guardrails
- Do not load more than one type voice file, one industry color file, and one design-system file.
- Contrast decisions are hard constraints, not preferences.
- If tone adjectives conflict (e.g., "playful" + "authoritative"), resolve in the research brief, not here.

## Handoff
Pass the design direction card into `prompts/html.md`, `prompts/css.md`, and later `prompts/review.md`.
