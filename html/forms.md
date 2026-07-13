# HTML — Forms

## Purpose
Forms are the highest-friction UI. Every semantic decision reduces error rates.

## Rules
- Every input has an associated `<label for>` (or `aria-labelledby` when visual label is elsewhere).
- Use native input types: `email`, `tel`, `url`, `number`, `date`, `time`, `search`, `password`.
- Add `autocomplete` on every field where a WHATWG value exists (`name`, `email`, `street-address`, `postal-code`, `cc-number`, etc.).
- `inputmode` for mobile keyboards on numeric or decimal input.
- Group with `<fieldset><legend>` for related inputs (radios, checkbox groups, address blocks).
- Required fields: `required` attribute; visually marked; avoid marking optional-only for very optional-heavy forms.
- Errors: inline text, associated via `aria-describedby`, plus `aria-invalid="true"` on the invalid field.
- Submit is a `<button type="submit">` inside the `<form>`.
- No submit-on-Enter surprises: if a form has one field, Enter submits; otherwise be explicit.
- File inputs: use native `<input type="file">`; label may be visually styled but must remain accessible.

## Anti-patterns
- Placeholder used as label.
- Live per-keystroke validation firing before the field is complete.
- Disabling submit until validation passes (users cannot see what's wrong).
- Reset buttons next to submit.
- Custom selects that break keyboard interaction.
