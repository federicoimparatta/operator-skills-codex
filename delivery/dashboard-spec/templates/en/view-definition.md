# View: [V-ID] [name]

**Part of dashboard:** Link.
**Owner:** Name.
**Last updated:** Date.

---

## Question

The single question this view answers, in plain language.

## Data

- **Source.** Table or API.
- **Freshness.** How old the data can be before the answer is wrong.
- **Filter default.** The filter state the user sees on first load.
- **Cardinality.** Typical and maximum row count.

## Layout

- **Primary element.** Table, chart, card, or composite.
- **Columns or axes.** For each, what it shows and how it is sorted by default.
- **Filters.** Which filters are exposed. Where they sit.
- **Time control.** Default window and allowed ranges.
- **Drill-down.** What happens when a row or point is clicked.
- **Export.** CSV, copy link, none.

## States

- **Loading.** Exact UI behavior.
- **Empty.** Copy and suggested next step for the user.
- **Error.** Copy, retry option, contact.
- **Partial data.** Which source failed and how the view degrades.
- **Permission denied.** What is shown.
- **Large dataset.** Pagination, sampling, or warning behavior.

## Actions

If the view allows writes:

- **Action name.** What it does.
- **Confirmation.** What the user sees before the action fires.
- **Audit.** What is logged.
- **Reversibility.** Can it be undone, and how.

## Metrics definition

For each metric displayed:

- **Name.**
- **Plain-language definition.**
- **Formula.**
- **Caveats.** Nulls, ties, inclusions, exclusions.

## Edge cases

Specific conditions worth calling out.

- Condition. Expected behavior.
