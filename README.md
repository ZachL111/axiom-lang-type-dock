# axiom-lang-type-dock

`axiom-lang-type-dock` is a Julia project in compilers. Its focus is to create a Julia reference implementation for type workflows, centered on storage recovery, log and snapshot fixtures, and replay consistency checks.

## Why This Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how IR pressure and stack depth should influence a review result.

## Axiom Lang Type Dock Review Notes

Start with `IR pressure` and `stack depth`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/axiom-lang-type-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `IR pressure` and `stack depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Julia path is deliberately direct, with fixtures doing most of the explaining.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
