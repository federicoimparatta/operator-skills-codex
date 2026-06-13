# Root-cause tree

From the symptom "two sources disagree on a number" down to a named root-cause class. Walk the questions in order. The first one that answers "no" or "different" usually points at the class. Each class has a confirming test. Do not stop at the first plausible answer. Run the test.

Symptom: Source A reports X, Source B reports Y, X != Y, both claim to measure the same metric over the same window.

---

## Q1. Do both sources count the same kind of row?

Compare the grain. One row per what: user, account, event, line item, invoice.

- If the grains differ, this is a **schema mismatch**.
- Test: count distinct on the primary key of each side. If A is rows and B is distinct users, the totals cannot tie. Confirm by aggregating A to B's grain and re-comparing.

## Q2. Does the same field name mean the same thing on both sides?

Compare semantics and units, not just column names. Dollars vs cents. Status string vs status code. `created_at` of the order vs of the payment.

- If a shared name carries a different meaning or unit, this is a **schema mismatch** (definitional sub-case at the column level).
- Test: pull the raw value of the disputed field for one known record from each side and read them next to each other. They will not match.

## Q3. Do both sides use the exact same time predicate?

Write out the literal start and end timestamps and the inclusive/exclusive endpoints each side uses.

- If the windows differ, this is a **time-window mismatch**.
- Test: re-run both sides with one explicit, identical predicate (`>= start AND < end`). If they converge, the window was the cause.

## Q4. Are both sides in the same timezone?

Check whether one side stores or filters in UTC and the other in local time.

- If they differ, this is a **timezone** mismatch.
- Test: shift one side by the offset and re-compare. A gap that equals roughly one boundary day's volume, or that moves with the offset, confirms it.

## Q5. Was the data complete at the time each side was read?

Check the cutoff: when each source was queried, and how long events take to arrive after they happen.

- If one side was read before late rows landed, this is **late-arriving data**.
- Test: re-run the older query now. If its total has since risen toward the other side, the gap was ingestion lag, not definition.

## Q6. Do both sides apply the same filters and qualifying rules?

Write the plain-language definition each side implements. Hunt for implicit filters: test-account exclusion, is-paying flags, soft-deletes, default dashboard filters, role scoping.

- If the qualifying logic differs, this is a **definition mismatch**.
- Test: add the suspected filter to the side that lacks it (or remove it from the side that has it) and re-compare. Convergence names the filter.

## Q7. Does each side handle duplicates the same way?

Check what happens with double-fires, retries, and reprocessed rows: does one side `count(*)` where the other does `count(distinct)`.

- If dedup differs, this is a **sampling/dedup difference**.
- Test: on the higher side, count rows minus distinct keys. If that delta equals the gap, the higher side is double-counting. Also confirm neither side is sampling (a sampled source scaled by a rate will not tie exactly to a full scan).

## Q8. Does a join multiply rows on either side?

If either query joins to a table with more than one matching row per key, the measure column gets counted multiple times.

- If a join expands rows, this is **join fan-out**.
- Test: count rows before and after the join on the suspect side. If the count grows, the join is one-to-many. Confirm by checking whether the inflated total is a near-integer multiple, or by deduplicating before the aggregate.

---

## Order of cheapness

Run them roughly in this order, cheapest test first: Q3 and Q4 (rewrite the predicate), Q5 (re-run the old query), Q1 and Q2 (one-record inspection), Q6 (add one filter), Q7 and Q8 (row-vs-distinct counts). Most disagreements resolve before Q6.
