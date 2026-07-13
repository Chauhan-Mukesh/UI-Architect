# Prompt Module — Research

## Purpose
Run the research phase before any design or code. Turn a raw user request into a scope brief and a research brief.

## Inputs
- Raw user request.
- Any provided industry, audience, or brand hints.

## Steps
1. **Restate scope.** In 3–5 bullets: goal, target users, constraints (brand, tech, timeline), success signals.
2. **Identify industry.** Pick the closest folder in `industries/`. If none fit, note "generic".
3. **Load only:**
   - `industries/<vertical>/best-practices.md`
   - `industries/<vertical>/conversion-goals.md`
   - `industries/<vertical>/mistakes.md`
   - `research/industry-analysis.md` (if unfamiliar vertical)
4. **Personas.** Name 2–3 personas: role, primary intent, decision criteria, blockers.
5. **Competitor patterns.** List 3–5 patterns the vertical expects (not company names).
6. **Journey risks.** Where users typically drop off or lose trust in this vertical.
7. **Content priorities.** Rank the top 5 information needs the page must satisfy.

## Outputs
- **Scope brief** (goals / users / constraints / success).
- **Research brief** (personas / patterns / risks / content priorities).

## Guardrails
- Do not skip to layout choices in this phase.
- Do not invent statistics or citations. Use qualitative framing.
- If the request is ambiguous (audience, geography, tone), ask 2–3 targeted questions before continuing.
- Load at most 4 industry files and 1 research file. Anything more is over-fetching.

## Handoff to next phase
Pass the two briefs into `prompts/layout.md` and `prompts/design.md`. Do not re-derive scope later.
