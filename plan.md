# UI Architect

> **A Claude Code Skill that behaves like a senior UI/UX design agency rather than an HTML generator.**

---

# Vision

Build a Claude Code Skill that performs the work of an experienced multidisciplinary frontend team before generating any code.

Instead of immediately producing HTML, the skill should:

* Research the target domain
* Infer business goals
* Understand user expectations
* Select an appropriate visual language
* Design an information architecture
* Build accessible, semantic HTML
* Produce maintainable CSS and JavaScript
* Review and critique its own work
* Deliver a polished, production-ready interface

The generated websites should never resemble generic AI templates. Every project should have its own design language and feel intentionally crafted.

---

# Objectives

## Traditional AI Workflow

```text
User Request
      │
      ▼
Generate HTML
      │
      ▼
Generic Hero
Cards
CTA
Footer
```

---

## UI Architect Workflow

```text
User Request
      │
      ▼
Scope Analysis
      │
      ▼
Domain Research
      │
      ▼
Business Goal Analysis
      │
      ▼
User Persona Identification
      │
      ▼
Competitor Research
      │
      ▼
Information Architecture
      │
      ▼
Visual Style Selection
      │
      ▼
Typography System
      │
      ▼
Color Psychology
      │
      ▼
Component Selection
      │
      ▼
Accessibility Planning
      │
      ▼
Responsive Strategy
      │
      ▼
Animation Strategy
      │
      ▼
Performance Planning
      │
      ▼
Generate HTML/CSS/JS
      │
      ▼
Self Review
      │
      ▼
Improve
      │
      ▼
Deliver
```

---

# Repository Structure

```text
ui-architect/

├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SKILL.md

├── docs/
├── knowledge/
├── research/
├── industries/
├── layouts/
├── components/
├── typography/
├── colors/
├── design-systems/
├── animations/
├── accessibility/
├── performance/
├── seo/
├── html/
├── css/
├── javascript/
├── prompts/
├── templates/
├── examples/
├── checklists/
├── validators/
├── self-review/
├── scripts/
├── tests/
└── assets/
```

---

# Repository Philosophy

The repository should act as a **knowledge base**, not merely a prompt collection.

The Claude Skill orchestrates the workflow while the repository stores reusable expertise.

Benefits:

* Lower token usage
* Modular knowledge loading
* Easier maintenance
* Easier future expansion
* Consistent output quality

---

# Knowledge Base

```
knowledge/

design-principles.md
psychology.md
gestalt.md
cognitive-load.md
visual-hierarchy.md
white-space.md
reading-patterns.md
information-architecture.md
design-thinking.md
```

Contents include:

* Gestalt Principles
* UX Laws
* Human Psychology
* Visual Hierarchy
* Information Architecture
* Reading Behaviors
* White Space Usage
* Design Thinking Process

---

# Research Engine

```
research/

research-process.md
competitor-analysis.md
user-personas.md
journey-mapping.md
heuristic-evaluation.md
conversion-optimization.md
industry-analysis.md
accessibility-research.md
```

Before writing any HTML, the skill should automatically determine:

* Business goals
* Primary users
* Secondary users
* Common user journeys
* Industry expectations
* Competitor patterns
* Appropriate UX patterns

---

# Industry Knowledge

```
industries/

saas/
education/
medical/
finance/
government/
manufacturing/
construction/
retail/
automotive/
travel/
portfolio/
agency/
restaurant/
hotel/
legal/
insurance/
real-estate/
developer-tools/
open-source/
artificial-intelligence/
```

Each industry folder should contain:

```
best-practices.md
layout-preferences.md
recommended-colors.md
typography.md
common-components.md
conversion-goals.md
mistakes.md
examples.md
```

Example:

Medical:

* Trust-building layouts
* Accessible typography
* Calm color palettes
* Appointment-first CTAs
* Emergency contact emphasis
* Compliance considerations

---

# Layout Library

```
layouts/

hero/
landing/
dashboard/
portfolio/
documentation/
blog/
pricing/
admin/
footer/
```

Every layout folder contains:

```
variants/

01.md
02.md
03.md
...
100.md
```

Goals:

* Large variety
* No repetitive structure
* Industry-aware selection
* Responsive-first layouts

---

# Component Library

```
components/

buttons/
cards/
forms/
gallery/
faq/
timeline/
comparison/
stats/
pricing/
testimonials/
navbar/
footer/
modal/
toast/
tabs/
accordion/
breadcrumbs/
sidebar/
tables/
charts/
pagination/
filters/
search/
```

Each component should include:

* Usage guidelines
* HTML structure
* Accessibility
* Mobile behavior
* UX recommendations
* Anti-patterns
* Variations

---

# Typography System

```
typography/

font-pairings.md
type-scales.md
editorial.md
minimal.md
corporate.md
luxury.md
technical.md
medical.md
government.md
startup.md
```

Should include:

* Font pairing recommendations
* Modular scales
* Readability
* Contrast
* Hierarchy

---

# Color System

```
colors/

psychology.md
industry.md
accessibility.md

palettes/
```

Goals:

* Color psychology
* Accessible contrast
* Industry-specific palettes
* Design token generation

---

# Design Systems

```
design-systems/

apple.md
material.md
carbon.md
fluent.md
primer.md
polaris.md
radix.md
shadcn.md
tailwind.md
```

Purpose:

Analyze and learn from established systems without copying them.

Focus on:

* Spacing
* Typography
* Hierarchy
* Components
* Interaction
* Accessibility

---

# Animation Library

```
animations/

principles.md
micro-interactions.md
hover.md
scroll.md
loading.md
timing.md
reduced-motion.md
```

Rules:

* Motion must improve usability
* Respect prefers-reduced-motion
* Avoid unnecessary animations

---

# HTML Standards

```
html/

semantic.md
forms.md
tables.md
landmarks.md
aria.md
```

Requirements:

* Semantic HTML
* Accessible forms
* Correct landmarks
* Proper heading hierarchy
* ARIA only where necessary

---

# CSS Standards

```
css/

architecture.md
variables.md
grid.md
flex.md
responsive.md
container-queries.md
css-layers.md
naming.md
```

Guidelines:

* CSS Variables
* CSS Grid
* Modern Flexbox
* Container Queries
* Logical Properties
* Mobile First
* No inline styles

---

# JavaScript Standards

```
javascript/

modules.md
events.md
performance.md
animations.md
accessibility.md
```

Requirements:

* ES Modules
* Progressive Enhancement
* Minimal JavaScript
* Accessible interactions

---

# Accessibility

```
accessibility/

wcag.md
keyboard.md
focus.md
forms.md
screen-readers.md
contrast.md
```

Mandatory:

* WCAG 2.2 AA compliance
* Keyboard navigation
* Focus management
* Accessible forms
* Screen reader compatibility

---

# Performance

```
performance/

critical-css.md
images.md
fonts.md
lazy-loading.md
core-web-vitals.md
rendering.md
```

Goals:

* Fast loading
* Optimized images
* Efficient CSS
* Reduced JavaScript
* Excellent Core Web Vitals

---

# SEO

```
seo/

metadata.md
schema.md
structured-data.md
headings.md
```

Should include:

* Metadata
* Open Graph
* Twitter Cards
* JSON-LD
* Semantic headings

---

# Prompt Modules

```
prompts/

research.md
layout.md
design.md
typography.md
color.md
animation.md
html.md
css.md
javascript.md
review.md
```

Purpose:

Only load relevant prompts when needed to minimize token usage.

---

# Templates

```
templates/

landing-page/
dashboard/
portfolio/
documentation/
blog/
marketing/
```

Provide reusable structures without forcing repetitive designs.

---

# Example Library

```
examples/

landing/
dashboard/
medical/
finance/
portfolio/
restaurant/
agency/
documentation/
```

Each example contains:

* Original prompt
* Research notes
* Design decisions
* Generated HTML
* CSS
* JavaScript
* Self-review
* Screenshots

---

# Checklists

```
checklists/

landing.md
dashboard.md
portfolio.md
medical.md
documentation.md
blog.md
```

Purpose:

Ensure no important UX principles are overlooked.

---

# Validators

```
validators/

html.md
css.md
ux.md
accessibility.md
performance.md
seo.md
```

The skill validates output before final delivery.

---

# Self Review Engine

Before returning HTML, the skill should critique itself.

Questions include:

* Does this layout feel unique?
* Does it match the business domain?
* Is typography appropriate?
* Is spacing consistent?
* Is accessibility complete?
* Is responsive behavior well planned?
* Is performance acceptable?
* Could this design be simplified?
* Does every section have a clear purpose?
* Are interactions intuitive?
* Does the visual hierarchy guide the user effectively?

If the answer to any critical question is negative, the design should be revised before delivery.

---

# Repository Principles

1. Never reuse the same layout twice consecutively.
2. Always perform domain research first.
3. UX takes priority over UI.
4. Accessibility is mandatory.
5. Use semantic HTML.
6. Mobile-first development.
7. Progressive enhancement.
8. CSS variables by default.
9. Optimize for performance.
10. Generate unique visual identities.
11. Choose typography intentionally.
12. Choose colors using psychology.
13. Minimize unnecessary JavaScript.
14. Never imitate another company's design.
15. Review every design before delivery.

---

# Long-Term Roadmap

## Phase 1

* Repository setup
* SKILL.md
* Core architecture
* Design principles
* Repository documentation

---

## Phase 2

Knowledge Base

* UX
* UI
* Typography
* Colors
* Components
* Layouts

---

## Phase 3

Generation Engine

* HTML
* CSS
* JavaScript
* Responsive system
* Prompt modules

---

## Phase 4

Quality Assurance

* Accessibility
* SEO
* Performance
* Validators
* Self-review engine

---

## Phase 5

Expansion

Additional Claude Skills:

* UI Researcher
* Design System Builder
* Wireframe Architect
* Component Engineer
* Motion Designer
* Accessibility Auditor
* Performance Optimizer
* SEO Architect
* Design Reviewer
* Documentation Generator
* Presentation Builder

---

# Ultimate Goal

Create the most comprehensive open-source Claude Code Skill for frontend design—one that consistently produces original, accessible, performant, and production-ready HTML/CSS/JavaScript by combining domain research, UX strategy, UI design principles, engineering best practices, and automated self-review into a single intelligent workflow.
