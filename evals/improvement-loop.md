# Website Audit Improvement Loop

Use this after every real audit run, especially when a user gives corrections.

## Goal

Turn one session into a better package, not just a better memory.

## Loop

1. Save the exact prompt or request.
2. Save the evidence mode used: `pasted` or `live-url`.
3. Write the wrong or weak output exactly as it appeared.
4. Classify the issue:
   - routing
   - conversion layer selection
   - evidence honesty
   - formatting or delivery
   - missing growth opportunity
   - missing boundary statement
5. Update the matching fixture or skill instructions.
6. Re-run `python3 scripts/validate_bundle.py`.
7. Record what changed.

## Rule

If the same mistake appears twice, it should no longer live only in chat. It
must become:

- an eval fixture,
- a routing rule,
- a conversion-layer rule,
- or a delivery-template rule.
