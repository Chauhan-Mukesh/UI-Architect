# Accessibility — Forms

## Purpose
Accessible forms are the single biggest lever for reducing errors and abandonment.

## Rules
- Every input has a `<label for>` (visible or `sr-only` when redundant).
- Related inputs grouped in `<fieldset>` with `<legend>`.
- Errors:
  - Field-level: message adjacent to input, associated via `aria-describedby`; `aria-invalid="true"` on the invalid field.
  - Form-level summary at the top on submit failure, linking to each invalid field.
- Focus jumps to first invalid field or summary on failed submit.
- Success confirmation announced via `aria-live="polite"`.
- Required fields marked visibly and via the `required` attribute.

## Rules
- Placeholder is not a label.
- Do not disable submit; announce errors instead.
- Preserve user input on error — do not clear the form.
- Autocomplete attributes on fields with a standard WHATWG value.

## Anti-patterns
- Live per-keystroke validation firing while user is still typing.
- Placeholder-only labels that vanish on focus.
- Password rules revealed only after failed submit.
- Custom selects and comboboxes that don't emulate native keyboard behavior.
