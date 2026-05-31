# Plan de migración: [origen] a [destino]

**Owner:** Nombre y rol.
**Aprobador:** Quién firma el cutover.
**Última actualización:** Fecha.
**Fecha de cutover objetivo:** Fecha y hora, con zona horaria.

---

## 1. Límite

- **Sistema origen.** Nombre, dueño, versión, particularidades conocidas.
- **Sistema destino.** Nombre, dueño, versión, particularidades conocidas.
- **En alcance.** Dominios, módulos, rangos de datos, segmentos de usuario.
- **Fuera de alcance.** Qué queda en origen, de forma permanente o temporal.
- **Ventana de dual-run.** Sí o no. Si es sí, por cuánto tiempo y por qué.

## 2. Inventario

Ver `parity-matrix.md`. Resumen acá:

- Objetos a migrar tal cual: cantidad.
- Objetos a transformar: cantidad.
- Objetos a descartar: cantidad.
- Objetos en park: cantidad.

## 3. Decisiones transversales

Un párrafo por decisión.

- **Identidad.** Cómo se traducen los IDs de usuario, cuenta, y entidad.
- **Timestamps.** Estrategia de zona horaria.
- **Enums.** Estrategia de mapeo para listas cerradas.
- **Nulls y faltantes.** Cómo se representa la data faltante del origen en el destino.
- **PII y acceso.** Reautenticación, reconsentimiento, retención.
- **Soft-deletes.** Si se mueven y cómo se representan.

## 4. Runbook de cutover

Pasos numerados.

| Paso | Acción | Responsable | Duración esperada | Abortar si |
|---|---|---|---|---|
| 1 | Freeze de escrituras en origen para módulo X. | Nombre | 5 min | Origen sigue aceptando escrituras después de 10 min. |
| 2 | Correr copia bulk. | Nombre | 90 min | Tasa de error por encima del 0.5%. |
| 3 | Correr copia delta. | Nombre | 15 min | El delta crece en vez de bajar. |
| 4 | Correr suite de verificación. | Nombre | 10 min | Cualquier check falla. |
| 5 | Cambiar routing o DNS o flag. | Nombre | 2 min | La verificación no pasó. |
| 6 | Monitorear error y latencia. | Nombre | 30 min | Tasa de error supera el umbral definido. |

## 5. Runbook de rollback

- **Ventana de rollback.** Cuánto tiempo después del cutover sigue siendo posible.
- **Trigger de rollback.** Señales explícitas que disparan el rollback.
- **Pasos.** Numerados, igual que el runbook de cutover.
- **Reconciliación de datos.** Cómo se manejan las escrituras que cayeron en destino durante el cutover parcial.
- **Comunicación.** Qué escuchan los usuarios.

## 6. Criterios de éxito

- **Paridad funcional.** Lista de flujos o reportes que tienen que coincidir, con tolerancia.
- **Paridad de datos.** Counts, sumas, spot-checks.
- **Performance.** Latencia, tasa de error, throughput.
- **Métricas de negocio.** Revenue, activación, retención, con umbrales para la ventana de cutover.
- **Sign-off.** Persona nombrada que certifica el éxito.

## 7. Cola larga

- **Fase de dual-read.** Alcance y duración.
- **Deprecación del origen.** Cuándo pasa a read-only, luego a archivado, luego a borrado.
- **Estrategia de archivo.** Dónde vive la data del origen por compliance o referencia.
- **Entrenamiento y soporte.** Qué necesitan los usuarios internos y los equipos de soporte.

## 8. Plan de comunicación

- **Pre-cutover.** Audiencia, canal, mensaje, timing.
- **Durante el cutover.** Status page, canal de incidente, responsable de comms.
- **Post-cutover.** Audiencia, canal, mensaje.
- **Rollback, si se dispara.** Qué se dice, por quién.

## 9. Riesgos

- Riesgo. Probabilidad. Impacto. Mitigación. Responsable.
- Riesgo. Probabilidad. Impacto. Mitigación. Responsable.
