# Roadmap brief: [product area or portfolio]

**Owner:** Name and role.
**Window:** Quarter, half, or named horizon.
**Last updated:** Date.
**Next review:** Date.

---

## 1. Narrative

Two to four paragraphs. What we believe about this product based on the data. Which themes matter most and why. What we are deliberately not going after this window, and why.

## 2. Evidence

| Source | Measures | Freshness | Trust level | Known bias |
|---|---|---|---|---|
| Product analytics | Event flows, funnels | daily | high | mobile under-reported |
| Support tickets | Friction themes | weekly | medium | survivorship bias |
| Finance data | Revenue, margin | monthly close | high | cohort lag |
| Interview notes | Qualitative themes | rolling | medium | N=18, skewed to US |

## 3. Themes

One subsection per theme.

### T-01. [Theme name]

- **Problem.** One sentence.
- **Signals.**
  - Signal. Source.
  - Signal. Source.
  - Signal. Source.
- **Scale.** Users, revenue, frequency.
- **Current hypothesis.** What we believe is driving the signals.
- **Candidate bets.** `B-01`, `B-02`.

## 4. Bets

See `bet-card.md` for detailed per-bet cards. Summary table here:

| ID | Theme | Hypothesis summary | Impact | Uncertainty | Cost | Owner |
|---|---|---|---|---|---|---|
| B-01 | T-01 | Guided onboarding raises 7-day activation. | High | High | Low | PM-A |
| B-02 | T-02 | Per-tenant rate limits reduce noisy-neighbor churn. | Medium | Low | Medium | PM-B |
| B-03 | T-03 | Billing overview page drops support volume on invoice questions. | Low | Low | Low | PM-C |

## 5. Sequence

By team or by window.

### Team A

| Window | Bet | State | Kill check |
|---|---|---|---|
| Weeks 1 to 4 | B-01 (validation) | Committed | Week 3 |
| Weeks 5 to 10 | B-01 (build, if validated) | Conditional | Week 10 |
| Weeks 11 to 12 | Next theme pick | Open |  |

### Team B

| Window | Bet | State | Kill check |
|---|---|---|---|
| Weeks 1 to 8 | B-02 | Committed | Week 6 |
| Weeks 9 to 12 | B-03 | Committed | Week 12 |

## 6. Dependencies and risk distribution

- **Dependencies.** B-01 depends on analytics event X shipping by week 2.
- **Shared infra.** None.
- **Concentration check.** This window has one high-uncertainty bet and two low-uncertainty bets. Acceptable.

## 7. Review cadence

- **Cadence.** Monthly review with fresh data.
- **Trigger.** A validation fails. Support volume shifts category. Churn moves outside tolerance.
- **Owner.** Who decides the sequence change.
- **Communication.** Channel, audience, lead time.

## 8. Open questions

List with owner and deadline.

- Question. Owner. Deadline.
