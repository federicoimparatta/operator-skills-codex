# Vista: [V-ID] [nombre]

**Parte del dashboard:** Link.
**Owner:** Nombre.
**Última actualización:** Fecha.

---

## Pregunta

La única pregunta que responde esta vista, en lenguaje plano.

## Datos

- **Fuente.** Tabla o API.
- **Frescura.** Cuánto tiempo puede tener la data antes de que la respuesta sea incorrecta.
- **Filtro default.** El estado de filtros que ve el usuario al cargar la vista por primera vez.
- **Cardinalidad.** Cantidad típica y máxima de filas.

## Layout

- **Elemento principal.** Tabla, gráfico, card, o composite.
- **Columnas o ejes.** Para cada uno, qué muestra y cómo se ordena por defecto.
- **Filtros.** Qué filtros están expuestos. Dónde van.
- **Control de tiempo.** Ventana default y rangos permitidos.
- **Drill-down.** Qué pasa cuando el usuario clickea una fila o un punto.
- **Export.** CSV, copy link, ninguno.

## Estados

- **Loading.** Comportamiento exacto en UI.
- **Empty.** Copy y próximo paso sugerido al usuario.
- **Error.** Copy, opción de retry, contacto.
- **Partial data.** Qué fuente falló y cómo degrada la vista.
- **Permission denied.** Qué se muestra.
- **Dataset grande.** Paginación, sampling, o warning.

## Acciones

Si la vista permite escrituras:

- **Nombre de la acción.** Qué hace.
- **Confirmación.** Qué ve el usuario antes de que la acción dispare.
- **Audit.** Qué se loguea.
- **Reversibilidad.** Si se puede deshacer, y cómo.

## Definición de métricas

Para cada métrica mostrada:

- **Nombre.**
- **Definición en lenguaje plano.**
- **Fórmula.**
- **Caveats.** Nulls, empates, inclusiones, exclusiones.

## Casos borde

Condiciones específicas que vale la pena aclarar.

- Condición. Comportamiento esperado.
