# ROADMAP — Website Audit System

> **Repo:** `github.com/ewlbasco/conversion-visibility-audit`
> **Updated:** 2026-07-17

---

## Now — Skills Package ✅

Current state:
- `website-audit` — entry point and router
- `conversion-engine` — 5-layer upstream diagnosis
- `visibility-audit` — SEO, GEO, AEO, AI citability

All three ship as portable agent skills (MIT).

---

## Next — Self-Serve Tool

Build a web app version of the audit system:
- Paste URL or copy → choose audit type → get results
- No agent setup required
- Local demo first. Do not put client audit outputs or reports with real client
  data on Vercel, Netlify, GitHub Pages, or any public host. Public demo only
  after the data is sanitized, client examples are removed or fictionalized,
  and Cynthia explicitly approves the deployment.

Later: agent system for agencies that incorporates audit checks directly into new builds.

---

## Now — QA + Creative Director ✅

Two new skills built and shipped:

- **qa-audit** — validates audit outputs for completeness, evidence quality, layer routing accuracy
- **creative-director** — review gate that approves, revises, or rejects a diagnosis before rewrite

---

## Shipped Since Last Update

### Positioning clarity check ✅
Pre-audit intake gate: detects unclear positioning before running the full audit.
Blocks the audit when 2+ clarity gaps are found.

### GEO implementation layer ⚠️
Extends visibility-audit from detection to fixing at the skill/spec level:
llms.txt generation, robots.txt AI crawler configuration, answer capsules, and
entity signals. The helper scripts are not active executable code in this
package yet. They should not be described as available until they exist, run in
the workflow, and are covered by validation.

### Knowledge gap detection ✅
Mandatory step before delivery: identifies what is absent from the analysis and flags competitive blind spots.

### Design quality gate ✅
Routes to hallmark for visual audit, brand coherence, and anti-AI-slop review.

---

## Out of Scope

These are intentionally not in this roadmap:
- **Programmatic SEO** — under review, not yet decided
- **Website builder** — this system diagnoses, it does not build
- **Website builder** — building sites from scratch is a separate service scope
