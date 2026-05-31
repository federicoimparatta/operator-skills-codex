# [Nombre de la feature]

**Owner:** Nombre y rol. Una sola persona.
**Estado:** Draft, en revisión, aprobado, en construcción, entregado, pausado, descartado.
**Última actualización:** Fecha.
**Fecha objetivo:** Fecha o trimestre. Si no se sabe, decirlo.

---

## Problema

Párrafo breve que responda:

- Quién lo siente. Un tipo de usuario específico.
- Cuándo lo siente. Un momento, una frecuencia, un trigger.
- Qué hace hoy. El workaround o la resignación.
- Qué cuesta. Tiempo, ingresos, churn, carga de soporte, o un gap estratégico.

## Hipótesis

Una oración:

> Si entregamos **X** a **usuario Y**, esperamos que **métrica Z** se mueva **aproximadamente W**, porque **razón R**.

## Evidencia

Qué sabemos y cómo lo sabemos.

- Entrevistas, encuestas, grabaciones de sesión.
- Dashboards y queries, con link.
- Experimentos previos y sus resultados.
- Tickets de soporte u objeciones de ventas.

Marcar cada punto como **validado** o **inferido**.

## Usuarios y personas

Para quién es esto, en orden de importancia. Incluir tamaño del segmento cuando se conozca. Incluir actores adyacentes solo si afectan a la feature: aprobador, observador, consumidor del output.

## Alcance

### Incluido

Cambios que el usuario puede notar. Expresados como "el usuario puede", "el sistema hace", "el admin ve".

### Excluido

Lo que decidimos no hacer ahora, con una línea de justificación por item.

### Nunca

Lo que creemos que está mal para esta feature, no solamente despriorizado.

## Flujos de usuario

Un flujo por escenario principal. Describir la secuencia como acciones del usuario y respuestas del sistema. Incluir los caminos infelices que importan: estado vacío, permiso denegado, fallo de red, edición concurrente.

## Criterios de aceptación

Lista numerada. Cada item es observable por el usuario. "El usuario recibe un email dentro de los 5 minutos del evento X" es un criterio. Las notas de implementación van más abajo, no acá.

1. Criterio.
2. Criterio.

## Instrumentación

Escrita antes de que la feature salga.

- **Eventos.** Nombres y cuándo se disparan.
- **Propiedades.** Qué carga cada evento.
- **Funnels.** Qué secuencia agrega qué.
- **Dashboard.** Dónde se ve el resultado y quién lo opera.

Si la taxonomía analítica todavía no existe, escribirla acá o linkear a su PRD.

## Dependencias y supuestos

- Servicios upstream, fuentes de datos, o equipos de los que dependemos.
- Supuestos sobre volumen, latencia, permisos, o comportamiento de usuario.

Marcar cada supuesto como **verificado** o **no verificado**.

## Plan de rollout

- **Audiencia.** Quién lo ve primero. Porcentaje, cohorte, o lista explícita.
- **Feature flag.** Nombre y estado por defecto.
- **Schedule de ramp.** Fechas o gates concretos.
- **Reversibilidad.** Cómo lo apagamos. Tiempo estimado para deshabilitarlo.
- **Comunicación.** Quién avisa a los usuarios. Qué se les dice. Cuándo.

## Criterios de kill

- Qué nos haría hacer rollback.
- Qué nos haría pausar y repensar.
- Cuánto esperamos antes de chequear.

## Preguntas abiertas

Cada una con responsable y deadline.

- Pregunta 1. Responsable. Deadline.
- Pregunta 2. Responsable. Deadline.

## Anexo

Links a versiones previas, notas de discovery, diagramas de arquitectura, threads legales o de compliance, y cualquier contexto que no entre arriba.
