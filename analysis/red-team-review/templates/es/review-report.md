# Revisión de red team: [objetivo]

**Revisor:** Nombre y rol.
**Versión del objetivo:** Versión o commit.
**Responsable del objetivo:** Nombre de la persona que va a decidir sobre los hallazgos.
**Fecha:** Fecha.

---

## 1. Alcance y en juego

- **Objetivo.** Qué se está revisando.
- **Versión.** Específica.
- **En alcance.** Componentes, comportamientos, interacciones.
- **Fuera de alcance.** Qué no se toca.
- **En juego.** Qué posee este objetivo si se entrega.

## 2. Supuestos en los que se apoya el objetivo

- Supuesto sobre el usuario.
- Supuesto operativo.
- Supuesto ambiental.
- Supuesto de confianza.
- Supuesto upstream.

Cada supuesto es un hallazgo candidato o un límite que la revisión no va a cuestionar.

## 3. Hallazgos principales (cambian la decisión)

Los tres hallazgos con más probabilidad de cambiar la decisión, en detalle.

### F-01. [Título corto]

- **Severidad.** Crítica.
- **Probabilidad.** Alta.
- **Clase.** Riesgo estructural o bug.
- **Cómo rompe.** Secuencia o condición específica.
- **Por qué rompe.** Supuesto subyacente.
- **Qué pasa después.** Consecuencia. Blast radius.
- **Defensas actuales.** Qué hace ya el diseño.
- **Por qué las defensas alcanzan o no alcanzan.**
- **Acción propuesta.** Fix, mitigar, aceptar, o monitorear. Responsable. Rango de esfuerzo.

### F-02. […]

### F-03. […]

## 4. Otros hallazgos

Ordenados por severidad, después por probabilidad.

### F-04. [Título corto]

Misma estructura que arriba.

### F-05. […]

## 5. Clases sin hallazgo

Clases recorridas sin hallazgo digno de mención. Una línea cada una.

- Corrección y lógica. Sin hallazgo.
- Concurrencia. Sin hallazgo.
- Compliance y legal. Sin hallazgo.

## 6. Decisión recomendada

Un párrafo. Qué debería hacer el decisor, basado en los hallazgos.

- Entregar tal como está.
- Entregar con las mitigaciones nombradas en F-XX.
- Rediseñar el subsistema específico nombrado en F-XX.
- No entregar.

## 7. Anexos

- Documentos fuente revisados.
- Notas de entrevistas, si las hay.
- Revisiones previas de sistemas adyacentes.
