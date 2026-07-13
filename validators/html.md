# HTML Validator

## Scope
Semantic structure, landmarks, forms, and document hierarchy.

## Pass criteria
- Exactly one primary `<h1>` with logical heading progression.
- Landmarks (`header`, `main`, `nav`, `footer`) are present and meaningful.
- Forms use labels, field grouping, and proper control types.
- No unnecessary ARIA replacing native semantics.

## Severity model
- Critical: blocks navigation/understanding for assistive tech.
- Major: semantic misuse reducing clarity or SEO meaning.
- Minor: non-blocking structure inconsistencies.
