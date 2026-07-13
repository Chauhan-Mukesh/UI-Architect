# Changelog

All notable changes to this project are documented in this file.

## [0.7.0] - 2026-07-13
### Added
- `SKILL.md` YAML frontmatter (`name`, `description`) so the skill is installable in Claude Code.
- `SKILL.md` **Loading map** — explicit per-phase file selection rules to keep token cost low.
- `docs/architecture.md` — module contract every knowledge file follows.
- 10 `prompts/*.md` operational modules (research, layout, design, color, animation, typography, html, css, javascript, review) — the workflow's operational instructions.
- Filled 5 previously-stubbed industry verticals: `agency`, `portfolio`, `restaurant`, `open-source`, `artificial-intelligence` (8 files each — 40 files total). All 20 verticals now covered at parity.
- 9 layout families' `README.md` and 27 layout variants (3 per family) with structure, breakpoints, accessibility, and anti-patterns.
- 23 component `README.md` files (buttons, cards, forms, gallery, faq, timeline, comparison, stats, pricing, navbar, footer, modal, toast, tabs, accordion, breadcrumbs, sidebar, tables, charts, pagination, search, filters, testimonials).
- 5 `html/`, 8 `css/`, 5 `javascript/`, 10 `typography/`, 3 `colors/`, 7 `animations/`, 6 `accessibility/`, 6 `performance/`, 4 `seo/`, 9 `design-systems/`, and 6 `checklists/` prescriptive rulebooks.
- 6 `templates/*/README.md` structural specs (landing-page, dashboard, portfolio, documentation, blog, marketing).
- 8 `examples/*/README.md` worked examples with prompt → research → design → output plan → review notes.

### Changed
- `README.md` rewritten to reflect the skill's current shape and operating principles.

## [0.6.0] - 2026-07-13
### Added
- Expanded industry research modules for `construction`, `manufacturing`, `automotive`, `hotel`, and `developer-tools`.
- Added structured guidance across each industry's `best-practices`, `layout-preferences`, `recommended-colors`, `typography`, `common-components`, `conversion-goals`, `mistakes`, and `examples` files.

## [0.5.0] - 2026-07-13
### Added
- Expanded industry research modules for `travel`, `retail`, `legal`, `insurance`, and `real-estate`.
- Added structured guidance across each industry's `best-practices`, `layout-preferences`, `recommended-colors`, `typography`, `common-components`, `conversion-goals`, `mistakes`, and `examples` files.

## [0.4.0] - 2026-07-13
### Added
- Expanded `accessibility/` modules with practical WCAG 2.2 AA requirements and validation checks.
- Expanded `validators/` modules with pass criteria and severity levels for HTML, CSS, UX, accessibility, performance, and SEO.
- Updated `self-review/questions.md` to align review prompts with quality-gate expectations.

## [0.3.0] - 2026-07-13
### Added
- Expanded industry research modules for `saas`, `education`, `medical`, `finance`, and `government`.
- Added structured guidance across each industry's `best-practices`, `layout-preferences`, `recommended-colors`, `typography`, `common-components`, `conversion-goals`, `mistakes`, and `examples` files.

## [0.2.0] - 2026-07-13
### Added
- Expanded Phase 2 core content for `knowledge/` modules with actionable UX/UI principles.
- Expanded `research/` engine modules with structured discovery, analysis, and output formats.
- Enhanced `SKILL.md` with explicit stage outputs aligned to research-first workflow.

## [0.1.0] - 2026-07-13
### Added
- Initial repository architecture based on `plan.md`.
- Knowledge, research, standards, checklists, and validators scaffolding.
- Base `SKILL.md`, contribution guide, and roadmap-aligned folder hierarchy.
