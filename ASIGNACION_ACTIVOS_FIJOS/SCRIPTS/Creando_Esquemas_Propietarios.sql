-- CREANDO ESQUEMAS: Facturación, Inventario, Contabilidad, Seguridad
USE DB_ASIGNACION_ACTIVOS_FIJOS;
GO

-- Para Efecto de Cuentas de Usuarios, Bitacoras y Sesiones, Accesos
CREATE SCHEMA Seguridad AUTHORIZATION dbo;
GO

-- Para Efecto de Datos Funcionales del Sistema
CREATE SCHEMA Activos_Fijos AUTHORIZATION dbo;
GO


-- Para Otros Tipos de Sistemas...
CREATE SCHEMA Inventario AUTHORIZATION dbo;
GO

CREATE SCHEMA Facturacion AUTHORIZATION dbo;
GO

CREATE SCHEMA Contabilidad AUTHORIZATION dbo;
GO

CREATE SCHEMA RRHH AUTHORIZATION dbo;
GO


