# UI Architect — Architecture

This repository is a **knowledge base**, not a prompt collection. `SKILL.md` orchestrates a phased workflow; each phase loads only the module files it needs. All files are kept small and prescriptive so loading them costs few tokens.

## Layers

1. **Research and domain understanding** — `research/`, `industries/`
2. **Design strategy** — `knowledge/`, `layouts/`, `components/`, `typography/`, `colors/`, `design-systems/`, `animations/`
3. **Implementation standards** — `html/`, `css/`, `javascript/`
4. **Quality gates** — `accessibility/`, `performance/`, `seo/`, `validators/`, `self-review/`
5. **Execution inputs** — `prompts/`, `templates/`, `examples/`, `checklists/`

## Module contract

Every knowledge file follows the same shape so the loader can pick without reading full bodies:

```
# <Topic> — <Subtopic>

## Purpose
One sentence. Why this file exists.

## Rules / Guidance
Bullet-list of prescriptive rules. Do X. Avoid Y.

## Checks (optional)
Yes/no questions the reviewer can answer against the output.

## Anti-patterns (optional)
Concrete failure modes to reject.
```

Guarantees:
- No file exceeds ~150 lines (examples excepted).
- Every file starts with a one-sentence Purpose.
- Content is prescriptive (do this, avoid that), not tutorial.

## Loading discipline (token budget)

`SKILL.md` contains a **Loading map** listing exactly which files each phase may read. The skill must:

1. Load `SKILL.md` frontmatter + this file's contract only once per session.
2. For each phase, load the minimum listed subset.
3. For industry-scoped work: load the single vertical folder, not all industries.
4. For layouts/components: load the family README first; load a variant only after choosing it.
5. Never load an entire directory tree "in case."

Expected cost per full workflow: **10–20 module files**, not 100+.

## Directory purposes

| Directory | Purpose | Typical file size |
|-----------|---------|-------------------|
| `knowledge/` | Timeless UX/UI principles | 40–80 lines |
| `research/` | Process templates for the research phase | 20–40 lines |
| `industries/<v>/` | 8 files per vertical: best-practices, layout-preferences, recommended-colors, typography, common-components, conversion-goals, mistakes, examples | 15–30 lines each |
| `layouts/<f>/` | README (family spec) + `variants/NN.md` (concrete variants) | 30–50 lines |
| `components/<c>/` | Single README: structure / a11y / mobile / anti-patterns / variations | 30–50 lines |
| `typography/` | One file per type voice + font-pairings + type-scales | 20–40 lines |
| `colors/` | psychology, industry, accessibility | 30–60 lines |
| `design-systems/` | Reference notes on established systems (do not copy) | 20–40 lines |
| `animations/` | Motion principles + specific patterns | 20–40 lines |
| `accessibility/` | WCAG 2.2 AA rulebook by area | 20–40 lines |
| `performance/` | Core Web Vitals playbook | 20–40 lines |
| `seo/` | Metadata, structured data, headings | 20–40 lines |
| `html/`, `css/`, `javascript/` | Implementation rulebooks | 20–40 lines |
| `validators/` | Per-domain review checklists | 20–40 lines |
| `self-review/` | Cross-cutting critique questions | 20–40 lines |
| `prompts/` | Operational instructions for each workflow phase | 40–80 lines |
| `templates/<t>/` | Structural specs for page-type templates | 30–50 lines |
| `examples/<e>/` | Worked examples: prompt → decisions → output plan | 40–80 lines |
| `checklists/` | Page-type checklists for the review phase | 20–40 lines |

## Adding new modules

1. Fit the module contract.
2. Register it in `SKILL.md`'s Loading map under the correct phase.
3. Keep it prescriptive: rules and checks, not prose.
4. If it would exceed ~150 lines, split it.
