# Checklist de modos de falla

Un recorrido sistemático que hace el revisor durante la revisión. No es un deliverable. Los hallazgos se trasladan desde acá al `review-report.md`.

---

## Corrección y lógica

- [ ] Errores off-by-one.
- [ ] Casos borde faltantes en los límites.
- [ ] Máquinas de estado con estados inalcanzables o pegajosos.
- [ ] Supuestos sobre ordenamiento.
- [ ] Supuestos sobre idempotencia.

## Concurrencia

- [ ] Race conditions sobre estado compartido.
- [ ] Double-submit en acciones de usuario.
- [ ] Retry amplification sobre errores transitorios.
- [ ] Deadlocks o starvation.
- [ ] Clock skew entre nodos.

## Input adversarial

- [ ] Input malformado aceptado.
- [ ] Input oversize aceptado.
- [ ] Inyección: SQL, shell, prompt, template.
- [ ] Path traversal.
- [ ] Trucos de encoding.
- [ ] Rate limits bypasseables.

## Límites de confianza

- [ ] Data cruzando de zona no confiable a confiable sin validar.
- [ ] Rutas de privilege escalation.
- [ ] Chequeos de autorización faltantes o inconsistentes.
- [ ] Confianza implícita entre servicios.

## Específico de agentes y LLMs

- [ ] Prompt injection vía contenido de usuario o documentos.
- [ ] Uso incorrecto de tools: tool equivocada para el input.
- [ ] Context smuggling vía contexto largo.
- [ ] Jailbreaks vía manipulación de rol.
- [ ] Tool calls o IDs alucinados.
- [ ] Loops infinitos.
- [ ] Sobre-delegación al modelo de autoridad que no debería tener.

## Modelo de costos

- [ ] Costo por request acotado.
- [ ] Efectos de vecino ruidoso sobre recursos compartidos.
- [ ] Formas de inflar uso sin valor.
- [ ] Formas de saturar concurrencia.

## Blast radius

- [ ] Cuando esto falla, qué más falla.
- [ ] Contención de falla por región.
- [ ] Aislamiento de tenant en falla.
- [ ] Contención por clase de dato.

## Observabilidad

- [ ] Cada modo de falla tiene una señal.
- [ ] La señal cae en un dashboard con un responsable.
- [ ] La señal es alertable, no solamente graficable.

## Rollback y recuperación

- [ ] Existe camino de rollback.
- [ ] El rollback está testeado.
- [ ] El tiempo de recuperación está medido o estimado.
- [ ] Las fallas parciales recuperan limpias.

## Operacional

- [ ] Runbook para cada falla probable.
- [ ] On-call sabe dónde mirar.
- [ ] Riesgo de key-person identificado.
- [ ] El ownership de cada superficie está escrito.

## Compliance y legal

- [ ] Exposición regulatoria en los modos de falla.
- [ ] Data residency respetada.
- [ ] El audit log sobrevive a la falla.

## Social y humano

- [ ] Plan de comunicación al usuario ante falla.
- [ ] Exposición y carga de soporte.
- [ ] Consecuencias de confianza después de la recuperación.
