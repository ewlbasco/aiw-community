---
name: website-audit
description: Diagnose website growth problems and route them to conversion, visibility, or a combined audit. Use for website audits, weak conversion, unclear offers, SEO/GEO/AEO concerns, AI visibility, rewrites, redesigns, and vague requests such as "why is my website not working?"
---

# Website Audit

Use this skill as the entry point. Route specialist work to:

- `conversion-engine` for offer, copy, page structure, proof, objections, CTA,
  funnel, rewrite, and mockup decisions.
- `visibility-audit` for SEO, GEO, AEO, AI search readiness, crawlability,
  metadata, schema, accessibility, and performance.
- `geo-implementation` for fixing GEO issues detected by visibility-audit
  (llms.txt, robots.txt AI crawlers, answer capsules, entity signals).
- `positioning-clarity-check` as a pre-audit intake gate when positioning
  uncertainty is suspected.
- `hallmark` for visual design quality audit, brand coherence, and
  anti-AI-slop review.

Do not create a third audit methodology inside this router.

## Product Message

This is the skill version of the Website Audit.

- People can use it now inside their agent.
- The self-serve tool is being built separately.
- The audit diagnoses first and rewrites later.

## Collect Inputs

Extract or request only what is needed:

- business and offer
- target audience
- desired outcome
- URL or pasted website copy
- recent content, profile copy, or funnel notes when relevant

If the user gives enough pasted material, classify before asking for more.

## Select Evidence Mode

Use `pasted` mode when only text or screenshots are available.

Use `live-url` mode only when the agent can fetch or measure the website.

In pasted mode, do not score or claim:

- rankings, traffic, backlinks, or conversions
- robots.txt, sitemap, schema, status codes, or crawlability
- Core Web Vitals or page speed
- AI citations on external platforms

Label these items `not measured`.

## Route

| Signal or request | Route |
|---|---|
| Weak headline, vague offer, weak CTA, no proof, poor page flow | `conversion-engine` |
| SEO, GEO, AEO, AI search, metadata, schema, crawlability | `visibility-audit` |
| Accessibility, performance, robots.txt, or sitemap | `visibility-audit` |
| Visual design quality, brand coherence, anti-AI-slop review | `hallmark` for `audit` or `study` |
| Mixed symptoms or "audit everything" | Run both and merge |
| Copy rewrite | Audit first, then paid `conversion-engine` rewrite |
| Redesign or rebuild | Audit first, then recommend a scoped service call |

Classify the primary bottleneck as:

- visibility
- conversion
- offer
- trust
- follow-up
- system

## Audit Workflow

1. State the evidence mode and inputs used.
2. Choose the route and explain the decision with evidence.
3. Run the relevant specialist skill.
4. For a combined audit, keep at most five conversion findings and five
   visibility findings.
5. Deduplicate findings by root cause.
6. Prioritize fixes by expected impact, confidence, and effort.
7. Before delivery, run Knowledge Gap detection: identify what is absent
   from the analysis, what competitors are not covering, and what the
   audience needs but is not being told. Add a "Knowledge Gaps" section.
8. Return one concrete next step and a seven-day action plan.

## Improvement Loop

After every meaningful use, run a short improvement pass.

1. Capture what was wrong, unclear, missing, or unexpectedly strong.
2. Keep the exact prompt, route decision, and weak output fragment.
3. If routing was wrong, add or update a case in `evals/routing-cases.json`.
4. If the wrong upstream layer was chosen, add or update a case in
   `evals/conversion-layer-cases.json`.
5. If the issue was format, language, or delivery quality, update the relevant
   skill or report instructions instead of only noting it in chat.
6. Re-run `python3 scripts/validate_bundle.py`.
7. Treat the package as improved only when the fixture or rule is added and the
   validator passes.

Do not rely on memory alone. Corrections that are not converted into fixtures,
rules, or templates will be lost.

## Rewrite Gate

Do not rewrite before:

1. completing the audit
2. classifying each conversion recommendation by its upstream layer
3. checking that each finding has evidence and an exact fix brief
4. defining a short pre-write plan with audience, outcome, offer, proof,
   objections, funnel path, and page map

Do not expose mockup or rebuild as a public self-serve action. Recommend a
service call when structural implementation is required.

## Product Ladder

- Free: Conversion, Visibility, or Full Website Audit with roadmap.
- Paid: copy rewrite based on a completed Conversion or Full audit.
- Service: redesign or rebuild delivered after a scoped call.

## Human-Facing Delivery

Before delivery, ask whether the user wants:

1. a branded interactive HTML presentation, recommended; or
2. an editable Word or Google Doc version; or
3. a PDF exported from the approved presentation.

Keep Markdown or structured data as the internal source. Do not expose raw
Markdown as the client-facing audit.

Brand the report to the audited business using public colors, fonts, logo, and
visual cues when available. Label these as detected cues until verified. Keep
the audit provider attribution secondary.

## Output

```markdown
# Conversion + Visibility Diagnosis

## Evidence
- Mode: pasted / live-url
- Inputs used:
- Missing evidence:
- Assumptions:

## Route Decision
- Route:
- Why:
- Specialist:

## Bottleneck
- Primary:
- Secondary:
- Evidence:

## Conversion Root Layer
- Layer: Business / Positioning / Messaging / Offer / Trust / Conversion
- Upstream question:
- Business decision required:

## Scores
- Conversion: measured score or not measured
- Visibility: measured score or not measured
- Scoring basis:

## Priority Findings
| Priority | Finding | Layer | Evidence | Impact | Fix brief | Status | Owner |
|---|---|---|---|---|---|---|---|

## Priority Order
1. First fix:
2. Second fix:
3. Third fix:

## Seven-Day Plan
- Day 1:
- Day 2:
- Day 3:
- Day 4:
- Day 5:
- Day 6:
- Day 7:

## Rewrite Decision
- Paid rewrite eligible: yes / no
- Reason:
- Gate status:

## Rebuild Decision
- Service call recommended: yes / no
- Reason:

## Next Step
[One action]
```

## Quality Gate

Every finding must include:

- location or source
- exact evidence
- user or bot impact
- root cause
- exact fix
- owner

Mark the audit incomplete when evidence is missing. Never convert confidence
into a fabricated score.

## Boundaries

- Do not call this a standalone visibility tool.
- Do not duplicate the specialist skills.
- Do not invent analytics, rankings, citations, proof, or business results.
- Do not recommend content creation before diagnosing the bottleneck.
- Do not turn a seven-day plan into a broad marketing roadmap.
- Do not give away the complete paid rewrite inside the free audit.
- Do not expose a self-serve website builder.
- Do not present the unfinished tool as the current product. This skill is the current product.
