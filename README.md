[Leer en español](README.es.md)

---

# operator-skills-codex

Codex skills for builders and operators. Product specification, delivery scoping, technical analysis, and operational workflows. Method over voice. Structure over style.

Built from the method behind *Manual de ataraxia digital: imperturbabilidad entre tanto scrum* by Federico Imparatta (Montevideo, 2025). The handbook provides the philosophy; these skills are its operational expression.

## Principles

- **Self-contained.** Every skill is a standalone unit with its own voice rules and templates. No shared imports between skills.
- **Bilingual.** Every template ships in English and Rioplatense Spanish.
- **Templates and rules only.** No real examples, no leaked client content, no redacted artifacts.
- **Method over voice.** These skills work regardless of the operator's own tone.
- **Philosophy-anchored.** Every skill names the concepts it operationalizes.

## Philosophy

See [`PHILOSOPHY.md`](PHILOSOPHY.md) for the ten core concepts that shape every skill in this repo.

## Skills

### product

- **[prd-authoring](prd-authoring)**. Write a PRD as a hypothesis, not a spec. Problem, user, scope, acceptance criteria, rollout, instrumentation, open questions.
- **[feature-proposal](feature-proposal)**. Pitch a feature before scoping. Problem framing, proposed direction, expected impact, cost to validate.
- **[analytics-instrumentation](analytics-instrumentation)**. Event taxonomy, naming conventions, funnel definitions, and instrumentation from scratch.
- **[ux-audit](ux-audit)**. Heuristic audit method that produces actionable tickets ranked by severity and surface area.
- **[roadmap-from-data](roadmap-from-data)**. Convert dashboards and user behavior into a prioritized sequence. Avoid backlog theater.

### delivery

- **[proposal-scoping](proposal-scoping)**. Scope custom dev work. Phases, commercial model, explicit in-scope and out-of-scope.
- **[migration-spec](migration-spec)**. Platform-to-platform migration method. Inventory, parity matrix, cutover, rollback.
- **[dashboard-spec](dashboard-spec)**. Specify internal tools and admin dashboards. Data model, views, roles, states, empty and error handling.
- **[rfp-response](rfp-response)**. Structured response to government and enterprise RFPs. Compliance matrix, technical approach, team, pricing.
- **[security-questionnaire](security-questionnaire)**. Answer vendor security assessments without overclaiming.

### analysis

- **[data-reconciliation](data-reconciliation)**. When two sources disagree, find the gap. Schema, time window, definition, sampling, root cause.
- **[red-team-review](red-team-review)**. Adversarial review of proposals, architectures, agent systems. Structured failure modes, not vibes.
- **[candidate-evaluation](candidate-evaluation)**. Score a candidate against a rubric of judgment, delivery, depth, ownership, failure fluency, communication.
- **[vendor-evaluation](vendor-evaluation)**. Score a vendor on delivery risk, pricing fairness, stack fit, commercial terms, references, switching cost.
- **[post-mortem](post-mortem)**. Retrospective method for shipped work, failed work, or incidents. Timeline, contributing factors, action items, no blame.

### ops

- **[agenda-synthesis](agenda-synthesis)**. Synthesize a daily or weekly agenda across calendars and orgs.
- **[ticket-triage](ticket-triage)**. Linear and Jira triage. Categorization, sequencing, and when to decline.
- **[documentation-extraction](documentation-extraction)**. Turn closed tickets, threads, and conversations into functional docs.
- **[meeting-prep](meeting-prep)**. Briefing before a meeting. Stakeholders, history, desired outcome, objections, opening move.

## Voice rules

Every skill in this repo applies the same voice rules. They are the through-line.

- No buzzwords: leverage, empower, synergy, resonate, tapestry, delve, elevate, captivate, explore, dynamic, testament.
- No em dashes.
- No filler openings.
- Decision-oriented over descriptive.
- High-context, no overexplaining.
- Standard sentence case for formal outputs.
- ES outputs match the register of the handbook: direct, self-aware, no reverence for process, comfortable naming failure.
- EN outputs use direct US business register. Do not soften bluntness into corporate-speak.
- Language switches based on audience, not author.

## Installing

These skills are designed for Codex, but the method and templates are tool-agnostic.

### Codex

Clone the repository anywhere, then symlink or copy the skill directories into `~/.codex/skills/`:

```bash
git clone https://github.com/federicoimparatta/operator-skills-codex.git ~/operator-skills-codex
```

Then either:

- **Selected skills.** Symlink or copy only the skills you want into `~/.codex/skills/`.
- **All skills.** Symlink or copy every top-level skill directory into `~/.codex/skills/`.

Or install all skills with:

```bash
~/operator-skills-codex/bootstrap.sh
```

Each skill is a folder with a `SKILL.md` that Codex loads on demand.

### Other tools

The templates in each `templates/` folder are plain markdown. Use them with any assistant or none.

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Credits

Drawn from *Manual de ataraxia digital: imperturbabilidad entre tanto scrum* (Federico Imparatta, Montevideo, 2025). Over 10,000 copies sold in Spanish.

## License

MIT. See [`LICENSE`](LICENSE).
