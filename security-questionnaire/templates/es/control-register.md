# Registro de controles

**Owner:** Nombre y rol.
**Última revisión:** Fecha.
**Cadencia de revisión:** Trimestral, después de cada incidente mayor, o después de toda auditoría de framework.

---

## Propósito

La fuente única de verdad sobre cómo responde esta compañía las preguntas de seguridad y privacidad. Cada respuesta a un cuestionario es un puntero a este registro.

## Entradas de control

Una subsección por control.

### CTRL-ACC-01. MFA en acceso a producción

- **Dominio.** Gestión de accesos.
- **Estado.** Operando.
- **Alcance.** Todos los sistemas de producción, todos los empleados con acceso a producción.
- **Implementación.** Forzado por SSO provider X. Opción de hardware key disponible, TOTP como fallback permitido.
- **Evidencia.** Auth policy v3.2. Export de config del SSO provider a pedido. Reporte mensual de revisión de accesos.
- **Mapeo a frameworks.** SOC 2 CC6.1. ISO 27001 A.9.4.2. CIS 6.3.
- **Responsable.** Equipo de seguridad.
- **Última prueba.** Fecha.
- **Gaps o excepciones conocidas.** Ninguna, o lista con razonamiento.

### CTRL-CRY-03. Rotación de claves de encriptación

- **Dominio.** Criptografía.
- **Estado.** Operando.
- **Alcance.** Todas las claves de datos de clientes.
- **Implementación.** Auto-rotación de KMS, período 365 días.
- **Evidencia.** Config de KMS. Log de auditoría de rotación.
- **Mapeo a frameworks.** SOC 2 CC6.7. ISO 27001 A.10.1.2.
- **Responsable.** Equipo de plataforma.
- **Última prueba.** Fecha.

### CTRL-PT-01. Pentesting

- **Dominio.** Gestión de vulnerabilidades.
- **Estado.** Roadmap.
- **Alcance.** Sistemas de producción expuestos externamente.
- **Objetivo de implementación.** Pentest externo anual, proveedor X, desde Q3 YYYY.
- **Mitigación interina.** Escaneo continuo de vulnerabilidades, ejercicios internos de red-team dos veces al año.
- **Evidencia.** Contrato con proveedor (pendiente). Reportes internos de red-team, último YYYY-MM.
- **Responsable.** CISO.
- **Fecha objetivo.** Fecha.

## Índice de referencias cruzadas

Mapeo de frases comunes de cuestionarios a IDs de control.

| Frase común | Control ID |
|---|---|
| "¿Se aplica MFA en producción?" | CTRL-ACC-01 |
| "¿Se protegen las credenciales de producción?" | CTRL-ACC-01 |
| "¿Se rotan las claves de encriptación?" | CTRL-CRY-03 |
| "¿Hacen pentesting?" | CTRL-PT-01 |

## Changelog

- Fecha. Control ID. Cambio. Revisor.
