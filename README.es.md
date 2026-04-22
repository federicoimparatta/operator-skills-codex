[Read in English](README.md)

---

# operator-skills

Skills de Claude para builders y operadores. Especificación de producto, scoping de delivery, análisis técnico y workflows operativos. Método antes que voz. Estructura antes que estilo.

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

- **[prd-authoring](product/prd-authoring)**. Escribir un PRD como hipótesis, no como spec. Problema, usuario, alcance, criterios de aceptación, rollout, instrumentación, preguntas abiertas.
- **[feature-proposal](product/feature-proposal)**. Proponer una feature antes del scoping. Framing del problema, dirección propuesta, impacto esperado, costo de validación.
- **[analytics-instrumentation](product/analytics-instrumentation)**. Taxonomía de eventos, convenciones de naming, definiciones de funnel, e instrumentación desde cero.
- **[ux-audit](product/ux-audit)**. Método de auditoría heurística que produce tickets accionables ranqueados por severidad y superficie.
- **[roadmap-from-data](product/roadmap-from-data)**. Convertir dashboards y comportamiento de usuario en una secuencia priorizada. Evitar el teatro del backlog.

### delivery

- **[proposal-scoping](delivery/proposal-scoping)**. Scoping de trabajo de desarrollo custom. Fases, modelo comercial, alcance dentro y fuera de manera explícita.
- **[migration-spec](delivery/migration-spec)**. Método de migración entre plataformas. Inventario, matriz de paridad, cutover, rollback.
- **[dashboard-spec](delivery/dashboard-spec)**. Especificación de herramientas internas y dashboards de admin. Modelo de datos, vistas, roles, estados, manejo de vacío y error.
- **[rfp-response](delivery/rfp-response)**. Respuesta estructurada a RFPs gubernamentales y empresariales. Matriz de cumplimiento, enfoque técnico, equipo, precio.
- **[security-questionnaire](delivery/security-questionnaire)**. Responder cuestionarios de seguridad de proveedores sin sobrevender.

### analysis

- **[data-reconciliation](analysis/data-reconciliation)**. Cuando dos fuentes no cierran, encontrar la diferencia. Schema, ventana temporal, definición, muestreo, causa raíz.
- **[red-team-review](analysis/red-team-review)**. Revisión adversarial de propuestas, arquitecturas, sistemas de agentes. Modos de falla estructurados, no intuiciones.
- **[candidate-evaluation](analysis/candidate-evaluation)**. Evaluar un candidato contra una rúbrica de juicio, entrega, profundidad, ownership, soltura frente al error, comunicación.
- **[vendor-evaluation](analysis/vendor-evaluation)**. Evaluar un proveedor por riesgo de entrega, precio justo, fit de stack, términos comerciales, referencias, costo de switching.
- **[post-mortem](analysis/post-mortem)**. Método retrospectivo para trabajo entregado, trabajo fallido, o incidentes. Línea de tiempo, factores contribuyentes, action items, sin culpables.

### ops

- **[agenda-synthesis](ops/agenda-synthesis)**. Sintetizar una agenda diaria o semanal a través de calendarios y organizaciones.
- **[ticket-triage](ops/ticket-triage)**. Triage en Linear y Jira. Categorización, secuenciado, y cuándo rechazar.
- **[documentation-extraction](ops/documentation-extraction)**. Convertir tickets cerrados, threads y conversaciones en documentación funcional.
- **[meeting-prep](ops/meeting-prep)**. Briefing antes de una reunión. Stakeholders, historia, outcome deseado, objeciones, movida de apertura.

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

Estos skills están pensados para [Claude Code](https://claude.com/claude-code), pero el método y los templates son agnósticos respecto a la herramienta.

### Claude Code

Cloná el repo en el directorio `.claude/skills/` de tu proyecto, o referenciá skills individuales directamente:

```bash
git clone https://github.com/federicoimparatta/operator-skills.git ~/operator-skills
```

Después, cualquiera de estas dos opciones:

- **Por proyecto.** Symlink o copia los skills que querés dentro de `.claude/skills/` en un proyecto específico.
- **Global.** Symlink o copia dentro de `~/.claude/skills/` para tenerlos disponibles en todos los proyectos.

Cada skill es una carpeta con un `SKILL.md` que Claude Code carga bajo demanda.

### Otras herramientas

Los templates en cada carpeta `templates/` son markdown plano. Usalos con cualquier asistente, o con ninguno.

## Contribuir

Ver [`CONTRIBUTING.es.md`](CONTRIBUTING.es.md).

## Créditos

Extraído de *Manual de ataraxia digital: imperturbabilidad entre tanto scrum* (Federico Imparatta, Montevideo, 2025). Más de 10.000 copias vendidas en castellano.

## Licencia

MIT. Ver [`LICENSE`](LICENSE).
