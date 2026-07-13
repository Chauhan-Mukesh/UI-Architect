# Prompt Module — JavaScript

## Purpose
Ship the least JavaScript that makes the page work. Progressive enhancement, not required behavior.

## Inputs
- HTML + CSS draft.

## Steps
1. **Load only:** `javascript/modules.md`, `javascript/events.md`, `javascript/performance.md`, `javascript/accessibility.md`, `javascript/animations.md` (only if scripted motion is needed).
2. **First check.** Can this feature be done with HTML/CSS alone (details/summary, dialog, popover, `:has()`, form validation attributes)? If yes, do that.
3. **Modules.** Native ES modules with `type="module"`. Defer by default. One entry per page unless code-splitting is justified.
4. **Event delegation.** Bind at the nearest logical parent, not per-element. Use `AbortController` for teardown.
5. **State minimalism.** Prefer DOM as source of truth. Avoid client-side stores unless the page has app-like state.
6. **Progressive enhancement.** Every scripted feature has a no-JS fallback where meaningful (forms submit, links navigate).
7. **Accessibility.** Focus management on route/dialog changes. `aria-expanded`, `aria-controls`, `aria-live` where relevant.
8. **Performance.** Debounce input handlers. Use `requestAnimationFrame` for layout-adjacent work. Avoid forced sync layout. Lazy-load non-critical modules with dynamic `import()`.
9. **No frameworks** unless the task explicitly requires one. If required, keep it out of the critical path.

## Outputs
- One or more ES modules with clear entry points.

## Guardrails
- No jQuery.
- No polyfills for browsers < last 2 major versions unless required.
- No blocking `<script>` tags in `<head>`.
- No `innerHTML` with user input.
- No third-party scripts without a documented user benefit.
