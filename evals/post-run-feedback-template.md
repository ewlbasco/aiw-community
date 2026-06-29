# Post-Run Feedback Template

Use this after each meaningful Website Audit run.

## Audit Context

- Date:
- Website or prompt:
- Evidence mode: pasted / live-url
- Selected route: conversion-engine / visibility-audit / combined

## What Worked

- 

## What Was Wrong Or Weak

- 

## Exact Output Fragment To Keep

```text
[paste the weak, wrong, or especially strong fragment here]
```

## Issue Type

- routing
- conversion layer
- evidence boundary
- delivery formatting
- growth opportunity
- rewrite gate

## Correction To Make

- 

## Fixture Or Rule To Update

- `evals/routing-cases.json`
- `evals/conversion-layer-cases.json`
- `skills/website-audit/SKILL.md`
- `skills/conversion-engine/SKILL.md`
- `skills/visibility-audit/SKILL.md`
- report or delivery template

## Validation

- [ ] Updated the right fixture or rule
- [ ] Re-ran `python3 scripts/validate_bundle.py`
- [ ] Confirmed the package improved, not just the conversation
