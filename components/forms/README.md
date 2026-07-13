# Forms

## Purpose
Collect input with the least friction. Forms are where users abandon; every unclear label is a lost conversion.

## Structure
- `<form>` with a submit button.
- `<label for>` on every input (visible or `sr-only` only when the field's purpose is clear from context).
- Group related inputs in `<fieldset>` with `<legend>`.
- Errors linked via `aria-describedby`.

## Field types
- Use native input types (`email`, `tel`, `url`, `number`, `date`, `search`).
- `autocomplete` values on all applicable fields.
- `inputmode` for numeric keypads on mobile where suitable.

## States
- Default, focus-visible, invalid, disabled, readonly.
- Invalid state pairs color with icon + inline message; never color alone.
- Successful validation may confirm inline for critical fields (password, email).

## Layout
- Single column for most forms — even long forms.
- Labels above inputs. Right-aligned labels are hostile on mobile.
- Optional fields marked as (Optional); required is default. Or reverse if most fields are optional — pick one convention.

## Mobile
- Full-width inputs; ~44px minimum height.
- Number keypads via `inputmode="numeric"` where appropriate.
- Sticky primary action on long forms.

## Accessibility
- One error summary at top of form after submit, linking to each invalid field.
- Field-level errors adjacent to the field, associated via `aria-describedby`.
- Do not disable submit until form validates — announce errors instead.
- Focus jumps to the first invalid field or summary on failed submit.

## Anti-patterns
- Placeholder-as-label (disappears on focus).
- Live validation that fires on every keystroke.
- "Reset" button next to submit.
- Custom selects that don't emulate the native pattern accessibly.
