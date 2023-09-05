-- Para Adjuntar Bases de Datos
-- 1. DB_ASIGNACION_ACTIVOS_FIJOS
EXEC master.dbo.sp_attach_db @dbname = 'DB_ASIGNACION_ACTIVOS_FIJOS',
   @filename1 = 'C:\Aplicaciones\ASIGNACION_ACTIVOS_FIJOS\DATOS\DB_ASIGNACION_ACTIVOS_FIJOS_data.mdf',
   @filename2 = 'C:\Aplicaciones\ASIGNACION_ACTIVOS_FIJOS\DATOS\DB_ASIGNACION_ACTIVOS_FIJOS_log.ldf' 
GO


-- Para Separar Bases de Datos:
-- 1. DB_ASIGNACION_ACTIVOS_FIJOS
USE master
GO
ALTER DATABASE DB_ASIGNACION_ACTIVOS_FIJOS SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
EXEC master.dbo.sp_detach_db @dbname = 'DB_ASIGNACION_ACTIVOS_FIJOS', @keepfulltextindexfile = N'true';
GO

