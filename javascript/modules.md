# JavaScript — Modules

## Purpose
Ship JavaScript as ES modules. Deferred by default, loaded once, easy to split.

## Rules
- `<script type="module" src="..."></script>` at the end of `<head>` or in `<body>`. Modules are deferred implicitly.
- One entry point per page unless code-splitting is justified.
- Use `import`/`export`; never global variables on `window`.
- Dynamic `import()` for lazy features (dialogs, charts, editors).
- Prefer named exports over default exports for tooling clarity.

## Structure
- One responsibility per module.
- Side effects at import are avoided; expose an `init()` or auto-run inside a checked context.
- Feature-scoped: `carousel.js`, `search.js`, `menu.js` — not `utils.js`.

## Anti-patterns
- Global scripts that assume DOM ready ordering.
- Bundling everything into one 100 KB entry file.
- IIFEs and namespaces — this is 2020s JS.
