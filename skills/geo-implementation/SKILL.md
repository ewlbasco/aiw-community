---
name: geo-implementation
description: Implement GEO fixes identified by visibility-audit: generate llms.txt, configure robots.txt for AI crawlers, create answer capsules, add entity signals, and structure content for AI search readiness.
---

# GEO Implementation

Fix what the visibility audit detects.

## Upstream Gate

Before implementing, confirm that a visibility audit has been completed. Do not implement fixes without evidence of what needs fixing.

## Capabilities

### 1. llms.txt generation
- Generate `llms.txt` at the domain root listing key pages, content summaries, and entity relationships
- Include FAQ passages, definitions, and structured content references
- Follow the llms.txt standard (llmstxt.org)

### 2. robots.txt AI crawler configuration
- Add explicit rules for AI crawlers: GPTBot, Claude-Web, Google-Extended, CCBot, PerplexityBot, Applebot-Extended
- Allow or disallow specific paths per crawler type
- Reference the sitemap and llms.txt location

### 3. Answer capsules
- Identify key buyer questions from the website's content gaps
- Create standalone answer sections formatted for AI citation
- Use direct question → short answer → evidence structure
- Add FAQ schema for each capsule

### 4. Entity signals
- Verify Organization/LocalBusiness schema matches the visible brand
- Add sameAs links to official external profiles
- Ensure NAP (name, address, phone) consistency across schema and visible copy
- Add service-area and price-range where applicable

### 5. Content structure for AI search
- Convert dense paragraphs into question-answer pairs
- Add clear H2/H3 headings that match search intent
- Ensure definitions are explicit, not implied
- Add pronunciation guides for unusual brand names

## Output

Return a prioritized implementation plan with:
- exact files to create or modify
- recommended content for each asset
- implementation order (llms.txt → robots.txt → schema → capsules → content)
- verification steps to re-run visibility-audit after implementation

## Boundaries

- Do not rewrite the entire website; only add the GEO-specific layers
- Do not fabricate business facts, locations, or services
- Do not guarantee rankings or AI citation placement
- Route full copy rewrites to `conversion-engine`
- The self-serve tool is separate; this skill is the implementation layer
