---
type: docs
project: conversion-visibility
source: codex
created: 2026-06-28
updated: 2026-06-29
summary: Local operator guide for the Website Audit MVP.
tags: [website-audit, mvp, python, html]
status: active
related: [tracking/tracking-website-audit-mvp-build-2026-06-28.md]
---

# Website Audit MVP

Freshness check: 2026-06-28. Built against Python 3.14 with `requests` and
`jinja2`.

## Run

```bash
cd projects/conversion-visibility/website-audit-mvp
python3 app.py
```

Open `http://127.0.0.1:8765`.

## Test

```bash
python3 -m unittest discover -s tests -v
```

## MVP Capabilities

- URL input
- Conversion, Visibility, or Full Website Audit
- one optional desired-outcome question
- bounded multi-page public crawl
- private/local network blocking
- five-layer conversion scoring
- evidence-aware visibility scoring
- detected brand colors and font cues
- standalone branded HTML report
- editable Google Docs review step through connected Drive
- PDF export only after editable-source approval
- permanent report files under `outputs/`

## Evidence Boundary

The deterministic engine does not replace the complete strategic agent. It
does not measure:

- rendered JavaScript states or Core Web Vitals
- rendered visual hierarchy and mobile runtime behavior
- keyboard behavior and contrast
- live AI-platform citations and recommendation tests
- competitor gap without supplied competitors
- analytics, rankings, backlinks, traffic, or conversion rate

Use the generated report as the repeatable evidence pass. Use the agent layer
for final positioning judgment and client delivery review.

## Public Release Blockers

- authentication and membership access
- rate limiting and job queue
- persistent database
- hosted security review
- second-site validation
- controlled visual and performance measurement
- Google OAuth / Drive integration for automatic native Google Doc creation
- canonical/portable skill drift test
