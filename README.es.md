[Read in English](README.md)

---

# operator-skills-codex

Skills de Codex para builders y operadores. Especificación de producto, scoping de delivery, análisis técnico y workflows operativos. Método antes que voz. Estructura antes que estilo.

Construido a partir del método detrás de *Manual de ataraxia digital: imperturbabilidad entre tanto scrum* de Federico Imparatta (Montevideo, 2025). El manual aporta la filosofía; estos skills son su expresión operativa.

## Principios

- **Self-contained.** Cada skill es una unidad autónoma con sus propias voice rules y templates. Ningún skill importa desde otro.
- **Bilingüe.** Cada template viene en inglés y en castellano rioplatense.
- **Solo templates y reglas.** Sin ejemplos reales, sin contenido de clientes filtrado, sin artefactos censurados.
- **Método antes que voz.** Estos skills funcionan independientemente del tono personal del operador.
- **Anclados en la filosofía.** Cada skill nombra los conceptos que operacionaliza.

## Filosofía

Ver [`PHILOSOPHY.es.md`](PHILOSOPHY.es.md) para los diez conceptos centrales que dan forma a cada skill del repo.

## Skills

### product

- **[prd-authoring](prd-authoring)**. Escribir un PRD como hipótesis, no como spec. Problema, usuario, alcance, criterios de aceptación, rollout, instrumentación, preguntas abiertas.
- **[feature-proposal](feature-proposal)**. Proponer una feature antes del scoping. Framing del problema, dirección propuesta, impacto esperado, costo de validación.
- **[analytics-instrumentation](analytics-instrumentation)**. Taxonomía de eventos, convenciones de naming, definiciones de funnel, e instrumentación desde cero.
- **[ux-audit](ux-audit)**. Método de auditoría heurística que produce tickets accionables ranqueados por severidad y superficie.
- **[roadmap-from-data](roadmap-from-data)**. Convertir dashboards y comportamiento de usuario en una secuencia priorizada. Evitar el teatro del backlog.

### delivery

- **[proposal-scoping](proposal-scoping)**. Scoping de trabajo de desarrollo custom. Fases, modelo comercial, alcance dentro y fuera de manera explícita.
- **[migration-spec](migration-spec)**. Método de migración entre plataformas. Inventario, matriz de paridad, cutover, rollback.
- **[dashboard-spec](dashboard-spec)**. Especificación de herramientas internas y dashboards de admin. Modelo de datos, vistas, roles, estados, manejo de vacío y error.
- **[rfp-response](rfp-response)**. Respuesta estructurada a RFPs gubernamentales y empresariales. Matriz de cumplimiento, enfoque técnico, equipo, precio.
- **[security-questionnaire](security-questionnaire)**. Responder cuestionarios de seguridad de proveedores sin sobrevender.

### analysis

- **[data-reconciliation](data-reconciliation)**. Cuando dos fuentes no cierran, encontrar la diferencia. Schema, ventana temporal, definición, muestreo, causa raíz.
- **[red-team-review](red-team-review)**. Revisión adversarial de propuestas, arquitecturas, sistemas de agentes. Modos de falla estructurados, no intuiciones.
- **[candidate-evaluation](candidate-evaluation)**. Evaluar un candidato contra una rúbrica de juicio, entrega, profundidad, ownership, soltura frente al error, comunicación.
- **[vendor-evaluation](vendor-evaluation)**. Evaluar un proveedor por riesgo de entrega, precio justo, fit de stack, términos comerciales, referencias, costo de switching.
- **[post-mortem](post-mortem)**. Método retrospectivo para trabajo entregado, trabajo fallido, o incidentes. Línea de tiempo, factores contribuyentes, action items, sin culpables.

### ops

- **[agenda-synthesis](agenda-synthesis)**. Sintetizar una agenda diaria o semanal a través de calendarios y organizaciones.
- **[ticket-triage](ticket-triage)**. Triage en Linear y Jira. Categorización, secuenciado, y cuándo rechazar.
- **[documentation-extraction](documentation-extraction)**. Convertir tickets cerrados, threads y conversaciones en documentación funcional.
- **[meeting-prep](meeting-prep)**. Briefing antes de una reunión. Stakeholders, historia, outcome deseado, objeciones, movida de apertura.

## Voice rules

Cada skill del repo aplica las mismas voice rules. Son el hilo conductor.

- Sin buzzwords: leverage, empower, synergy, resonate, tapestry, delve, elevate, captivate, explore, dynamic, testament.
- Sin em dashes.
- Sin aperturas de relleno.
- Orientación a decisiones por encima de descripción.
- Alto contexto, sin sobreexplicar.
- Sentence case estándar para outputs formales.
- Los outputs en castellano usan el registro del manual: directo, autoconsciente, sin reverencia por el proceso, cómodo nombrando el fracaso.
- Los outputs en inglés usan registro business directo de EE.UU. No suavizar la bluntness hacia corporate-speak.
- La elección de idioma se define por la audiencia, no por el autor.

## Instalación

Estos skills están pensados para Codex, pero el método y los templates son agnósticos respecto a la herramienta.

### Codex

Cloná el repo donde prefieras, y después hacé symlink o copia de los directorios de skills dentro de `~/.codex/skills/`:

```bash
git clone https://github.com/federicoimparatta/operator-skills-codex.git ~/operator-skills-codex
```

Después, cualquiera de estas dos opciones:

- **Skills seleccionados.** Symlink o copia solo los skills que querés dentro de `~/.codex/skills/`.
- **Todos los skills.** Symlink o copia todos los directorios top-level de skills dentro de `~/.codex/skills/`.

O instalá todos los skills con:

```bash
~/operator-skills-codex/bootstrap.sh
```

Cada skill es una carpeta con un `SKILL.md` que Codex carga bajo demanda.

### Otras herramientas

Los templates en cada carpeta `templates/` son markdown plano. Usalos con cualquier asistente, o con ninguno.

## Contribuir

Ver [`CONTRIBUTING.es.md`](CONTRIBUTING.es.md).

## Créditos

Extraído de *Manual de ataraxia digital: imperturbabilidad entre tanto scrum* (Federico Imparatta, Montevideo, 2025). Más de 10.000 copias vendidas en castellano.

## Licencia

MIT. Ver [`LICENSE`](LICENSE).
