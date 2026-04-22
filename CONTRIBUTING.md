[Leer en español](CONTRIBUTING.es.md)

---

# Contributing

Contributions are welcome. Read this first, then open a PR.

## What belongs here

A skill belongs in this repo if:

1. It produces an artifact or executes a method that operators and builders use regularly.
2. It can be expressed as structure plus rules, not as a pile of prose.
3. It holds up in both English and Rioplatense Spanish.
4. It connects to at least one concept in [`PHILOSOPHY.md`](PHILOSOPHY.md).

What does not belong: voice-imitation skills, writing skills that depend on a specific author's tone, anything that leaks real client or company names.

## Skill anatomy

```
skill-name/
├── SKILL.md
└── templates/
    ├── en/
    │   └── template-name.md
    └── es/
        └── template-name.md
```

Optional, only when justified:

- `references/` for rubrics, schemas, or long reference material that does not fit in `SKILL.md`.
- `scripts/` for deterministic code.

## SKILL.md structure

Every `SKILL.md` follows the same anatomy:

```markdown
---
name: skill-name
description: Third-person, pushy description with trigger phrases. States what this skill produces and when it should be reached for. Max 1024 chars.
---

# Skill Name

> **Anchor:** One-line philosophy anchor from the handbook, phrased as a principle.

## When to use
Concrete triggers and anti-triggers.

## Philosophy (only if this is a high-philosophy skill)
50 to 150 words connecting this skill to specific handbook concepts.

## Voice rules (apply to all outputs)
[Full voice rules block, duplicated verbatim in every skill.]

## Bilingual handling
[How this skill behaves in ES vs EN.]

## Method
The actual structure, steps, or rubric.

## Templates
Links to templates/en/*.md and templates/es/*.md.

## Anti-patterns
What this skill must never produce.

## Checklist before delivery
Short pre-output self-check.
```

## Voice rules (do not modify)

Every skill in this repo applies the same voice rules. Duplication across skills is intentional.

- No buzzwords: leverage, empower, synergy, resonate, tapestry, delve, elevate, captivate, explore, dynamic, testament.
- No em dashes.
- No filler openings.
- Decision-oriented over descriptive.
- High-context, no overexplaining.
- Standard sentence case for formal outputs.
- ES outputs match the register of the handbook: direct, self-aware, no reverence for process, comfortable naming failure.
- EN outputs use direct US business register.
- Language switches based on audience, not author.

## Templates

Every skill ships with at least one template in `templates/en/` and one in `templates/es/`. Templates are plain markdown. No placeholders made of brackets only: always explain what goes in each field with one short sentence of guidance.

## Naming

- Lowercase, hyphens only.
- Max 64 characters.
- No reserved words.

## Philosophy integration

Most skills only need the one-line **Anchor** under the title.

Skills that operationalize multiple philosophy concepts include an embedded **Philosophy** section (50 to 150 words) naming the concepts. These are currently: `prd-authoring`, `feature-proposal`, `roadmap-from-data`, `post-mortem`, `candidate-evaluation`, `ux-audit`.

## Checklist before opening a PR

- [ ] Skill is self-contained. No imports from outside its own folder.
- [ ] Voice rules block matches the canonical block above, verbatim.
- [ ] At least one ES template and one EN template.
- [ ] No real company or client names anywhere in the skill.
- [ ] YAML frontmatter description is pushy and includes trigger phrases.
- [ ] SKILL.md body is under 500 lines. Move long reference material to `references/`.
- [ ] Anti-patterns section lists at least three failure modes.
- [ ] README skills index updated.

## Issues and questions

Open an issue before a large PR. Small fixes can go straight to PR.
