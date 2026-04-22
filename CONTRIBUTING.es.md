[Read in English](CONTRIBUTING.md)

---

# Contribuir

Las contribuciones son bienvenidas. Leé esto primero, después abrí un PR.

## Qué corresponde

Un skill entra en este repo si:

1. Produce un artefacto o ejecuta un método que los operadores y builders usan con regularidad.
2. Se puede expresar como estructura y reglas, no como un bloque de prosa.
3. Aguanta tanto en inglés como en castellano rioplatense.
4. Conecta con al menos un concepto de [`PHILOSOPHY.es.md`](PHILOSOPHY.es.md).

Qué no corresponde: skills de imitación de voz, skills de escritura atados al tono de un autor específico, cualquier cosa que filtre nombres reales de clientes o compañías.

## Anatomía de un skill

```
skill-name/
├── SKILL.md
└── templates/
    ├── en/
    │   └── template-name.md
    └── es/
        └── template-name.md
```

Opcional, solo cuando se justifica:

- `references/` para rúbricas, schemas o material de referencia largo que no entra en `SKILL.md`.
- `scripts/` para código determinístico.

## Estructura de SKILL.md

Cada `SKILL.md` sigue la misma anatomía:

```markdown
---
name: skill-name
description: Descripción en tercera persona, insistente, con frases que disparan. Dice qué produce este skill y cuándo se debería invocar. Máximo 1024 caracteres.
---

# Skill Name

> **Anchor:** Una línea de filosofía del manual, expresada como principio.

## When to use
Triggers concretos y anti-triggers.

## Philosophy (solo si es un skill high-philosophy)
Entre 50 y 150 palabras conectando el skill con conceptos específicos del manual.

## Voice rules (apply to all outputs)
[Bloque completo de voice rules, duplicado literalmente en cada skill.]

## Bilingual handling
[Cómo se comporta este skill en ES vs. EN.]

## Method
La estructura, pasos, o rúbrica real.

## Templates
Links a templates/en/*.md y templates/es/*.md.

## Anti-patterns
Qué no debe producir este skill.

## Checklist before delivery
Chequeo breve antes de entregar.
```

## Voice rules (no modificar)

Cada skill del repo aplica las mismas voice rules. La duplicación entre skills es intencional.

- Sin buzzwords: leverage, empower, synergy, resonate, tapestry, delve, elevate, captivate, explore, dynamic, testament.
- Sin em dashes.
- Sin aperturas de relleno.
- Orientación a decisiones por encima de descripción.
- Alto contexto, sin sobreexplicar.
- Sentence case estándar para outputs formales.
- Los outputs en castellano usan el registro del manual: directo, autoconsciente, sin reverencia por el proceso, cómodo nombrando el fracaso.
- Los outputs en inglés usan registro business directo de EE.UU.
- La elección de idioma se define por la audiencia, no por el autor.

## Templates

Cada skill viene con al menos un template en `templates/en/` y otro en `templates/es/`. Los templates son markdown plano. Nada de placeholders solo con corchetes: siempre explicar qué va en cada campo con una oración breve de guía.

## Naming

- Todo en minúscula, solo guiones.
- Máximo 64 caracteres.
- Sin palabras reservadas.

## Integración de filosofía

La mayoría de los skills solo necesitan la línea **Anchor** debajo del título.

Los skills que operacionalizan varios conceptos de la filosofía incluyen una sección **Philosophy** embebida (entre 50 y 150 palabras) nombrando los conceptos. Actualmente son: `prd-authoring`, `feature-proposal`, `roadmap-from-data`, `post-mortem`, `candidate-evaluation`, `ux-audit`.

## Checklist antes de abrir un PR

- [ ] El skill es self-contained. No importa nada fuera de su propia carpeta.
- [ ] El bloque de voice rules coincide literalmente con el canónico de arriba.
- [ ] Al menos un template en ES y otro en EN.
- [ ] Ningún nombre real de compañía o cliente en el skill.
- [ ] La descripción en el YAML es insistente e incluye frases que disparan.
- [ ] El cuerpo del SKILL.md tiene menos de 500 líneas. Mover material de referencia largo a `references/`.
- [ ] La sección de anti-patterns lista al menos tres modos de falla.
- [ ] El índice de skills en el README actualizado.

## Issues y preguntas

Abrí un issue antes de un PR grande. Las fixes chicas pueden ir directo a PR.
