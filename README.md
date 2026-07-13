# UI Architect

A Claude Code Skill that behaves like a senior UI/UX design agency rather than an HTML generator. Research first, design intentionally, review before delivery.

## What it does

For any frontend request, UI Architect:

1. Restates scope (goals, audience, constraints).
2. Researches the industry, competitors, and user journeys.
3. Designs an information architecture and picks a layout family + variant.
4. Commits to typography voice, color intent, and motion posture.
5. Emits semantic HTML, modern CSS, and minimal JS.
6. Self-reviews against accessibility, performance, SEO, and UX validators.

The skill is a **thin router**; the repository is a **knowledge base** of small, prescriptive modules. Only the files needed for the current phase are loaded — keeping token cost low.

## Quickstart

```bash
# 1. Clone
git clone https://github.com/Chauhan-Mukesh/UI-Architect.git
cd UI-Architect

# 2. Install into Claude Code (default: symlink to ~/.claude/skills/ui-architect)
./scripts/install.sh

# 3. Verify the repository is well-formed
./tests/run-all.sh

# 4. Open Claude Code in any project and ask for a UI
#    e.g. "Design a landing page for a cardiology clinic in Mumbai."
```

That's it. The skill is now available to every Claude Code session on your machine.

## Installation

### Option A — symlink (recommended)

Symlinks pick up local edits without reinstalling.

```bash
./scripts/install.sh
# installs to: ~/.claude/skills/ui-architect
```

### Option B — copy

Copy the files instead of symlinking (useful for read-only environments).

```bash
./scripts/install.sh --copy
```

### Option C — custom skills path

```bash
./scripts/install.sh --path /custom/skills/dir
# or:
./scripts/install.sh --copy --path /custom/skills/dir
```

### Uninstall

```bash
./scripts/uninstall.sh
# or, for a custom path:
./scripts/uninstall.sh --path /custom/skills/dir
```

### Manual installation

If you prefer not to run the installer, symlink or copy the repo yourself:

```bash
ln -s "$(pwd)" ~/.claude/skills/ui-architect
```

The only hard requirement is that Claude Code can find a `SKILL.md` with valid YAML frontmatter at `<skills-dir>/ui-architect/SKILL.md`.

## How to use the skill

Once installed, invoke it from any Claude Code conversation by asking for frontend work. The skill's `description` field matches on requests like:

- *"Build a landing page for a legal-tech SaaS."*
- *"Design a portfolio homepage for a freelance illustrator."*
- *"Redesign our clinic's appointment-booking flow."*
- *"Draft a dashboard shell for a logistics operations team."*
- *"Generate the pricing page for a developer-tools product."*

You can also invoke it explicitly by name:

> Use the **ui-architect** skill to design a hero + features section for a construction-equipment rental company.

### What the skill will return

Every non-trivial UI request produces the same **six stage outputs**, in order:

| Stage | Deliverable |
|-------|-------------|
| Scope brief | goals, primary/secondary users, constraints, success metrics |
| Research brief | personas, competitor patterns, journey risks, industry expectations |
| IA blueprint | content model, navigation, task paths, page priority |
| Design direction | layout family + variant, type voice, color intent, motion posture |
| Implementation draft | semantic HTML, modern CSS, minimal JS, responsive plan |
| Quality report | a11y, performance, SEO, UX review, revision notes |

The final artifact is production-quality HTML/CSS (and only JS if the interaction truly requires it), with a written review pass appended.

### Working with the output

- **Iterating.** Ask for revisions the same way you would with a designer — "tighten the hero," "swap the pricing variant," "increase contrast on the CTA." The skill re-enters at the appropriate stage instead of regenerating from scratch.
- **Design tokens.** Copy `assets/tokens/*.css` into your project as a starting point, then override literal values with the palette and scale committed in the design direction.
- **HTML skeleton.** `assets/html/skeleton.html` is a reference document that already has every metadata slot (canonical, OG, Twitter, JSON-LD placeholder, skip link, landmarks) the SKILL loading map expects.
- **CSS reset.** `assets/css/reset.css` is a small opinionated reset that pairs with the token files.

### Supported verticals

Twenty industry verticals ship with the skill. Ask for one directly or let the skill infer it:

```
agency          finance          medical          restaurant
artificial-intelligence   government   open-source      retail
automotive      hotel            portfolio        saas
construction    insurance        real-estate      travel
developer-tools legal            manufacturing    education
```

Each vertical carries eight modules: best practices, layout preferences, recommended colors, typography, common components, conversion goals, mistakes, and worked examples.

## Repository shape

- `SKILL.md` — skill frontmatter, workflow, and the loading map.
- `docs/architecture.md` — the module contract every file follows.
- `knowledge/` — timeless UX/UI principles.
- `research/` — process templates for the research phase.
- `industries/` — 20 verticals, 8 files each.
- `layouts/` — 9 families (hero, landing, dashboard, portfolio, documentation, blog, pricing, admin, footer), each with 3 variants.
- `components/` — 23 components with structure, states, mobile, a11y, anti-patterns.
- `typography/`, `colors/`, `design-systems/`, `animations/` — visual language rulebooks.
- `html/`, `css/`, `javascript/` — implementation standards.
- `accessibility/`, `performance/`, `seo/` — quality mandates.
- `prompts/` — operational instructions per workflow phase.
- `validators/`, `self-review/`, `checklists/` — review-time tooling.
- `assets/` — starter CSS tokens, HTML skeleton, CSS reset.
- `templates/`, `examples/` — structural specs and worked examples.
- `scripts/` — install / uninstall / repo validators.
- `tests/` — structural integrity tests (run in CI).

## Verifying your installation

The repository ships with structural integrity tests. Run them any time — after a `git pull`, before opening a PR, or on CI:

```bash
./tests/run-all.sh
```

You should see:

```
PASS: directory-shape
PASS: industry-parity
PASS: loading-map
PASS: module-contract
PASS: skill-frontmatter
----------------------------------------
Results: 5 passed, 0 failed
```

Individual validators are also available under `scripts/`:

```bash
./scripts/validate-structure.sh       # module contract (H1, section headings, size ceiling)
./scripts/validate-loading-map.sh     # every path in SKILL.md's loading map resolves
./scripts/validate-industries.sh      # every industry has the 8 canonical files
```

All exit `0` on success and non-zero on failure. Suitable for CI.

## Operating principles

- Research before generation. No exceptions.
- WCAG 2.2 AA is a floor.
- Semantic HTML + progressive enhancement.
- Minimize JavaScript.
- Never reuse the previous session's section order or layout.
- Never imitate a specific company's brand.
- Always self-review before delivery.

## Troubleshooting

- **Claude Code doesn't seem to invoke the skill.** Confirm `~/.claude/skills/ui-architect/SKILL.md` exists and its first line is `---`. Re-run `./scripts/install.sh` if either is missing.
- **`./tests/run-all.sh` fails after editing modules.** The most common cause is a file that exceeds the 200-line ceiling (`test-module-contract.sh`) or a broken reference in `SKILL.md`'s loading map. The failing test names the offending file.
- **Symlink refuses to update.** The installer removes the previous target before creating a new one, but if a file exists in its place, remove it manually: `rm -rf ~/.claude/skills/ui-architect`.

## Contributing

See `CONTRIBUTING.md`. Every module follows the contract in `docs/architecture.md` — keep files under ~200 lines, prescriptive (rules and checks, not tutorial), and registered in the SKILL loading map. Run `./tests/run-all.sh` before opening a PR.
