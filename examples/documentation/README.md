# Example — Documentation

## Prompt
"Docs site for an open-source developer tool with a CLI and a library API."

## Research
- Audience: engineers evaluating and integrating the library.
- Primary tasks: install, run first command, look up a specific API.
- Journey risk: incomplete examples; broken code snippets.

## Design direction
- Tone: precise, unpretentious.
- Layout: `layouts/documentation/variants/01` (three-column).
- Type: system-sans body + a strong monospace for code.
- Colors: neutral with an accent color; parity dark mode.
- Motion: none beyond focus states.

## Output plan
- Global: search, version switcher, dark toggle.
- Sidebar: Getting Started, Guides, API Reference, Migrations, Changelog.
- Article layout: title, one-sentence summary, updated date, body, prev/next.
- TOC panel on the right for pages with H2s.
- Search: keyboard-first (⌘K).

## Review notes
- All code samples copyable with a labeled language tag.
- Anchor links visible on hover, always focusable.
- Sticky header does not overlap anchor targets.
- Sample docs page passes AA in both themes.
