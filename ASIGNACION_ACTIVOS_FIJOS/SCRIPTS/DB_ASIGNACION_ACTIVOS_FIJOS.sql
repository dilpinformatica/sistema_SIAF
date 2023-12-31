USE [DB_ASIGNACION_ACTIVOS_FIJOS]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] DROP CONSTRAINT [FX_SYS_USUARIOS_ID_ROL]
GO
ALTER TABLE [Seguridad].[SYS_SESION] DROP CONSTRAINT [FX_SYS_SESION_ID_USUARIO]
GO
ALTER TABLE [Seguridad].[SYS_SESION] DROP CONSTRAINT [FX_SYS_SESION_ID_ROL]
GO
ALTER TABLE [Seguridad].[SYS_BITACORA] DROP CONSTRAINT [FX_SYS_BITACORA_ID_SESION]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [FX_SYS_ACCESOS_ID_ROL]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [FX_SYS_ACCESOS_ID_OPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [FX_TBL_PROVEEDOR_ID_TIPO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [FX_TBL_PROVEEDOR_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [FX_TBL_EMPLEADO_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [FX_TBL_EMPLEADO_ID_CARGO_OCUPACIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [FX_TBL_EMPLEADO_ID_AREA_FUNCIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_TIPO_CONTACTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_PROVEEDOR]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_TIPO_MOVIMIENTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_EMPLEADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] DROP CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ENC]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] DROP CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ARTICULO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [FX_TBL_ARTICULO_ID_MODELO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [FX_TBL_ARTICULO_ID_MARCA]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [FX_TBL_ARTICULO_ID_COLOR]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [FX_TBL_ARTICULO_ID_CLASE]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] DROP CONSTRAINT [DF_SYS_USUARIOS_OBSERVACIONES]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] DROP CONSTRAINT [DF_SYS_USUARIOS_BAJA]
GO
ALTER TABLE [Seguridad].[SYS_ROL] DROP CONSTRAINT [DF_SYS_ROL_FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_ROL] DROP CONSTRAINT [DF_SYS_ROL_FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_ROL] DROP CONSTRAINT [DF_SYS_ROL_BAJA]
GO
ALTER TABLE [Seguridad].[SYS_ROL] DROP CONSTRAINT [DF_SYS_ROL_ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] DROP CONSTRAINT [DF_SYS_OPCIONES_FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] DROP CONSTRAINT [DF_SYS_OPCIONES_FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] DROP CONSTRAINT [DF_SYS_OPCIONES_BAJA]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] DROP CONSTRAINT [DF_SYS_OPCIONES_ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_FOTOS] DROP CONSTRAINT [DF_SYS_FOTOS_LOGO_011]
GO
ALTER TABLE [Seguridad].[SYS_FOTOS] DROP CONSTRAINT [DF__SYS_FOTOS__LOGOS__2B2A60FE]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] DROP CONSTRAINT [DF_SYS_FIRMAS_DOCUMENTOS_CARGO_OCUPACIONAL1]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] DROP CONSTRAINT [DF__SYS_FIRMA__CARGO__7E78816F]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] DROP CONSTRAINT [DF__SYS_FIRMA__NOMBR__7D845D36]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF_SYS_ACCESOS_FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF_SYS_ACCESOS_FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF_SYS_ACCESOS_BAJA]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF_SYS_ACCESOS_ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__ACTUA__46934FA8]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__INSER__459F2B6F]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__IMPRI__44AB0736]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__BORRA__43B6E2FD]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__VISUA__42C2BEC4]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__EJECU__41CE9A8B]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] DROP CONSTRAINT [DF__SYS_ACCES__ID_US__40DA7652]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__5EAA0504]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__5DB5E0CB]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] DROP CONSTRAINT [DF_TBL_TIPO_MOVIMIENTO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] DROP CONSTRAINT [DF__TBL_TIPO___ESTAD__5CC1BC92]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] DROP CONSTRAINT [DF__TBL_TIPO___DESCR__5BCD9859]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__6A1BB7B0]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__69279377]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] DROP CONSTRAINT [DF_TBL_TIPO_CONTACTO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] DROP CONSTRAINT [DF__TBL_TIPO___ESTAD__68336F3E]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] DROP CONSTRAINT [DF__TBL_TIPO___DESCR__673F4B05]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__53385258]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] DROP CONSTRAINT [DF__TBL_TIPO___FECHA__52442E1F]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] DROP CONSTRAINT [DF_TBL_TIPO_ALTA_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] DROP CONSTRAINT [DF__TBL_TIPO___ESTAD__515009E6]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] DROP CONSTRAINT [DF__TBL_TIPO___DESCR__505BE5AD]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] DROP CONSTRAINT [DF__TBL_TIPO__FECHA___6462DE5A]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] DROP CONSTRAINT [DF__TBL_TIPO__FECHA___636EBA21]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] DROP CONSTRAINT [DF_TBL_TIPO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] DROP CONSTRAINT [DF__TBL_TIPO__ESTADO__627A95E8]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] DROP CONSTRAINT [DF__TBL_TIPO__DESCRI__618671AF]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] DROP CONSTRAINT [DF__TBL_SEXO__FECHA___6FD49106]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] DROP CONSTRAINT [DF__TBL_SEXO__FECHA___6EE06CCD]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] DROP CONSTRAINT [DF_TBL_SEXO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] DROP CONSTRAINT [DF__TBL_SEXO__ESTADO__6DEC4894]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] DROP CONSTRAINT [DF__TBL_SEXO__DESCRI__6CF8245B]
GO
ALTER TABLE [Activos_Fijos].[TBL_REPORTE] DROP CONSTRAINT [DF__TBL_REPOR__DESCR__5190CC5F]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__FECHA__10416098]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__FECHA__0F4D3C5F]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__ID_US__0E591826]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF_TBL_PROVEEDOR_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__ESTAD__0D64F3ED]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__EMAIL__0C70CFB4]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF_TBL_PROVEEDOR_TEL_CEL_C]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF_TBL_PROVEEDOR_TEL_CEL_T]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__TELEF__0B7CAB7B]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__DIREC__0A888742]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__RAZON__09946309]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__SEGUN__08A03ED0]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__PRIME__07AC1A97]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__SEGUN__06B7F65E]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__PRIME__05C3D225]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] DROP CONSTRAINT [DF__TBL_PROVE__IDENT__04CFADEC]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] DROP CONSTRAINT [DF__TBL_PROCE__FECHA__58F12BAE]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] DROP CONSTRAINT [DF__TBL_PROCE__FECHA__57FD0775]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] DROP CONSTRAINT [DF_TBL_PROCEDENCIA_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] DROP CONSTRAINT [DF__TBL_PROCE__ESTAD__5708E33C]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] DROP CONSTRAINT [DF__TBL_PROCE__DESCR__5614BF03]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] DROP CONSTRAINT [DF__TBL_MODEL__FECHA__420DC656]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] DROP CONSTRAINT [DF__TBL_MODEL__FECHA__4119A21D]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] DROP CONSTRAINT [DF_TBL_MODELO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] DROP CONSTRAINT [DF__TBL_MODEL__ESTAD__40257DE4]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] DROP CONSTRAINT [DF__TBL_MODEL__DESCR__3F3159AB]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] DROP CONSTRAINT [DF__TBL_MARCA__FECHA__3C54ED00]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] DROP CONSTRAINT [DF__TBL_MARCA__FECHA__3B60C8C7]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] DROP CONSTRAINT [DF_TBL_MARCA_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] DROP CONSTRAINT [DF__TBL_MARCA__ESTAD__3A6CA48E]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] DROP CONSTRAINT [DF__TBL_MARCA__DESCR__39788055]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__FECHA__000AF8CF]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__FECHA__7F16D496]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF_TBL_EMPLEADO_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__ESTAD__7E22B05D]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__EMAIL__7D2E8C24]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF_TBL_EMPLEADO_TEL_CEL_T1]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF_TBL_EMPLEADO_TEL_CONVENCIONAL1]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__TELEF__7C3A67EB]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__DIREC__7B4643B2]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__NO_IN__7A521F79]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__CEDUL__795DFB40]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__SEGUN__7869D707]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__PRIME__7775B2CE]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__SEGUN__76818E95]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] DROP CONSTRAINT [DF__TBL_EMPLE__PRIME__758D6A5C]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_ID_USUARIO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__FECHA__1F83A428]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__EMAIL__1CA7377D]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_TEL_CEL_C]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_TEL_CEL_T]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__TELEF__1BB31344]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__DIREC__1ABEEF0B]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__SEGUN__19CACAD2]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__PRIME__18D6A699]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__SEGUN__17E28260]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__PRIME__16EE5E27]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] DROP CONSTRAINT [DF__TBL_CONTA__IDENT__15FA39EE]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] DROP CONSTRAINT [DF__TBL_COLOR__FECHA__4D7F7902]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] DROP CONSTRAINT [DF__TBL_COLOR__FECHA__4C8B54C9]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] DROP CONSTRAINT [DF_TBL_COLOR_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] DROP CONSTRAINT [DF__TBL_COLOR__ESTAD__4B973090]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] DROP CONSTRAINT [DF__TBL_COLOR__DESCR__4AA30C57]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] DROP CONSTRAINT [DF__TBL_CLASE__FECHA__47C69FAC]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] DROP CONSTRAINT [DF__TBL_CLASE__FECHA__46D27B73]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] DROP CONSTRAINT [DF_TBL_CLASE_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] DROP CONSTRAINT [DF__TBL_CLASE__ESTAD__45DE573A]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] DROP CONSTRAINT [DF__TBL_CLASE__DESCR__44EA3301]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] DROP CONSTRAINT [DF__TBL_CARGO__FECHA__369C13AA]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] DROP CONSTRAINT [DF__TBL_CARGO__FECHA__35A7EF71]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] DROP CONSTRAINT [DF_TBL_CARGO_OCUPACIONAL_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] DROP CONSTRAINT [DF__TBL_CARGO__ESTAD__34B3CB38]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] DROP CONSTRAINT [DF__TBL_CARGO__DESCR__33BFA6FF]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__FECHA__0AFE53E5]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__FECHA__0A0A2FAC]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__ID_US__09160B73]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__OBSER__0821E73A]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGNA__BAJA__072DC301]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__ESTAD__06399EC8]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__CONCE__05457A8F]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] DROP CONSTRAINT [DF__TBL_ASIGN__FECHA__04515656]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] DROP CONSTRAINT [DF__TBL_ASIGN__COSTO__035D321D]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__FECHA__347EC10E]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__FECHA__338A9CD5]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__ID_US__3296789C]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__DESC___31A25463]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTICU__BAJA__30AE302A]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__ESTAD__2FBA0BF1]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF__TBL_ARTIC__DESCR__2DD1C37F]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] DROP CONSTRAINT [DF_TBL_ARTICULO_CODIGO]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] DROP CONSTRAINT [DF__TBL_AREA___FECHA__30E33A54]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] DROP CONSTRAINT [DF__TBL_AREA___FECHA__2FEF161B]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] DROP CONSTRAINT [DF_TBL_AREA_FUNCIONAL_BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] DROP CONSTRAINT [DF__TBL_AREA___DESCR__2EFAF1E2]
GO
/****** Object:  Table [Seguridad].[SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_USUARIOS]
GO
/****** Object:  Table [Seguridad].[SYS_SESION]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_SESION]
GO
/****** Object:  Table [Seguridad].[SYS_ROL]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_ROL]
GO
/****** Object:  Table [Seguridad].[SYS_REG_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_REG_CARGA_ARCHIVOS]
GO
/****** Object:  Table [Seguridad].[SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_OPCIONES]
GO
/****** Object:  Table [Seguridad].[SYS_FOTOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_FOTOS]
GO
/****** Object:  Table [Seguridad].[SYS_FIRMAS_DOCUMENTOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS]
GO
/****** Object:  Table [Seguridad].[SYS_BITACORA]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_BITACORA]
GO
/****** Object:  Table [Seguridad].[SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Seguridad].[SYS_ACCESOS]
GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_TIPO_ALTA]
GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_TIPO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_SEXO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_REPORTE]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_REPORTE]
GO
/****** Object:  Table [Activos_Fijos].[TBL_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_PROVEEDOR]
GO
/****** Object:  Table [Activos_Fijos].[TBL_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_PROCEDENCIA]
GO
/****** Object:  Table [Activos_Fijos].[TBL_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_MODELO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_MARCA]
GO
/****** Object:  Table [Activos_Fijos].[TBL_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_EMPLEADO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]
GO
/****** Object:  Table [Activos_Fijos].[TBL_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_COLOR]
GO
/****** Object:  Table [Activos_Fijos].[TBL_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_CLASE]
GO
/****** Object:  Table [Activos_Fijos].[TBL_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL]
GO
/****** Object:  Table [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC]
GO
/****** Object:  Table [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET]
GO
/****** Object:  Table [Activos_Fijos].[TBL_ARTICULO]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_ARTICULO]
GO
/****** Object:  Table [Activos_Fijos].[TBL_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL]
GO
/****** Object:  StoredProcedure [Seguridad].[Verificar_Acceso_Opcion]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Verificar_Acceso_Opcion]
GO
/****** Object:  StoredProcedure [Seguridad].[URL_ARCHIVO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[URL_ARCHIVO]
GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[REACTIVAR_SYS_USUARIOS]
GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[REACTIVAR_SYS_ROLES]
GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[REACTIVAR_SYS_OPCIONES]
GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[REACTIVAR_SYS_ACCESOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_USUARIOS_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_USUARIOS_AFECTABLE]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_USUARIOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_ROLES_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_ROLES_AFECTABLE]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_ROLES]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_OPCIONES]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_NIVELES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SYS_NIVELES]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SESIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_SESIONES]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_FOTOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_FOTOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_FIRMAS_DOCUMENTOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_FIRMAS_DOCUMENTOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_BITACORAS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_BITACORAS]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_Adjuntos]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_Adjuntos]
GO
/****** Object:  StoredProcedure [Seguridad].[Listar_Accesos]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listar_Accesos]
GO
/****** Object:  StoredProcedure [Seguridad].[Listado_Opciones_Accesos]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Listado_Opciones_Accesos]
GO
/****** Object:  StoredProcedure [Seguridad].[INS_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[INS_CARGA_ARCHIVOS]
GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[INS_ACT_SYS_USUARIOS]
GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[INS_ACT_SYS_ROLES]
GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[INS_ACT_SYS_OPCIONES]
GO
/****** Object:  StoredProcedure [Seguridad].[DEL_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[DEL_CARGA_ARCHIVOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Cerrar_Sesion]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Cerrar_Sesion]
GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[BAJA_SYS_USUARIOS]
GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[BAJA_SYS_ROLES]
GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[BAJA_SYS_OPCIONES]
GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[BAJA_SYS_ACCESOS]
GO
/****** Object:  StoredProcedure [Seguridad].[AUTENTICAR_USUARIO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[AUTENTICAR_USUARIO]
GO
/****** Object:  StoredProcedure [Seguridad].[ASIGNAR_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[ASIGNAR_ACCESOS]
GO
/****** Object:  StoredProcedure [Seguridad].[Actualizar_PASSWORD_USER]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[Actualizar_PASSWORD_USER]
GO
/****** Object:  StoredProcedure [Seguridad].[ACTUALIZAR_ACCESO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[ACTUALIZAR_ACCESO]
GO
/****** Object:  StoredProcedure [Seguridad].[ACCESO_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Seguridad].[ACCESO_OPCIONES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[rpt_Listar_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[rpt_Listar_REG_CONTACTOS_x_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_REG_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_EMPLEADOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_REG_EMPLEADOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_REG_ASIGNACIONES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_REG_ARTICULOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_MOVIMIENTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_CONTACTO_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_ALTA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_SEXO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_PROCEDENCIA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_MODELO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_MARCA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_COLOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CLASE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CENTRO_COSTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CENTRO_COSTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CARGO_OCUPACIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_03]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_Reportes_03]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_02]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_Reportes_02]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_01]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_Reportes_01]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_PROVEEDOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_PROVEEDOR_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_HOJA_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_HOJA_ASIGNACIONES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_EMPLEADO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_EMPLEADO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_EMPLEADO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_CONTACTOS_x_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_RANGO_FECHA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_RANGO_FECHA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_ENC]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_ENC]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_DET]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_DET]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ARTICULOS_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_ARTICULOS_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_REG_ARTICULOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_ALTA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_ALTA_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_ALTA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_SEXO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_SEXO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_SEXO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROVEEDOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_PROVEEDOR_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROCEDENCIA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_PROCEDENCIA_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_PROCEDENCIA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MODELO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_MODELO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_MODELO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MARCA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_MARCA_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_MARCA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_EMPLEADO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_EMPLEADO_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_COLOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_COLOR_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_COLOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CLASE_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_CLASE_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_CLASE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGOS_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_CARGOS_OCUPACIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL_AFECTABLE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_PROVEEDORES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_REG_PROVEEDORES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_REG_EMPLEADO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_REG_CONTACTOS_x_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_REG_ASIGNACIONES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_REG_ARTICULOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_MOVIMIENTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_CONTACTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_ALTA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_SEXO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_PROCEDENCIA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_MODELO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_MARCA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_COLOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_CLASE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_CARGO_OCUPACIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[INS_ACT_CAT_AREA_FUNCIONAL]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[DEL_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[DEL_REG_CONTACTOS_x_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_PROVEEDORES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_REG_PROVEEDORES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_EMPLEADOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_REG_EMPLEADOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_REG_ASIGNACIONES]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_REG_ARTICULOS]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_MOVIMIENTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_CONTACTO_PROVEEDOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_ALTA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_SEXO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_PROCEDENCIA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_MODELO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_MARCA]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_COLOR]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_CLASE]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CENTRO_COSTO]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_CENTRO_COSTO]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
DROP PROCEDURE [Activos_Fijos].[BAJA_CAT_CARGO_OCUPACIONAL]
GO
/****** Object:  Schema [Seguridad]    Script Date: 07/08/2023 18:46:30 ******/
DROP SCHEMA [Seguridad]
GO
/****** Object:  Schema [Activos_Fijos]    Script Date: 07/08/2023 18:46:30 ******/
DROP SCHEMA [Activos_Fijos]
GO
/****** Object:  Schema [Activos_Fijos]    Script Date: 07/08/2023 18:46:30 ******/
CREATE SCHEMA [Activos_Fijos]
GO
/****** Object:  Schema [Seguridad]    Script Date: 07/08/2023 18:46:30 ******/
CREATE SCHEMA [Seguridad]
GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_CARGO_OCUPACIONAL]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_CARGO_OCUPACIONAL SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_CARGOS_OCUPACIONALES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CENTRO_COSTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_CENTRO_COSTO]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_AREA_FUNCIONAL SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_CENTRO_COSTOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_CLASE]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_CLASE SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_CLASE', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_COLOR]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_COLOR SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_COLOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_MARCA]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_MARCA SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_MARCA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_MODELO]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_MODELO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_MODELO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_PROCEDENCIA]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_PROCEDENCIA SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_PROCEDENCIA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_SEXO]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_SEXO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_SEXO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_ALTA]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_ALTA SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_TIPO_ALTA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_CONTACTO_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_CONTACTO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_TIPO_CONTACTO_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_MOVIMIENTO]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_MOVIMIENTO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_TIPO_MOVIMIENTO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_CAT_TIPO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_CAT_TIPO_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_TIPO_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_REG_ARTICULOS]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_ARTICULO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_ARTICULOS', 'BAJA DE REG_ARTICULOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_REG_ASIGNACIONES]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_ASIGNACIONES', 'BAJA DE REG_ASIGNACIONES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_EMPLEADOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_REG_EMPLEADOS]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_EMPLEADO SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_EMPLEADOS', 'BAJA DE REG_EMPLEADOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[BAJA_REG_PROVEEDORES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[BAJA_REG_PROVEEDORES]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_PROVEEDOR SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_PROVEEDOR', 'BAJA DE REG_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[DEL_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[DEL_REG_CONTACTOS_x_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;

		DELETE FROM Activos_Fijos.TBL_CONTACTO_PROVEEDOR WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CONTACTO DEL PROVEEDOR', 'BORRANDO REGISTROS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END











































GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_AREA_FUNCIONAL]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', 
			@xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN			
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_AREA_FUNCIONAL WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_AREA_FUNCIONAL WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_AREA_FUNCIONAL) Q);

	        INSERT INTO Activos_Fijos.TBL_AREA_FUNCIONAL(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'AREA FUNCIONAL', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_AREA_FUNCIONAL WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_AREA_FUNCIONAL WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_AREA_FUNCIONAL
				WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_AREA_FUNCIONAL SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'AREA FUNCIONAL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_CARGO_OCUPACIONAL]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL) Q);

	        INSERT INTO Activos_Fijos.TBL_CARGO_OCUPACIONAL(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'CARGO OCUPACIONAL', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL 
				WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_CARGO_OCUPACIONAL SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'CARGO OCUPACIONAL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_CLASE]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_CLASE WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_CLASE WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_CLASE) Q);

	        INSERT INTO Activos_Fijos.TBL_CLASE(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'CLASE', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_CLASE WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_CLASE WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_CLASE WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_CLASE SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'CLASE', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_COLOR]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_COLOR WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_COLOR WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_COLOR) Q);

	        INSERT INTO Activos_Fijos.TBL_COLOR(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'COLOR', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_COLOR WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_COLOR WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_COLOR WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_COLOR SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'COLOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_MARCA]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_MARCA WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_MARCA WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_MARCA) Q);

	        INSERT INTO Activos_Fijos.TBL_MARCA(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'MARCA', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_MARCA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_MARCA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_MARCA  WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_MARCA SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'MARCA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_MODELO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_MODELO WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_MODELO WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_MODELO) Q);

	        INSERT INTO Activos_Fijos.TBL_MODELO(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'MODELO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_MODELO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_MODELO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_MODELO	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_MODELO SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'MODELO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_PROCEDENCIA]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_PROCEDENCIA WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_PROCEDENCIA WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_PROCEDENCIA) Q);

	        INSERT INTO Activos_Fijos.TBL_PROCEDENCIA(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROCEDENCIA', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_PROCEDENCIA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_PROCEDENCIA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_PROCEDENCIA 	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_PROCEDENCIA SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROCEDENCIA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_SEXO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_SEXO WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_SEXO WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_SEXO) Q);

	        INSERT INTO Activos_Fijos.TBL_SEXO(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'SEXO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ACTIVO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_SEXO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_SEXO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION FROM Activos_Fijos.TBL_SEXO	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_SEXO SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'SEXO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_TIPO) Q);

	        INSERT INTO Activos_Fijos.TBL_TIPO(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION FROM Activos_Fijos.TBL_TIPO	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_TIPO SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_ALTA]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_ALTA WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_ALTA WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_TIPO_ALTA) Q);

	        INSERT INTO Activos_Fijos.TBL_TIPO_ALTA(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_ALTA', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_ALTA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_ALTA WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_TIPO_ALTA WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_TIPO_ALTA SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_ALTA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_CONTACTO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_CONTACTO WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_CONTACTO WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_TIPO_CONTACTO) Q);

	        INSERT INTO Activos_Fijos.TBL_TIPO_CONTACTO(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_CONTACTO_PROVEEDOR', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_CONTACTO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_CONTACTO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION FROM Activos_Fijos.TBL_TIPO	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_TIPO_CONTACTO SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_CONTACTO_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_CAT_TIPO_MOVIMIENTO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xConsec AS FLOAT;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO WHERE (DESCRIPCION = @xDESC));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO WHERE (DESCRIPCION = @xDESC));
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO) Q);

	        INSERT INTO Activos_Fijos.TBL_TIPO_MOVIMIENTO(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_MOVIMIENTO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', ESTADO = ALTA, USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTA DESCRIPCION YA EXISTE PARA EL REGISTRO CORRESPONDIENTE EN EL CODIGO = ' + (SELECT TOP(1) RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5) FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO WHERE (DESCRIPCION = @xDESC) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION  FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO 	WHERE (ID = @xID);  

	        UPDATE Activos_Fijos.TBL_TIPO_MOVIMIENTO SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'TIPO_MOVIMIENTO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_REG_ARTICULOS]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @xID AS NUMERIC(38, 0) = 0, @xDESC AS NVARCHAR(1000) = '', @xDESC_ANTES AS NVARCHAR(1000) = '', @xID_CLASE AS INT = 0, @xID_PROCEDENCIA AS INT = 0, @xSERIE AS NVARCHAR(50) = '', @xCOSTO AS NUMERIC(18, 2) = 0,
			@xID_CLASE_ANTES AS INT = 0, @xINGRESO AS DATE, @xINGRESO_ANTES AS DATE, @xUSER AS INT = 0, @xConsec AS NUMERIC(38, 0) = 0, @yConsec AS NUMERIC(38, 0) = 0, @xFECHA_COMPRA AS DATE,
			@xCOD_ART AS NVARCHAR(50) = '', @xID_MARCA AS INT = 0, @xID_MODELO AS INT = 0,  @xID_COLOR AS INT = 0, @xID_MARCA_ANTES AS INT = 0, @xID_MODELO_ANTES AS INT = 0, @xID_COLOR_ANTES AS INT = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
             
		SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS NUMERIC(38, 0)), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
			@xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT), @xINGRESO = CAST(Node.Data.value('INGRESO[1]', 'NVARCHAR(50)') AS DATE),  
			@xID_MODELO = CAST(Node.Data.value('ID_MODELO[1]', 'NVARCHAR(50)') AS INT), @xID_MARCA = CAST(Node.Data.value('ID_MARCA[1]', 'NVARCHAR(50)') AS INT), 
			@xID_COLOR = CAST(Node.Data.value('ID_COLOR[1]', 'NVARCHAR(50)') AS INT), @xID_CLASE = CAST(Node.Data.value('ID_CLASE[1]', 'NVARCHAR(50)') AS INT),
			@xCOD_ART = Node.Data.value('CODIGO[1]', 'NVARCHAR(50)'), @xID_PROCEDENCIA = CAST(Node.Data.value('ID_PROCEDENCIA[1]', 'NVARCHAR(50)') AS INT),
			@xSERIE = Node.Data.value('SERIE[1]', 'NVARCHAR(50)'), @xFECHA_COMPRA = CAST(Node.Data.value('FECHA_COMPRA[1]', 'NVARCHAR(50)') AS DATE),
			@xCOSTO = CAST(Node.Data.value('COSTO[1]', 'NVARCHAR(50)') AS NUMERIC(18, 2))
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   

	    -- VALIDANDO LA INSERCION y/o ACTUALIZACION		
	    IF (@xID = 0) -- INSERTA UN REGISTRO NUEVO
	    BEGIN
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_ARTICULO WHERE (CODIGO = @xCOD_ART));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTE CODIGO SIBE DEL ARTICULO YA EXISTE PARA EL ARTICULO CON DESCRIPCION = ' + (SELECT TOP(1) DESCRIPCION FROM Activos_Fijos.TBL_ARTICULO WHERE (CODIGO = @xCOD_ART));
				ROLLBACK TRANSACTION; RETURN;
			END

			IF (@xID_CLASE != 2)
			BEGIN
				IF (LEN(@xSERIE) > 0)	
				BEGIN
					SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_ARTICULO WHERE (SERIE = @xSERIE));
					IF (@xConsec > 0)
					BEGIN
						SET @xMSG = 'ESTE Nº SERIE DEL ARTICULO YA EXISTE PARA EL ARTICULO CON DESCRIPCION = ' + (SELECT TOP(1) DESCRIPCION FROM Activos_Fijos.TBL_ARTICULO WHERE (SERIE = @xSERIE));
						ROLLBACK TRANSACTION; RETURN;
					END
				END
			END

			IF (@xINGRESO < @xFECHA_COMPRA)
			BEGIN
				SET @xMSG = 'LA FECHA DE COMPRA DEL ARTICULO NO PUEDE SER MAYOR QUE LA FECHA DE INGRESO AL SISTEMA...';
				ROLLBACK TRANSACTION; RETURN;
			END

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END) AS CONSEC_REG
                            FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_ARTICULO ) Q);
						   
			INSERT INTO Activos_Fijos.TBL_ARTICULO(ID, ID_MARCA, ID_MODELO, ID_CLASE, ID_COLOR, ID_PROCEDENCIA, CODIGO, SERIE, DESCRIPCION, COSTO, FECHA_COMPRA, INGRESO, ESTADO, OBSERVACIONES, ID_USUARIO, BAJA, FECHA_GRAB, FECHA_MOD)
	            VALUES(@xConsec, @xID_MARCA, @xID_MODELO, @xID_CLASE, @xID_COLOR, @xID_PROCEDENCIA, @xCOD_ART, @xSERIE, @xDESC, @xCOSTO, @xFECHA_COMPRA, @xINGRESO, 1, '', @xUSER, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) ); 
				
			SET @xID = @xConsec; 

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ARTICULO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', CLASE = ' + (SELECT DESCRIPCION FROM Activos_Fijos.TBL_CLASE WHERE (ID = @xID_CLASE)) + ' ACTIVO = ALTA, INGRESO = ' + CAST(@xINGRESO AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN	
			SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_ARTICULO WHERE (CODIGO = @xCOD_ART) AND (ID != @xID));
			IF (@xConsec > 0)
			BEGIN
				SET @xMSG = 'ESTE CODIGO DE ARTICULO YA EXISTE PARA EL ARTICULO CON DESCRIPCION = ' + (SELECT TOP(1) DESCRIPCION FROM Activos_Fijos.TBL_ARTICULO WHERE (CODIGO = @xCOD_ART) AND (ID != @xID));
				ROLLBACK TRANSACTION; RETURN;
			END

			IF (@xID_CLASE != 2)
			BEGIN
				IF (LEN(@xSERIE) > 0)	
				BEGIN
					SET @xConsec = (SELECT COUNT(ID) FROM Activos_Fijos.TBL_ARTICULO WHERE (SERIE = @xSERIE) AND (ID != @xID));
					IF (@xConsec > 0)
					BEGIN
						SET @xMSG = 'ESTE Nº SERIE DEL ARTICULO YA EXISTE PARA EL ARTICULO CON DESCRIPCION = ' + (SELECT TOP(1) DESCRIPCION FROM Activos_Fijos.TBL_ARTICULO WHERE (SERIE = @xSERIE) AND (ID != @xID));
						ROLLBACK TRANSACTION; RETURN;
					END
				END
			END

			IF (@xINGRESO < @xFECHA_COMPRA)
			BEGIN
				SET @xMSG = 'LA FECHA DE COMPRA DEL ARTICULO NO PUEDE SER MAYOR QUE LA FECHA DE INGRESO AL SISTEMA...';
				ROLLBACK TRANSACTION; RETURN;
			END

			SELECT @xDESC_ANTES = DESCRIPCION, @xID_CLASE_ANTES = ID_CLASE, @xINGRESO_ANTES = INGRESO 	FROM Activos_Fijos.TBL_ARTICULO WHERE (ID = @xID);  
					  
	        UPDATE Activos_Fijos.TBL_ARTICULO SET CODIGO = @xCOD_ART, SERIE = @xSERIE, ID_MARCA = @xID_MARCA, ID_MODELO = @xID_MODELO, ID_CLASE = @xID_CLASE, ID_COLOR = @xID_COLOR, ID_PROCEDENCIA = @xID_PROCEDENCIA, DESCRIPCION = @xDESC, COSTO = @xCOSTO, FECHA_COMPRA = @xFECHA_COMPRA, INGRESO = @xINGRESO, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
	            WHERE (ID = @xID);
							
			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ARTICULO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', CLASE = ' + (SELECT DESCRIPCION FROM Activos_Fijos.TBL_CLASE WHERE (ID = @xID_CLASE_ANTES)) + ', INGRESO = ' + CAST(@xINGRESO_ANTES AS NVARCHAR(50)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', CLASE = ' + (SELECT DESCRIPCION FROM Activos_Fijos.TBL_CLASE WHERE (ID = @xID_CLASE)) + ', INGRESO = ' + CAST(@xINGRESO AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END
	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_REG_ASIGNACIONES]
	@xENC AS XML, @xDET AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
		SET LANGUAGE spanish;	

	    DECLARE @xConsec AS NUMERIC(38, 0), @yConsec AS NUMERIC(38, 0), @xID AS NUMERIC (38, 0) = 0, @xID_EMPLEADO AS INT = 0, @xID_TIPO_MOVIMIENTO AS INT = 0, 
			@xFECHA AS DATE, @xCONCEPTO AS NVARCHAR(1000) = '', @xUSER AS INT, @xCANT AS INT = 0, @xID_EMPLEADO_ANTES AS INT = 0, 
			@xID_TIPO_MOVIMIENTO_ANTES AS INT = 0, @xFECHA_ANTES AS DATE, @xCONCEPTO_ANTES AS NVARCHAR(1000) = '';
		

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @xENC;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS NUMERIC(38, 0)), @xFECHA = CAST(Node.Data.value('FECHA[1]', 'NVARCHAR(20)') AS DATE), 
			@xID_EMPLEADO = CAST( Node.Data.value('EMPLEADO[1]', 'NVARCHAR(50)') AS INT), @xID_TIPO_MOVIMIENTO = CAST(Node.Data.value('TIPO_MOVIMIENTO[1]', 'NVARCHAR(50)') AS INT), 
			@xCONCEPTO = Node.Data.value('CONCEPTO[1]', 'NVARCHAR(1000)'), @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(10)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   

		IF (@xID = 0) -- INSERTANDO REGISTROS
		BEGIN
			SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC) Q);

			INSERT INTO Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC(ID, ID_EMPLEADO, ID_TIPO_MOVIMIENTO, FECHA, CONCEPTO, OBSERVACIONES, ID_USUARIO, ESTADO, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xID_EMPLEADO, @xID_TIPO_MOVIMIENTO, @xFECHA, @xCONCEPTO, '', @xUSER, 1, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) );

			SET @xID = @xConsec; SET @xConsec = @yConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', FECHA = ' + CAST(@xFECHA AS NVARCHAR(100)) + ', EMPLEADO = ' + CAST(@xID_EMPLEADO AS NVARCHAR(50)) + ', TIPO MOVIMIENTO = ' + CAST(@xID_TIPO_MOVIMIENTO AS NVARCHAR(50)) + ', CONCEPTO = ' + @xCONCEPTO + ', ESTADO = ALTA', 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
		END
		ELSE IF (@xID > 0) -- ACTUALIZANDO REGISTROS
		BEGIN
			SELECT @xID_EMPLEADO_ANTES = ID_EMPLEADO, @xID_TIPO_MOVIMIENTO_ANTES = ID_TIPO_MOVIMIENTO, @xFECHA_ANTES = FECHA, @xCONCEPTO_ANTES  = CONCEPTO 
			FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC
			WHERE (ID = @xID);

			UPDATE Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC SET ID_EMPLEADO = @xID_EMPLEADO, ID_TIPO_MOVIMIENTO = @xID_TIPO_MOVIMIENTO, FECHA = @xFECHA, CONCEPTO = @xCONCEPTO, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)
				WHERE (ID = @xID);
							
			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', FECHA = ' + CAST(@xFECHA_ANTES AS NVARCHAR(100)) + ', EMPLEADOS = ' + CAST(@xID_EMPLEADO_ANTES AS NVARCHAR(50)) + ', TIPO MOVIMIENTO = ' + CAST(@xID_TIPO_MOVIMIENTO_ANTES AS NVARCHAR(50)) + ', CONCEPTO = ' + @xCONCEPTO_ANTES + ', ESTADO = ALTA', 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', FECHA = ' + CAST(@xFECHA AS NVARCHAR(100)) + ', EMPLEADO = ' + CAST(@xID_EMPLEADO AS NVARCHAR(50)) + ', TIPO MOVIMIENTO = ' + CAST(@xID_TIPO_MOVIMIENTO AS NVARCHAR(50)) + ', CONCEPTO = ' + @xCONCEPTO + ', ESTADO = ALTA', 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
		END
	
		-- INSERTANDO EL DETALLE...
		DECLARE @yDATOS AS XML = @xDET; 

		DECLARE @xID_ARTICULO AS INT = 0, @xCOSTO AS NUMERIC(38, 2) = 0;

		DELETE FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = @xID);

		DECLARE DATOS_DETALLE CURSOR FOR
			SELECT CAST(Node.Data.value('ARTICULO[1]', 'NVARCHAR(50)') AS INT), CAST(REPLACE(Node.Data.value('COSTO[1]', 'NVARCHAR(50)'), ',', '') AS NUMERIC(38, 2))
            FROM @yDATOS.nodes('/NewDataSet/Table1') Node(Data); 
		OPEN DATOS_DETALLE;
		FETCH NEXT FROM DATOS_DETALLE INTO @xID_ARTICULO, @xCOSTO;
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			SET @yConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET) Q);

			INSERT INTO Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET(ID, ID_ENC, ID_ARTICULO, COSTO)
				VALUES(@yConsec, @xID, @xID_ARTICULO, @xCOSTO);
			
			FETCH NEXT FROM DATOS_DETALLE INTO @xID_ARTICULO, @xCOSTO;
		END
		CLOSE DATOS_DETALLE; DEALLOCATE DATOS_DETALLE;	
		
		COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES   
		SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_REG_CONTACTOS_x_PROVEEDOR]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @xID AS NUMERIC(38, 0) = 0, @xPROVEEDOR AS NUMERIC(38, 0) = 0, @xSEXO AS INT = 0, @xSEXO_ANTES AS INT = 0, @xINGRESO AS DATE, @xUSER AS INT = 0, 
			@xCED AS NVARCHAR(50) = '', @xAPE_01 AS NVARCHAR(200) = '', @xAPE_02 AS NVARCHAR(200) = '', @xNOM_01 AS NVARCHAR(200) = '', @xNOM_02 AS NVARCHAR(200) = '', @xTIPO_ANTES AS INT = 0,
			@xDIR AS NVARCHAR(1000) = '', @xTEL AS NVARCHAR(10) = '', @xCEL_T AS NVARCHAR(10) = '', @xCEL_C AS NVARCHAR(10) = '', @xEMAIL AS NVARCHAR(200) = '', @xCED_ANTE AS NVARCHAR(50) = '', @xAPE_01_ANTE AS NVARCHAR(200) = '', 
			@xAPE_02_ANTE AS NVARCHAR(200) = '', @xNOM_01_ANTE AS NVARCHAR(200) = '', @xNOM_02_ANTE AS NVARCHAR(200) = '', @xDIR_ANTE AS NVARCHAR(1000) = '', @xTIPO AS INT = 0,
			@xTEL_ANTE AS NVARCHAR(200) = '', @xEMAIL_ANTE AS NVARCHAR(200) = '', @xConsec AS NUMERIC(38, 0) = 0, @yConsec AS NUMERIC(38, 0) = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS NUMERIC(38, 0)), @xPROVEEDOR = CAST(Node.Data.value('PROVEEDOR[1]', 'NVARCHAR(50)') AS NUMERIC(38, 0)),
			@xSEXO = CAST(Node.Data.value('SEXO[1]', 'NVARCHAR(50)') AS INT), @xTIPO = CAST(Node.Data.value('ID_TIPO[1]', 'NVARCHAR(50)') AS INT), @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT),     
			@xCED = Node.Data.value('CEDULA[1]', 'NVARCHAR(50)'), @xAPE_01 = Node.Data.value('APE_01[1]', 'NVARCHAR(200)'), @xAPE_02 = Node.Data.value('APE_02[1]', 'NVARCHAR(200)'),  
			@xNOM_01 = Node.Data.value('NOM_01[1]', 'NVARCHAR(200)'), @xNOM_02 = Node.Data.value('NOM_02[1]', 'NVARCHAR(200)'), @xDIR = Node.Data.value('DIRECCION[1]', 'NVARCHAR(1000)'),
			@xTEL = Node.Data.value('TEL[1]', 'NVARCHAR(10)'), @xEMAIL = Node.Data.value('EMAIL[1]', 'NVARCHAR(200)'), @xINGRESO = CAST(Node.Data.value('INGRESO[1]', 'NVARCHAR(20)') AS DATE),
			@xCEL_T = Node.Data.value('CEL_T[1]', 'NVARCHAR(10)'), @xCEL_C = Node.Data.value('CEL_C[1]', 'NVARCHAR(10)')
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   

	    -- VALIDANDO LA INSERCION y/o ACTUALIZACION		
	    IF (@xID = 0) -- INSERTA UN REGISTRO NUEVO
	    BEGIN
            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END) AS CONSEC_REG
                            FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_CONTACTO_PROVEEDOR ) Q);
                              
	        INSERT INTO Activos_Fijos.TBL_CONTACTO_PROVEEDOR(ID, ID_PROVEEDOR, ID_SEXO, ID_TIPO_CONTACTO, IDENTIFICACION, PRIMER_APELLIDO, SEGUNDO_APELLIDO, PRIMER_NOMBRE, SEGUNDO_NOMBRE, DIRECCION, TEL_CONVENCIONAL, TEL_CELULAR_T, TEL_CELULAR_C, EMAIL, INGRESO, ID_USUARIO, FECHA_GRAB)
	            VALUES(@xConsec, @xPROVEEDOR, @xSEXO, @xTIPO, @xCED, @xAPE_01, @xAPE_02, @xNOM_01, @xNOM_02, @xDIR, @xTEL, @xCEL_T, @xCEL_C, @xEMAIL, @xINGRESO, @xUSER, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROVEEDOR: CONTACTOS DEL PROVEEDOR', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', NOMBRE = ' + CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOM_01, ' ', @xNOM_02), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN	
			SELECT @xCED_ANTE = IDENTIFICACION, @xAPE_01_ANTE = PRIMER_APELLIDO, @xAPE_02_ANTE = SEGUNDO_APELLIDO, @xNOM_01_ANTE = PRIMER_NOMBRE, @xNOM_02_ANTE = SEGUNDO_NOMBRE
			FROM Activos_Fijos.TBL_CONTACTO_PROVEEDOR WHERE (ID = @xID);  
					  
	        UPDATE Activos_Fijos.TBL_CONTACTO_PROVEEDOR SET ID_SEXO = @xSEXO, ID_TIPO_CONTACTO = @xTIPO, IDENTIFICACION = @xCED, PRIMER_APELLIDO = @xAPE_01, SEGUNDO_APELLIDO = @xAPE_02, PRIMER_NOMBRE = @xNOM_01, SEGUNDO_NOMBRE = @xNOM_02, DIRECCION = @xDIR, TEL_CONVENCIONAL = @xTEL, TEL_CELULAR_T = @xCEL_T, TEL_CELULAR_C = @xCEL_C, EMAIL = @xEMAIL, INGRESO = @xINGRESO, ID_USUARIO = @xUSER, FECHA_GRAB = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
	            WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROVEEDORES: CONTACTOS DEL PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', NOMBRE = ' + CONCAT(@xAPE_01_ANTE, ' ', @xAPE_02_ANTE, ', ', @xNOM_01_ANTE, ' ', @xNOM_02_ANTE) , 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', NOMBRE = ' + CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOM_01, ' ', @xNOM_02), LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END
	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_REG_EMPLEADO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xAPE_01 AS NVARCHAR(200) = '', @xAPE_02 AS NVARCHAR(200) = '', @xNOMB_01 AS NVARCHAR(200) = '', @xNOMB_02 AS NVARCHAR(200) = '', @xEMAIL AS NVARCHAR(1000) = '', 
			@xCEDULA AS NVARCHAR(50) = '', @xDIRECCION AS NVARCHAR(1000) = '', @xTEL AS NVARCHAR(10) = '', @xCEL_T AS NVARCHAR(10) = '', @xCEL_C AS NVARCHAR(10) = '', @xINGRESO AS DATE, 
			@xUSER AS INT = 0, @xINSS AS NVARCHAR(50) = '', @xAPE_01_ANTES AS NVARCHAR(200) = '', @xAPE_02_ANTES AS NVARCHAR(200) = '', @xNOMB_01_ANTES AS NVARCHAR(200) = '', 
			@xNOMB_02_ANTES AS NVARCHAR(200) = '',  @yConsec AS NUMERIC(38, 0) = 0, @xSEXO AS INT = 0, @xCARGO AS INT = 0, @xAREA AS INT = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xINSS = Node.Data.value('INSS[1]', 'NVARCHAR(50)'),
            @xAPE_01 = Node.Data.value('APE_01[1]', 'NVARCHAR(200)'), @xAPE_02 = Node.Data.value('APE_02[1]', 'NVARCHAR(200)'),
			@xNOMB_01 = Node.Data.value('NOM_01[1]', 'NVARCHAR(200)'), @xNOMB_02 = Node.Data.value('NOM_02[1]', 'NVARCHAR(200)'),
			@xEMAIL = Node.Data.value('EMAIL[1]', 'NVARCHAR(1000)'), @xDIRECCION = Node.Data.value('DIR[1]', 'NVARCHAR(1000)'), 
			@xTEL = Node.Data.value('TEL[1]', 'NVARCHAR(10)'), @xINGRESO = CAST(Node.Data.value('INGRESO[1]', 'NVARCHAR(20)') AS DATE), 
			@xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT), @xCEL_T = Node.Data.value('CEL_T[1]', 'NVARCHAR(10)'), @xCEL_C = Node.Data.value('CEL_C[1]', 'NVARCHAR(10)'),
			@xCEDULA = Node.Data.value('CEDULA[1]', 'NVARCHAR(50)'), @xSEXO = CAST(Node.Data.value('ID_SEXO[1]', 'NVARCHAR(50)') AS INT),
			@xCARGO = CAST(Node.Data.value('ID_CARGO[1]', 'NVARCHAR(50)') AS INT), @xAREA = CAST(Node.Data.value('ID_AREA[1]', 'NVARCHAR(50)') AS INT)   
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            DECLARE @xConsec AS NUMERIC(38, 0);

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_EMPLEADO) Q);
																	
	        INSERT INTO Activos_Fijos.TBL_EMPLEADO(ID, ID_SEXO, ID_CARGO_OCUPACIONAL, ID_AREA_FUNCIONAL, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CEDULA, NO_INSS, DIRECCION, TEL_CONVENCIONAL, TEL_CELULAR_T, TEL_CELULAR_C, INGRESO, EMAIL, ID_USUARIO, ESTADO, OBSERVACIONES, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xSEXO, @xCARGO, @xAREA, @xNOMB_01, @xNOMB_02, @xAPE_01, @xAPE_02, @xCEDULA, @xINSS, @xDIRECCION, @xTEL, @xCEL_T, @xCEL_C, @xINGRESO, @xEMAIL, @xUSER, 1, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SELECT @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'REG_EMPLEADO', 'ALTA DE REGISTRO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', CEDULA = ' + @xCEDULA + ', NO_INSS = ' + @xINSS + ', NOMBRE_COMPLETO = ' + CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOMB_01, ' ', @xNOMB_02), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SELECT @xAPE_01_ANTES = PRIMER_APELLIDO, @xAPE_02_ANTES = SEGUNDO_APELLIDO, @xNOMB_01_ANTES = PRIMER_NOMBRE, @xNOMB_02_ANTES = SEGUNDO_NOMBRE
			FROM Activos_Fijos.TBL_EMPLEADO
			WHERE (ID = @xID);    
			     
	        UPDATE Activos_Fijos.TBL_EMPLEADO SET ID_SEXO = @xSEXO, ID_CARGO_OCUPACIONAL = @xCARGO, ID_AREA_FUNCIONAL = @xAREA, PRIMER_NOMBRE = @xNOMB_01, SEGUNDO_NOMBRE = @xNOMB_02, PRIMER_APELLIDO = @xAPE_01, SEGUNDO_APELLIDO = @xAPE_02, CEDULA = @xCEDULA, NO_INSS = @xINSS, DIRECCION = @xDIRECCION, TEL_CONVENCIONAL = @xTEL, TEL_CELULAR_T = @xCEL_T, TEL_CELULAR_C = @xCEL_C, INGRESO = @xINGRESO, EMAIL = @xEMAIL,
				ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
			WHERE (ID = @xID);
						
			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'EMPLEADO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', NOMBRE_COMPLETO = ' + CONCAT(@xAPE_01_ANTES, ' ', @xAPE_02_ANTES, ', ', @xNOMB_01_ANTES, ' ', @xNOMB_02_ANTES), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', NOMBRE_COMPLETO = ' + CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOMB_01, ' ', @xNOMB_02), LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END






GO
/****** Object:  StoredProcedure [Activos_Fijos].[INS_ACT_REG_PROVEEDORES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[INS_ACT_REG_PROVEEDORES]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xAPE_01 AS NVARCHAR(200) = '', @xAPE_02 AS NVARCHAR(200) = '', @xNOMB_01 AS NVARCHAR(200) = '', @xNOMB_02 AS NVARCHAR(200) = '', @xEMAIL AS NVARCHAR(1000) = '', 
			@xIDENTIFICACION AS NVARCHAR(50) = '', @xDIRECCION AS NVARCHAR(1000) = '', @xTEL AS NVARCHAR(10) = '', @xCEL_T AS NVARCHAR(10) = '', @xCEL_C AS NVARCHAR(10) = '', @xINGRESO AS DATE, @xUSER AS INT = 0, 
			@xAPE_01_ANTES AS NVARCHAR(200) = '', @xAPE_02_ANTES AS NVARCHAR(200) = '', @xNOMB_01_ANTES AS NVARCHAR(200) = '', @xNOMB_02_ANTES AS NVARCHAR(200) = '', @xIDENTIFICACION_ANTES AS NVARCHAR(50) = '',
			@yConsec AS NUMERIC(38, 0) = 0, @xSEXO AS INT = 0, @xTIPO AS INT = 0, @xTIPO_ANTES AS INT = 0, @xRAZON_SOCIAL AS NVARCHAR(200) = '', @xRAZON_SOCIAL_ANTES AS NVARCHAR(200) = '';

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT), 
            @xAPE_01 = Node.Data.value('APE_01[1]', 'NVARCHAR(200)'), @xAPE_02 = Node.Data.value('APE_02[1]', 'NVARCHAR(200)'),
			@xNOMB_01 = Node.Data.value('NOM_01[1]', 'NVARCHAR(200)'), @xNOMB_02 = Node.Data.value('NOM_02[1]', 'NVARCHAR(200)'),
			@xEMAIL = Node.Data.value('EMAIL[1]', 'NVARCHAR(1000)'), @xDIRECCION = Node.Data.value('DIR[1]', 'NVARCHAR(1000)'), 
			@xTEL = Node.Data.value('TEL[1]', 'NVARCHAR(10)'), @xINGRESO = CAST(Node.Data.value('INGRESO[1]', 'NVARCHAR(20)') AS DATE), 
			@xIDENTIFICACION = Node.Data.value('IDENTIFICACION[1]', 'NVARCHAR(50)'), @xSEXO = CAST(Node.Data.value('ID_SEXO[1]', 'NVARCHAR(50)') AS INT),
			@xTIPO = CAST(Node.Data.value('ID_TIPO[1]', 'NVARCHAR(50)') AS INT), @xRAZON_SOCIAL = Node.Data.value('RAZON_SOCIAL[1]', 'NVARCHAR(200)'),
			@xCEL_T = Node.Data.value('CEL_T[1]', 'NVARCHAR(10)'), @xCEL_C = Node.Data.value('CEL_C[1]', 'NVARCHAR(10)')
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            DECLARE @xConsec AS NUMERIC(38, 0);

            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Activos_Fijos.TBL_PROVEEDOR) Q);
																	
	        INSERT INTO Activos_Fijos.TBL_PROVEEDOR(ID, ID_SEXO, ID_TIPO, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, RAZON_SOCIAL, IDENTIFICACION, DIRECCION, TEL_CONVENCIONAL, TEL_CELULAR_T, TEL_CELULAR_C, INGRESO, EMAIL, ID_USUARIO, ESTADO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xSEXO, @xTIPO, @xNOMB_01, @xNOMB_02, @xAPE_01, @xAPE_02, @xRAZON_SOCIAL, @xIDENTIFICACION, @xDIRECCION, @xTEL, @xCEL_T, @xCEL_C, @xINGRESO, @xEMAIL, @xUSER, 1, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SELECT @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROVEEDOR', '---', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', IDENTIFICACION = ' + @xIDENTIFICACION + ', NOMBRE_COMPLETO = ' + (CASE WHEN (@xTIPO = 1) THEN CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOMB_01, ' ', @xNOMB_02) ELSE @xRAZON_SOCIAL END) +  ', ESTADO = ALTA', 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SELECT @xAPE_01_ANTES = PRIMER_APELLIDO, @xAPE_02_ANTES = SEGUNDO_APELLIDO, @xNOMB_01_ANTES = PRIMER_NOMBRE, @xNOMB_02_ANTES = SEGUNDO_NOMBRE, @xRAZON_SOCIAL_ANTES = RAZON_SOCIAL, @xIDENTIFICACION_ANTES = IDENTIFICACION, @xTIPO_ANTES = ID_TIPO
			FROM Activos_Fijos.TBL_PROVEEDOR
			WHERE (ID = @xID);    
			     
	        UPDATE Activos_Fijos.TBL_PROVEEDOR SET ID_SEXO = @xSEXO, ID_TIPO = @xTIPO, PRIMER_NOMBRE = @xNOMB_01, SEGUNDO_NOMBRE = @xNOMB_02, PRIMER_APELLIDO = @xAPE_01, SEGUNDO_APELLIDO = @xAPE_02, IDENTIFICACION = @xIDENTIFICACION, RAZON_SOCIAL = @xRAZON_SOCIAL, DIRECCION = @xDIRECCION, TEL_CONVENCIONAL = @xTEL, TEL_CELULAR_T = @xCEL_T, TEL_CELULAR_C = @xCEL_C, INGRESO = @xINGRESO, EMAIL = @xEMAIL,
				ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
			WHERE (ID = @xID);
						
			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', IDENTIFICACION = ' + @xIDENTIFICACION_ANTES + ', NOMBRE_COMPLETO = ' + (CASE WHEN (@xTIPO_ANTES = 1) THEN CONCAT(@xAPE_01_ANTES, ' ', @xAPE_02_ANTES, ', ', @xNOMB_01_ANTES, ' ', @xNOMB_02_ANTES) ELSE @xRAZON_SOCIAL_ANTES END), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', IDENTIFICACION = ' + @xIDENTIFICACION + ', NOMBRE_COMPLETO = ' + (CASE WHEN (@xTIPO = 1) THEN CONCAT(@xAPE_01, ' ', @xAPE_02, ', ', @xNOMB_01, ' ', @xNOMB_02) ELSE @xRAZON_SOCIAL END), LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END






GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_AREA_FUNCIONAL A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_AREA_FUNCIONAL A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_AREA_FUNCIONAL_AFECTABLE]
	@xFiltro as nvarchar(1000) = ''
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_AREA_FUNCIONAL A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	WHERE (xRESULT.xDESC like '%' + @xFiltro + '%')
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)             
			FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)             
			FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_CARGO_OCUPACIONAL_AFECTABLE]
	@xFiltro as nvarchar(1000) = ''
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	WHERE (xRESULT.xDESC like '%' + @xFiltro + '%')
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CARGOS_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_CARGOS_OCUPACIONAL]
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
	FROM
	(                                                                         
		SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'SI' ELSE 'NO' END) AS xDESC_EST, A.ESTADO AS xEST,
			CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
			(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
		FROM Activos_Fijos.TBL_CARGO_OCUPACIONAL A
		WHERE (A.ID > 0)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;  
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_CLASE]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_CLASE A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_CLASE A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_CLASE_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_CLASE_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_CLASE A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_COLOR]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_COLOR A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_COLOR A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_COLOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_COLOR_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_COLOR A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_EMPLEADO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_EMPLEADO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, CONCAT(xRESULT.xCOD, ' | ', xRESULT.xCEDULA, ' | ', xRESULT.xNOMBRES) AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, 
			A.SEGUNDO_NOMBRE AS xNOMB_02, CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) AS xNOMBRES, A.ID_CARGO_OCUPACIONAL AS xID_CARGO_OCUPACIONAL, D.DESCRIPCION AS xDESC_CARGO_OCUPACIONAL,
			A.ID_AREA_FUNCIONAL AS xID_AREA_FUNCIONAL, E.DESCRIPCION AS xDESC_AREA_FUNCIONAL, A.CEDULA AS xCEDULA, A.NO_INSS AS xNO_INSS, A.DIRECCION AS xDIR, A.EMAIL AS xEMAIL, 
			
			(CASE WHEN (A.ESTADO = 1) THEN 'SI' ELSE 'NO' END) AS xDESC_EST, A.ESTADO AS xEST,

			CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
			CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
			(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID) 
		FROM Activos_Fijos.TBL_EMPLEADO A
			INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
			INNER JOIN Activos_Fijos.TBL_CARGO_OCUPACIONAL D ON (A.ID_CARGO_OCUPACIONAL = D.ID)
			INNER JOIN Activos_Fijos.TBL_AREA_FUNCIONAL E ON (A.ID_AREA_FUNCIONAL = E.ID)
		WHERE (A.ID > 0)  AND (A.ESTADO = 1)                                                                                                                                                                                                                           
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_MARCA]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_MARCA A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_MARCA A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MARCA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_MARCA_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_MARCA A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_MODELO]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_MODELO A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_MODELO A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_MODELO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_MODELO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_MODELO A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_PROCEDENCIA]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)             
			FROM Activos_Fijos.TBL_PROCEDENCIA A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)             
			FROM Activos_Fijos.TBL_PROCEDENCIA A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROCEDENCIA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_PROCEDENCIA_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_PROCEDENCIA A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_PROVEEDOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_PROVEEDOR_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, CONCAT(xRESULT.xCOD, ' | ', xRESULT.xNOMBRES, ' | ', xRESULT.xDESC_TIPO) AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, 
			A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, A.SEGUNDO_NOMBRE AS xNOMB_02, A.RAZON_SOCIAL AS xRAZON_SOCIAL,
			
			(CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END) AS xNOMBRES, 
			
			A.IDENTIFICACION AS xIDENTIFICACION, A.DIRECCION AS xDIR, A.EMAIL AS xEMAIL, CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), 
			'/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
			(CASE WHEN (A.ESTADO = 1) THEN 'SI' ELSE 'NO' END) AS xEST, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), 
			'/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
			(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, A.ID_TIPO AS xID_TIPO, D.DESCRIPCION AS xDESC_TIPO, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY (CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END)) 
		FROM Activos_Fijos.TBL_PROVEEDOR A
			INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
			INNER JOIN Activos_Fijos.TBL_TIPO D ON (A.ID_TIPO = D.ID)
		WHERE (A.ID > 0) AND (A.ESTADO = 1)                                                                                                                                                                                                  
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_SEXO]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_SEXO A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_SEXO A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_SEXO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_SEXO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_SEXO A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_TIPO A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_TIPO A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_TIPO A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_ALTA]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)      
			FROM Activos_Fijos.TBL_TIPO_ALTA A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)      
			FROM Activos_Fijos.TBL_TIPO_ALTA A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_ALTA_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_ALTA_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_TIPO_ALTA A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_TIPO_CONTACTO A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)  
			FROM Activos_Fijos.TBL_TIPO_CONTACTO A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_CONTACTO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_TIPO_CONTACTO A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_CAT_TIPO_MOVIMIENTO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Activos_Fijos.TBL_TIPO_MOVIMIENTO A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END





GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Productos Nivel 1: El Producto

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_ARTICULOS]
	@xEST AS INT = 0
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;
  	
	IF (@xEST = -1)
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCOD AS xCOD, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_CLASE AS xID_CLASE, xDATOS.xDESC_CLASE AS xDESC_CLASE, xDATOS.xID_MODELO AS xID_MODELO, xDATOS.xDESC_MODELO AS xDESC_MODELO,
			xDATOS.xID_MARCA AS xID_MARCA, xDATOS.xDESC_MARCA, xDATOS.xID_COLOR AS xID_COLOR, xDATOS.xDESC_COLOR AS xDESC_COLOR, xDATOS.xDESCRIPCION AS xDESCRIPCION, xDATOS.xOBS AS xOBS, xDATOS.xSERIE AS xSERIE, xDATOS.xCOSTO AS xCOSTO, 
			xDATOS.xID_EST AS xID_EST, xDATOS.xESTADO AS xEST, xDATOS.xID_PROCEDENCIA AS xID_PROCEDENCIA, xDATOS.xDESC_PROCEDENCIA AS xDESC_PROCEDENCIA, xDATOS.xEDIT AS xEDIT, xDATOS.xFECHA_COMPRA AS xFECHA_COMPRA, xDATOS.xINGRESO AS xINGRESO, 
			xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.CODIGO AS xCODIGO, A.SERIE AS xSERIE, A.ID_PROCEDENCIA AS xID_PROCEDENCIA, F.DESCRIPCION AS xDESC_PROCEDENCIA, 
				A.ID_CLASE AS xID_CLASE, B.DESCRIPCION AS xDESC_CLASE, A.ID_MODELO AS xID_MODELO, C.DESCRIPCION AS xDESC_MODELO, A.ID_MARCA AS xID_MARCA, D.DESCRIPCION AS xDESC_MARCA, CONVERT(NVARCHAR(50), CAST(A.COSTO AS MONEY), 1) AS xCOSTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_COMPRA) AS NVARCHAR(4)), 4)) AS xFECHA_COMPRA, 
				A.ID_COLOR AS xID_COLOR, E.DESCRIPCION AS xDESC_COLOR, A.DESCRIPCION AS xDESCRIPCION, A.OBSERVACIONES AS xOBS, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xESTADO, A.ESTADO AS xID_EST,
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO, 
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ARTICULO A
				INNER JOIN Activos_Fijos.TBL_CLASE B ON (A.ID_CLASE = B.ID)
				INNER JOIN Activos_Fijos.TBL_MODELO C ON (A.ID_MODELO = C.ID)
				INNER JOIN Activos_Fijos.TBL_MARCA D ON (A.ID_MARCA = D.ID)
				INNER JOIN Activos_Fijos.TBL_COLOR E ON (A.ID_COLOR = E.ID)
				INNER JOIN Activos_Fijos.TBL_PROCEDENCIA F ON (A.ID_PROCEDENCIA = F.ID)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
	ELSE
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCOD AS xCOD, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_CLASE AS xID_CLASE, xDATOS.xDESC_CLASE AS xDESC_CLASE, xDATOS.xID_MODELO AS xID_MODELO, xDATOS.xDESC_MODELO AS xDESC_MODELO,
			xDATOS.xID_MARCA AS xID_MARCA, xDATOS.xDESC_MARCA, xDATOS.xID_COLOR AS xID_COLOR, xDATOS.xDESC_COLOR AS xDESC_COLOR, xDATOS.xDESCRIPCION AS xDESCRIPCION, xDATOS.xOBS AS xOBS, xDATOS.xSERIE AS xSERIE, xDATOS.xCOSTO AS xCOSTO, 
			xDATOS.xID_EST AS xID_EST, xDATOS.xESTADO AS xEST, xDATOS.xID_PROCEDENCIA AS xID_PROCEDENCIA, xDATOS.xDESC_PROCEDENCIA AS xDESC_PROCEDENCIA, xDATOS.xEDIT AS xEDIT, xDATOS.xFECHA_COMPRA AS xFECHA_COMPRA, xDATOS.xINGRESO AS xINGRESO, 
			xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.CODIGO AS xCODIGO, A.SERIE AS xSERIE, A.ID_PROCEDENCIA AS xID_PROCEDENCIA, F.DESCRIPCION AS xDESC_PROCEDENCIA, 
				A.ID_CLASE AS xID_CLASE, B.DESCRIPCION AS xDESC_CLASE, A.ID_MODELO AS xID_MODELO, C.DESCRIPCION AS xDESC_MODELO, A.ID_MARCA AS xID_MARCA, D.DESCRIPCION AS xDESC_MARCA, CONVERT(NVARCHAR(50), CAST(A.COSTO AS MONEY), 1) AS xCOSTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_COMPRA) AS NVARCHAR(4)), 4)) AS xFECHA_COMPRA, 
				A.ID_COLOR AS xID_COLOR, E.DESCRIPCION AS xDESC_COLOR, A.DESCRIPCION AS xDESCRIPCION, A.OBSERVACIONES AS xOBS, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xESTADO, A.ESTADO AS xID_EST,
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO, 
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ARTICULO A
				INNER JOIN Activos_Fijos.TBL_CLASE B ON (A.ID_CLASE = B.ID)
				INNER JOIN Activos_Fijos.TBL_MODELO C ON (A.ID_MODELO = C.ID)
				INNER JOIN Activos_Fijos.TBL_MARCA D ON (A.ID_MARCA = D.ID)
				INNER JOIN Activos_Fijos.TBL_COLOR E ON (A.ID_COLOR = E.ID)
				INNER JOIN Activos_Fijos.TBL_PROCEDENCIA F ON (A.ID_PROCEDENCIA = F.ID)
		) AS xDATOS
		WHERE (xDATOS.xID_EST = @xEST)
		ORDER BY xDATOS.RowNumber;
	END

END



GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ARTICULOS_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_ARTICULOS_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xCODIGO AS xSIBE, xRESULT.xDESCRIPCION AS xDESCRIPCION, xRESULT.xSERIE AS xSERIE, xRESULT.xDESC_PROCEDENCIA AS xPROCEDENCIA, xRESULT.xDESC_MODELO AS xMODELO, xRESULT.xDESC_MARCA AS xMARCA, xRESULT.xDESC_COLOR AS xCOLOR, xRESULT.xCOSTO AS xCOSTO
	FROM
	(                                                                                                                                                 
		SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.CODIGO AS xCODIGO, A.SERIE AS xSERIE, A.ID_PROCEDENCIA AS xID_PROCEDENCIA, F.DESCRIPCION AS xDESC_PROCEDENCIA, 
				A.ID_CLASE AS xID_CLASE, B.DESCRIPCION AS xDESC_CLASE, A.ID_MODELO AS xID_MODELO, C.DESCRIPCION AS xDESC_MODELO, A.ID_MARCA AS xID_MARCA, D.DESCRIPCION AS xDESC_MARCA, CONVERT(NVARCHAR(50), CAST(A.COSTO AS MONEY), 1) AS xCOSTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_COMPRA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_COMPRA) AS NVARCHAR(4)), 4)) AS xFECHA_COMPRA, 
				A.ID_COLOR AS xID_COLOR, E.DESCRIPCION AS xDESC_COLOR, A.DESCRIPCION AS xDESCRIPCION, A.OBSERVACIONES AS xOBS, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xESTADO, A.ESTADO AS xID_EST,
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO, 
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
		FROM Activos_Fijos.TBL_ARTICULO A
			INNER JOIN Activos_Fijos.TBL_CLASE B ON (A.ID_CLASE = B.ID)
			INNER JOIN Activos_Fijos.TBL_MODELO C ON (A.ID_MODELO = C.ID)
			INNER JOIN Activos_Fijos.TBL_MARCA D ON (A.ID_MARCA = D.ID)
			INNER JOIN Activos_Fijos.TBL_COLOR E ON (A.ID_COLOR = E.ID)
			INNER JOIN Activos_Fijos.TBL_PROCEDENCIA F ON (A.ID_PROCEDENCIA = F.ID)
		WHERE (A.ID > 0)  AND (A.ESTADO = 1)                                                                                                                                                                                                                           
    ) AS xRESULT
	WHERE (xRESULT.xID NOT IN(SELECT ID_ARTICULO FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC IN(SELECT ID FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC WHERE (ESTADO = 1)))))
	ORDER BY xRESULT.RowNumber;                                                                                                           
END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_DET]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Activos_Fijos.Listar_REG_ASIGNACIONES_DET 1;

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_DET]
	@xID AS NUMERIC(38, 0) = 0
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;

	
	SELECT xDATOS.xID AS xID, xDATOS.xID_ARTICULO AS xID_ARTICULO, xDATOS.xCODIGO AS xCODIGO, xDATOS.xSERIE AS xSERIE,
		xDATOS.xDESC_ARTICULO AS xDESC_ARTICULO, xDATOS.xPROCEDENCIA AS xPROCEDENCIA, xDATOS.xMODELO AS xMODELO, xDATOS.xMARCA AS xMARCA, 
		xDATOS.xCLASE AS xCLASE, xDATOS.xCOSTO AS xCOSTO, xDATOS.xCOLOR AS xCOLOR
	FROM
	(
		SELECT 
			A.ID AS xID, A.ID_ENC AS xID_ENC, A.ID_ARTICULO AS xID_ARTICULO, B.CODIGO AS xCODIGO, B.SERIE AS xSERIE, B.DESCRIPCION AS xDESC_ARTICULO, 

			G.DESCRIPCION AS xPROCEDENCIA, C.DESCRIPCION AS xCLASE, D.DESCRIPCION AS xMODELO, E.DESCRIPCION AS xMARCA, F.DESCRIPCION AS xCOLOR,
			
			CONVERT(NVARCHAR(50), CAST(A.COSTO AS MONEY), 1) AS xCOSTO, 
								
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
		FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET A
			INNER JOIN Activos_Fijos.TBL_ARTICULO B ON (A.ID_ARTICULO = B.ID)
			INNER JOIN Activos_Fijos.TBL_CLASE C ON (B.ID_CLASE = C.ID)
			INNER JOIN Activos_Fijos.TBL_MODELO D ON (B.ID_MODELO = D.ID)
			INNER JOIN Activos_Fijos.TBL_MARCA E ON (B.ID_MARCA = E.ID)
			INNER JOIN Activos_Fijos.TBL_COLOR F ON (B.ID_COLOR = F.ID)
			INNER JOIN Activos_Fijos.TBL_PROCEDENCIA G ON (B.ID_PROCEDENCIA = G.ID)
	) AS xDATOS
	WHERE (xDATOS.xID_ENC = @xID)
	ORDER BY xDATOS.RowNumber;
	

END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_ENC]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Activos_Fijos.Listar_REG_ASIGNACIONES_ENC -1;

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_ENC]
	@xBAJA AS INT = 0
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;
  	
	
	IF (@xBAJA = -1)
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, xDATOS.xDESC_TIPO_MOVIMIENTO AS xDESC_TIPO_MOVIMIENTO, 
			xDATOS.xFECHA AS xFECHA, xDATOS.xID_EMPLEADO AS xID_EMPLEADO, xDATOS.xEMPLEADO AS xEMPLEADO, xDATOS.xCONCEPTO AS xCONCEPTO, xDATOS.xCANTIDAD AS xCANTIDAD, xDATOS.xCOSTO AS xCOSTO, 
			xDATOS.xDESC_EST AS xDESC_EST, xDATOS.xEST AS xEST, xDATOS.xDESC_BAJA AS xDESC_BAJA, xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER, xDATOS.xEDIT AS xEDIT
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCODIGO, A.ID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, C.DESCRIPCION AS xDESC_TIPO_MOVIMIENTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 

				A.ID_EMPLEADO AS xID_EMPLEADO, CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE) AS xEMPLEADO, A.CONCEPTO AS xCONCEPTO, 
  										
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
					
				CAST((SELECT COUNT(ID) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS NVARCHAR(50)) AS xCANTIDAD, 
				CONVERT(NVARCHAR(50), CAST((SELECT SUM(COSTO) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS MONEY), 1) AS xCOSTO,
										 					
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC A
				INNER JOIN Activos_Fijos.TBL_EMPLEADO B ON (A.ID_EMPLEADO = B.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO_MOVIMIENTO C ON (A.ID_TIPO_MOVIMIENTO = C.ID)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
	ELSE
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, xDATOS.xDESC_TIPO_MOVIMIENTO AS xDESC_TIPO_MOVIMIENTO, 
			xDATOS.xFECHA AS xFECHA, xDATOS.xID_EMPLEADO AS xID_EMPLEADO, xDATOS.xEMPLEADO AS xEMPLEADO, xDATOS.xCONCEPTO AS xCONCEPTO, xDATOS.xCANTIDAD AS xCANTIDAD, xDATOS.xCOSTO AS xCOSTO, 
			xDATOS.xDESC_EST AS xDESC_EST, xDATOS.xEST AS xEST, xDATOS.xDESC_BAJA AS xDESC_BAJA, xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER, xDATOS.xEDIT AS xEDIT
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCODIGO, A.ID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, C.DESCRIPCION AS xDESC_TIPO_MOVIMIENTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 

				A.ID_EMPLEADO AS xID_EMPLEADO, CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE) AS xEMPLEADO, A.CONCEPTO AS xCONCEPTO, 
  										
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
					
				CAST((SELECT COUNT(ID) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS NVARCHAR(50)) AS xCANTIDAD, 
				CONVERT(NVARCHAR(50), CAST((SELECT SUM(COSTO) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS MONEY), 1) AS xCOSTO,
										 					
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC A
				INNER JOIN Activos_Fijos.TBL_EMPLEADO B ON (A.ID_EMPLEADO = B.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO_MOVIMIENTO C ON (A.ID_TIPO_MOVIMIENTO = C.ID)
			WHERE (A.ESTADO = @xBAJA)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
  	
  	
END



GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_ASIGNACIONES_RANGO_FECHA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Activos_Fijos.Listar_REG_ASIGNACIONES_ENC -1;

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_ASIGNACIONES_RANGO_FECHA]
	@xBAJA AS INT = 0, @xDESDE AS DATE, @xHASTA AS DATE
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;
  	
	
	IF (@xBAJA = -1)
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, xDATOS.xDESC_TIPO_MOVIMIENTO AS xDESC_TIPO_MOVIMIENTO, 
			xDATOS.xFECHA AS xFECHA, xDATOS.xID_EMPLEADO AS xID_EMPLEADO, xDATOS.xEMPLEADO AS xEMPLEADO, xDATOS.xCONCEPTO AS xCONCEPTO, xDATOS.xCANTIDAD AS xCANTIDAD, xDATOS.xCOSTO AS xCOSTO, 
			xDATOS.xDESC_EST AS xDESC_EST, xDATOS.xEST AS xEST, xDATOS.xDESC_BAJA AS xDESC_BAJA, xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER, xDATOS.xEDIT AS xEDIT
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCODIGO, A.ID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, C.DESCRIPCION AS xDESC_TIPO_MOVIMIENTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 

				A.ID_EMPLEADO AS xID_EMPLEADO, CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE) AS xEMPLEADO, A.CONCEPTO AS xCONCEPTO, 
  										
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
					
				CAST((SELECT COUNT(ID) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS NVARCHAR(50)) AS xCANTIDAD, 
				CONVERT(NVARCHAR(50), CAST((SELECT SUM(COSTO) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS MONEY), 1) AS xCOSTO,
				
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC A
				INNER JOIN Activos_Fijos.TBL_EMPLEADO B ON (A.ID_EMPLEADO = B.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO_MOVIMIENTO C ON (A.ID_TIPO_MOVIMIENTO = C.ID)
			WHERE (A.FECHA BETWEEN @xDESDE AND @xHASTA)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
	ELSE
	BEGIN
		SELECT xDATOS.xID AS xID, xDATOS.xCODIGO AS xCODIGO, xDATOS.xID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, xDATOS.xDESC_TIPO_MOVIMIENTO AS xDESC_TIPO_MOVIMIENTO, 
			xDATOS.xFECHA AS xFECHA, xDATOS.xID_EMPLEADO AS xID_EMPLEADO, xDATOS.xEMPLEADO AS xEMPLEADO, xDATOS.xCONCEPTO AS xCONCEPTO, xDATOS.xCANTIDAD AS xCANTIDAD, xDATOS.xCOSTO AS xCOSTO,
			xDATOS.xDESC_EST AS xDESC_EST, xDATOS.xEST AS xEST, xDATOS.xDESC_BAJA AS xDESC_BAJA, xDATOS.xBAJA AS xBAJA, xDATOS.xUSER AS xUSER, xDATOS.xEDIT AS xEDIT
		FROM
		(
			SELECT 
				A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCODIGO, A.ID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, C.DESCRIPCION AS xDESC_TIPO_MOVIMIENTO, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 

				A.ID_EMPLEADO AS xID_EMPLEADO, CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE) AS xEMPLEADO, A.CONCEPTO AS xCONCEPTO, 
  										
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
					
				CAST((SELECT COUNT(ID) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS NVARCHAR(50)) AS xCANTIDAD, 
				CONVERT(NVARCHAR(50), CAST((SELECT SUM(COSTO) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS MONEY), 1) AS xCOSTO,
									 					
				(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC A
				INNER JOIN Activos_Fijos.TBL_EMPLEADO B ON (A.ID_EMPLEADO = B.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO_MOVIMIENTO C ON (A.ID_TIPO_MOVIMIENTO = C.ID)
			WHERE (A.ESTADO = @xBAJA) AND (A.FECHA BETWEEN @xDESDE AND @xHASTA)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
  	
  	
END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_CONTACTOS_x_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;
  	
	SELECT xDATOS.xID AS xID, xDATOS.xID_SEXO AS xID_SEXO, xDATOS.xCEDULA AS xCEDULA, xDATOS.xAPE_01 AS xAPE_01, xDATOS.xAPE_02 AS xAPE_02, xDATOS.xNOM_01 AS xNOM_01, xDATOS.xNOM_02 AS xNOM_02, xDATOS.xNOMBRE AS xNOMBRE_COMPLETO, xDATOS.xDIR AS xDIR,
		xDATOS.xDESC_SEXO AS xDESC_SEXO, xDATOS.xTEL AS xTEL, xDATOS.xCEL_T AS xCEL_T, xDATOS.xCEL_C AS xCEL_C, xDATOS.xEMAIL AS xEMAIL, xDATOS.xID_TIPO AS xID_TIPO, xDATOS.xDESC_TIPO AS xDESC_TIPO, xDATOS.xEDIT AS xEDIT, xDATOS.xINGRESO AS xINGRESO, xDATOS.xUSER AS xUSER
	FROM
	(
		SELECT RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xID, A.ID_SEXO AS xID_SEXO, A.IDENTIFICACION AS xCEDULA, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, A.PRIMER_NOMBRE AS xNOM_01, A.SEGUNDO_NOMBRE AS xNOM_02, 
			A.EMAIL AS xEMAIL, CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) AS xNOMBRE, A.DIRECCION AS xDIR, A.TEL_CONVENCIONAL AS xTEL, A.TEL_CELULAR_T AS xCEL_T, A.TEL_CELULAR_C AS xCEL_C, B.DESCRIPCION AS xDESC_SEXO, A.ID_TIPO_CONTACTO AS xID_TIPO, C.DESCRIPCION AS xDESC_TIPO,
			CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO, 
			CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_GRAB) AS NVARCHAR(4)), 4)) AS xEDIT, 
			A.ID_PROVEEDOR AS xID_PROVEEDOR, (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
		FROM Activos_Fijos.TBL_CONTACTO_PROVEEDOR A 
			INNER JOIN Activos_Fijos.TBL_SEXO B ON (A.ID_SEXO = B.ID)
			INNER JOIN Activos_Fijos.TBL_TIPO_CONTACTO C ON (A.ID_TIPO_CONTACTO = C.ID)
	) AS xDATOS
	WHERE (xDATOS.xID_PROVEEDOR = @xID) 
	ORDER BY xDATOS.RowNumber;
END


GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_EMPLEADO]
	@xBAJA AS INT = 0
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xAPE_01 AS xAPE_01, xRESULT.xAPE_02 AS xAPE_02, xRESULT.xNOMB_01 AS xNOM_01, xRESULT.xNOMB_02 AS xNOM_02, xRESULT.xEMAIL AS xEMAIL, xRESULT.xNO_INSS AS xNO_INSS,
			xRESULT.xNOMBRES AS xNOMBRE, xRESULT.xCEDULA AS xCEDULA, xRESULT.xINGRESO AS xINGRESO, xRESULT.xID_SEXO AS xID_SEXO, xRESULT.xDESC_SEXO AS xDESC_SEXO, xRESULT.xDIR AS xDIR, xRESULT.xTEL_CONVENCIONAL AS xTEL, xRESULT.xCEL_T AS xCEL_T, 
			xRESULT.xID_AREA_FUNCIONAL AS xID_AREA, xRESULT.xDESC_AREA_FUNCIONAL AS xDESC_AREA, xRESULT.xID_CARGO_OCUPACIONAL AS xID_CARGO, xRESULT.xDESC_CARGO_OCUPACIONAL AS xDESC_CARGO, xRESULT.xCEL_C AS xCEL_C,
			xRESULT.xEST AS xEST, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                                                                                                 
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, 
				A.SEGUNDO_NOMBRE AS xNOMB_02, CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) AS xNOMBRES, A.ID_CARGO_OCUPACIONAL AS xID_CARGO_OCUPACIONAL, D.DESCRIPCION AS xDESC_CARGO_OCUPACIONAL,
				A.ID_AREA_FUNCIONAL AS xID_AREA_FUNCIONAL, E.DESCRIPCION AS xDESC_AREA_FUNCIONAL, A.CEDULA AS xCEDULA, A.NO_INSS AS xNO_INSS, A.DIRECCION AS xDIR, A.TEL_CONVENCIONAL AS xTEL_CONVENCIONAL, A.TEL_CELULAR_T AS xCEL_T, A.TEL_CELULAR_C  AS xCEL_C, A.EMAIL AS xEMAIL, 
			
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,

				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID) 
			FROM Activos_Fijos.TBL_EMPLEADO A
				INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
				INNER JOIN Activos_Fijos.TBL_CARGO_OCUPACIONAL D ON (A.ID_CARGO_OCUPACIONAL = D.ID)
				INNER JOIN Activos_Fijos.TBL_AREA_FUNCIONAL E ON (A.ID_AREA_FUNCIONAL = E.ID)
			WHERE (A.ID > 0)                                                                                                                                                     
		) AS xRESULT
		ORDER BY xRESULT.RowNumber; 
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xAPE_01 AS xAPE_01, xRESULT.xAPE_02 AS xAPE_02, xRESULT.xNOMB_01 AS xNOM_01, xRESULT.xNOMB_02 AS xNOM_02, xRESULT.xEMAIL AS xEMAIL, xRESULT.xNO_INSS AS xNO_INSS,
			xRESULT.xNOMBRES AS xNOMBRE, xRESULT.xCEDULA AS xCEDULA, xRESULT.xINGRESO AS xINGRESO, xRESULT.xID_SEXO AS xID_SEXO, xRESULT.xDESC_SEXO AS xDESC_SEXO, xRESULT.xDIR AS xDIR, xRESULT.xTEL_CONVENCIONAL AS xTEL, xRESULT.xCEL_T AS xCEL_T, 
			xRESULT.xID_AREA_FUNCIONAL AS xID_AREA, xRESULT.xDESC_AREA_FUNCIONAL AS xDESC_AREA, xRESULT.xID_CARGO_OCUPACIONAL AS xID_CARGO, xRESULT.xDESC_CARGO_OCUPACIONAL AS xDESC_CARGO, xRESULT.xCEL_C AS xCEL_C,
			xRESULT.xEST AS xEST, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                                                                                                 
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, 
				A.SEGUNDO_NOMBRE AS xNOMB_02, CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) AS xNOMBRES, A.ID_CARGO_OCUPACIONAL AS xID_CARGO_OCUPACIONAL, D.DESCRIPCION AS xDESC_CARGO_OCUPACIONAL,
				A.ID_AREA_FUNCIONAL AS xID_AREA_FUNCIONAL, E.DESCRIPCION AS xDESC_AREA_FUNCIONAL, A.CEDULA AS xCEDULA, A.NO_INSS AS xNO_INSS, A.DIRECCION AS xDIR, A.TEL_CONVENCIONAL AS xTEL_CONVENCIONAL, A.TEL_CELULAR_T AS xCEL_T, A.TEL_CELULAR_C  AS xCEL_C, A.EMAIL AS xEMAIL, 
			
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,

				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID) 
			FROM Activos_Fijos.TBL_EMPLEADO A
				INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
				INNER JOIN Activos_Fijos.TBL_CARGO_OCUPACIONAL D ON (A.ID_CARGO_OCUPACIONAL = D.ID)
				INNER JOIN Activos_Fijos.TBL_AREA_FUNCIONAL E ON (A.ID_AREA_FUNCIONAL = E.ID)
			WHERE (A.ID > 0)                                                                                                                                                     
		) AS xRESULT
		WHERE (xRESULT.xEST = @xBAJA)
		ORDER BY xRESULT.RowNumber; 
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_EMPLEADO_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_EMPLEADO_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCODIGO, xRESULT.xCEDULA AS xCEDULA, xRESULT.xNOMBRES AS xNOMBRES, xRESULT.xDESC_CARGO_OCUPACIONAL AS xCARGO, xRESULT.xDESC_AREA_FUNCIONAL AS xCENTRO_COSTO
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) AS xNOMBRES, 
			A.CEDULA AS xCEDULA, E.DESCRIPCION AS xDESC_AREA_FUNCIONAL, D.DESCRIPCION AS xDESC_CARGO_OCUPACIONAL,
			RowNumber = ROW_NUMBER() OVER (ORDER BY CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE)) 
		FROM Activos_Fijos.TBL_EMPLEADO A
			INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
			INNER JOIN Activos_Fijos.TBL_CARGO_OCUPACIONAL D ON (A.ID_CARGO_OCUPACIONAL = D.ID)
			INNER JOIN Activos_Fijos.TBL_AREA_FUNCIONAL E ON (A.ID_AREA_FUNCIONAL = E.ID)
		WHERE (A.ID > 0)  AND (A.ESTADO = 1)                                                                                                                                                                                                                           
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_HOJA_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Activos_Fijos.Listar_REG_HOJA_ASIGNACIONES 1;

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_HOJA_ASIGNACIONES]
	@xID AS NUMERIC(18, 0) = 0
AS
BEGIN
	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;

	SELECT xDATOS.xID AS xID, xDATOS.xCODIGO AS xCODIGO, xDATOS.xDESC_TIPO_MOVIMIENTO AS xDESC_TIPO_MOVIMIENTO, xDATOS.xAREA AS xAREA,
		xDATOS.xFECHA AS xFECHA, xDATOS.xEMPLEADO AS xEMPLEADO, xDATOS.xCEDULA AS xCEDULA, xDATOS.xCONCEPTO AS xCONCEPTO, xDATOS.xCANTIDAD AS xCANTIDAD, 
		xDATOS.xDESC_EST AS xDESC_EST, xDATOS.xEST AS xEST, xDATOS.xDESC_BAJA AS xDESC_BAJA, xDATOS.xBAJA AS xBAJA, xDATOS.xCARGO AS xCARGO,
		xDATOS.xCODIGO_SIBE AS xCODIGO_SIBE, xDATOS.xSERIE AS xSERIE, xDATOS.xDESC_ARTICULO AS xDESC_ARTICULO, xDATOS.xPROCEDENCIA AS xPROCEDENCIA,
		xDATOS.xCLASE AS xCLASE, xDATOS.xMODELO AS xMODELO, xDATOS.xMARCA AS xMARCA, xDATOS.xCOLOR AS xCOLOR, xDATOS.xCOSTO AS xCOSTO,
		xDATOS.xUSER AS xUSER, xDATOS.xEDIT AS xEDIT
	FROM
	(
		SELECT 
			A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCODIGO, A.ID_TIPO_MOVIMIENTO AS xID_TIPO_MOVIMIENTO, C.DESCRIPCION AS xDESC_TIPO_MOVIMIENTO, 
			CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 

			A.ID_EMPLEADO AS xID_EMPLEADO, CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE) AS xEMPLEADO, A.CONCEPTO AS xCONCEPTO, B.CEDULA AS xCEDULA,
  										
			(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
			(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
					
			CAST((SELECT COUNT(ID) FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET WHERE (ID_ENC = A.ID)) AS NVARCHAR(50)) AS xCANTIDAD, 

			E.CODIGO AS xCODIGO_SIBE, E.SERIE AS xSERIE, E.DESCRIPCION AS xDESC_ARTICULO, K.DESCRIPCION AS xCARGO, L.DESCRIPCION AS xAREA, 

			J.DESCRIPCION AS xPROCEDENCIA, F.DESCRIPCION AS xCLASE, G.DESCRIPCION AS xMODELO, H.DESCRIPCION AS xMARCA, I.DESCRIPCION AS xCOLOR,
			
			CONVERT(NVARCHAR(50), CAST(D.COSTO AS MONEY), 1) AS xCOSTO, 
										 					
			(SELECT xUID FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
		FROM Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC A
			INNER JOIN Activos_Fijos.TBL_EMPLEADO B ON (A.ID_EMPLEADO = B.ID)
			INNER JOIN Activos_Fijos.TBL_TIPO_MOVIMIENTO C ON (A.ID_TIPO_MOVIMIENTO = C.ID)
			INNER JOIN Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_DET D ON (A.ID = D.ID_ENC)
			INNER JOIN Activos_Fijos.TBL_ARTICULO E ON (D.ID_ARTICULO = E.ID)
			INNER JOIN Activos_Fijos.TBL_CLASE F ON (E.ID_CLASE = F.ID)
			INNER JOIN Activos_Fijos.TBL_MODELO G ON (E.ID_MODELO = G.ID)
			INNER JOIN Activos_Fijos.TBL_MARCA H ON (E.ID_MARCA = H.ID)
			INNER JOIN Activos_Fijos.TBL_COLOR I ON (E.ID_COLOR = I.ID)
			INNER JOIN Activos_Fijos.TBL_PROCEDENCIA J ON (E.ID_PROCEDENCIA = J.ID)
			INNER JOIN Activos_Fijos.TBL_CARGO_OCUPACIONAL K ON (B.ID_CARGO_OCUPACIONAL = K.ID)
			INNER JOIN Activos_Fijos.TBL_AREA_FUNCIONAL L ON (B.ID_AREA_FUNCIONAL = L.ID)
		WHERE (A.ID = @xID)
	) AS xDATOS
	ORDER BY xDATOS.RowNumber;


END

GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_PROVEEDOR]
	@xBAJA AS INT = 0
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xAPE_01 AS xAPE_01, xRESULT.xAPE_02 AS xAPE_02, xRESULT.xNOMB_01 AS xNOM_01, xRESULT.xNOMB_02 AS xNOM_02, xRESULT.xEMAIL AS xEMAIL, xRESULT.xID_TIPO AS xID_TIPO, xRESULT.xCEL_C AS xCEL_C,
			xRESULT.xNOMBRES AS xNOMBRES, xRESULT.xIDENTIFICACION AS xIDENTIFICACION, xRESULT.xINGRESO AS xINGRESO, xRESULT.xID_SEXO AS xID_SEXO, xRESULT.xDESC_SEXO AS xDESC_SEXO, xRESULT.xDIR AS xDIR, xRESULT.xTEL AS xTEL, xRESULT.xCEL_T AS xCEL_T,
			xRESULT.xDESC_TIPO AS xDESC_TIPO, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT, xRESULT.xRAZON_SOCIAL AS xRAZON_SOCIAL
		FROM
		(                                                                                                                                                 
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, 
				A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, A.SEGUNDO_NOMBRE AS xNOMB_02, A.RAZON_SOCIAL AS xRAZON_SOCIAL,
			
				(CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END) AS xNOMBRES, 
			
				A.IDENTIFICACION AS xIDENTIFICACION, A.DIRECCION AS xDIR, A.TEL_CONVENCIONAL AS xTEL, A.TEL_CELULAR_T AS xCEL_T, A.TEL_CELULAR_C AS xCEL_C, A.EMAIL AS xEMAIL, 
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
								
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, A.ID_TIPO AS xID_TIPO, D.DESCRIPCION AS xDESC_TIPO, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID) 
			FROM Activos_Fijos.TBL_PROVEEDOR A
				INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO D ON (A.ID_TIPO = D.ID)
			WHERE (A.ID > 0)                                                                                                                                                     
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;   
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xAPE_01 AS xAPE_01, xRESULT.xAPE_02 AS xAPE_02, xRESULT.xNOMB_01 AS xNOM_01, xRESULT.xNOMB_02 AS xNOM_02, xRESULT.xEMAIL AS xEMAIL, xRESULT.xID_TIPO AS xID_TIPO, xRESULT.xCEL_C AS xCEL_C,
			xRESULT.xNOMBRES AS xNOMBRES, xRESULT.xIDENTIFICACION AS xIDENTIFICACION, xRESULT.xINGRESO AS xINGRESO, xRESULT.xID_SEXO AS xID_SEXO, xRESULT.xDESC_SEXO AS xDESC_SEXO, xRESULT.xDIR AS xDIR, xRESULT.xTEL AS xTEL, xRESULT.xCEL_T AS xCEL_T,
			xRESULT.xDESC_TIPO AS xDESC_TIPO, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT, xRESULT.xRAZON_SOCIAL AS xRAZON_SOCIAL
		FROM
		(                                                                                                                                                 
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.PRIMER_APELLIDO AS xAPE_01, A.SEGUNDO_APELLIDO AS xAPE_02, 
				A.ID_SEXO AS xID_SEXO, C.DESCRIPCION AS xDESC_SEXO, A.PRIMER_NOMBRE AS xNOMB_01, A.SEGUNDO_NOMBRE AS xNOMB_02, A.RAZON_SOCIAL AS xRAZON_SOCIAL,
			
				(CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END) AS xNOMBRES, 
			
				A.IDENTIFICACION AS xIDENTIFICACION, A.DIRECCION AS xDIR, A.TEL_CONVENCIONAL AS xTEL, A.TEL_CELULAR_T AS xCEL_T, A.TEL_CELULAR_C AS xCEL_C, A.EMAIL AS xEMAIL, 
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,

				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
								
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, 
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO) ) AS xUSER, A.ID_TIPO AS xID_TIPO, D.DESCRIPCION AS xDESC_TIPO, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID) 
			FROM Activos_Fijos.TBL_PROVEEDOR A
				INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
				INNER JOIN Activos_Fijos.TBL_TIPO D ON (A.ID_TIPO = D.ID)
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)                                                                                                                                                    
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;   
	END
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_REG_PROVEEDOR_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_REG_PROVEEDOR_AFECTABLE]
	@xFiltro AS NVARCHAR(1000) = ''
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, CONCAT(xRESULT.xIDENTIFICACION, ' | ', xRESULT.xNOMBRES, ' | ', xRESULT.xDESC_TIPO) AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.IDENTIFICACION AS xIDENTIFICACION, D.DESCRIPCION AS xDESC_TIPO, 
			(CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END) AS xNOMBRES, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY (CASE WHEN (D.DESCRIPCION = 'NATURAL') THEN CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) ELSE A.RAZON_SOCIAL END)) 
		FROM Activos_Fijos.TBL_PROVEEDOR A
			INNER JOIN Activos_Fijos.TBL_SEXO C ON (A.ID_SEXO = C.ID)
			INNER JOIN Activos_Fijos.TBL_TIPO D ON (A.ID_TIPO = D.ID)
		WHERE (A.ID > 0) AND (A.ESTADO = 1)                                                                                                                                                                                                  
    ) AS xRESULT
	WHERE ((xRESULT.xIDENTIFICACION LIKE @xFiltro + '%') OR (xRESULT.xNOMBRES LIKE '%' + @xFiltro + '%'))
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_01]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_Reportes_01]
	@xID AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
                                                                             
    SELECT ID AS xID, DESCRIPCION AS xDESC           
    FROM Activos_Fijos.TBL_REPORTE
    WHERE (ID = @xID)
    ORDER BY ID;                                     
END








GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_02]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[Listar_Reportes_02]
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
                                                                             
    SELECT ID AS xID, DESCRIPCION AS xDESC           
    FROM Activos_Fijos.TBL_REPORTE
	WHERE (ID IN(15))
    ORDER BY ID;                                     
END








GO
/****** Object:  StoredProcedure [Activos_Fijos].[Listar_Reportes_03]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Activos_Fijos].[Listar_Reportes_03]
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
                                                                             
    SELECT ID AS xID, DESCRIPCION AS xDESC           
    FROM Activos_Fijos.TBL_REPORTE
	WHERE (ID IN(22))
    ORDER BY ID;                                     
END








GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CARGO_OCUPACIONAL]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_CARGO_OCUPACIONAL SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_CARGOS_OCUPACIONALES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CENTRO_COSTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CENTRO_COSTO]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_AREA_FUNCIONAL SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_CENTRO_COSTOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_CLASE]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_CLASE SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_CLASE', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_COLOR]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_COLOR SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'BAJA DE CAT_COLOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_MARCA]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_MARCA SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_MARCA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_MODELO]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_MODELO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_MODELO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_PROCEDENCIA]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_PROCEDENCIA SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_PROCEDENCIA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_SEXO]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_SEXO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_SEXO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_ALTA]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_ALTA SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_TIPO_ALTA', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_CONTACTO_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_CONTACTO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_TIPO_CONTACTO_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_MOVIMIENTO]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO_MOVIMIENTO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_TIPO_MOVIMIENTO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_CAT_TIPO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_CAT_TIPO_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_TIPO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'CAT_COLOR', 'REACTIVAR DE CAT_TIPO_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_ARTICULOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_REG_ARTICULOS]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_ARTICULO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_ARTICULOS', 'REACTIVAR DE REG_ARTICULOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_ASIGNACIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_REG_ASIGNACIONES]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Activos_Fijos.TBL_ASIGNACION_ACTIVO_FIJO_ENC SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_ASIGNACIONES', 'REACTIVAR DE REG_ASIGNACIONES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_EMPLEADOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_REG_EMPLEADOS]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_EMPLEADO SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_EMPLEADOS', 'REACTIVAR DE REG_EMPLEADOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[REACTIVAR_REG_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[REACTIVAR_REG_PROVEEDOR]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE DB_ASIGNACION_ACTIVOS_FIJOS.Activos_Fijos.TBL_PROVEEDOR SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'REG_PROVEEDOR', 'REACTIVAR DE REG_PROVEEDOR', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Activos_Fijos].[rpt_Listar_REG_CONTACTOS_x_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Activos_Fijos].[rpt_Listar_REG_CONTACTOS_x_PROVEEDOR]
	@xEST AS INT = 0
AS
BEGIN
  	-- Instrucciones SQL
  	SET NOCOUNT ON; SET LANGUAGE spanish;
  	
	
	IF (@xEST = -1)
	BEGIN
		SELECT xDATOS.xCOD AS xCOD, xDATOS.xIDENTIFICACION AS xIDENTIFICACION, xDATOS.xNOMBRE_COMPLETO AS xNOMBRE_COMPLETO, xDATOS.xCOD_CONTACTO AS xCOD_CONTACTO, 
			xDATOS.xIDENTIFICACION_CONTACTO AS xIDENTIFICACION_CONTACTO, xDATOS.xNOMBRE_COMPLETO_CONTACTO AS xNOMBRE_COMPLETO_CONTACTO, xDATOS.xINGRESO AS xINGRESO, xDATOS.xINGRESO_CONTACTO AS xINGRESO_CONTACTO, 
			xDATOS.xTEL AS xTEL, xDATOS.xDESC_TIPO AS xDESC_TIPO, xDATOS.xDESC_EST AS xESTADO, xDATOS.xBAJA AS xBAJA, xDATOS.xEDIT AS xEDIT, xDATOS.xEDIT_CONTACTO AS xEDIT_CONTACTO
		FROM
		(
			SELECT 
				RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.IDENTIFICACION AS xIDENTIFICACION,  
				(case when (A.ID_TIPO = 1) then CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) else A.RAZON_SOCIAL end) AS xNOMBRE_COMPLETO,
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, 
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				
				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
				(case when (B.ID IS NULL) THEN '' ELSE CONCAT(RIGHT('00' + CAST(DAY(B.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(B.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(B.INGRESO) AS NVARCHAR(4)), 4)) END) AS xINGRESO_CONTACTO,

				ISNULL(RIGHT('00000' + CAST(B.ID AS NVARCHAR(5)), 5), '') AS xCOD_CONTACTO, ISNULL(B.IDENTIFICACION, '') AS xIDENTIFICACION_CONTACTO, ISNULL(CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE), '') AS xNOMBRE_COMPLETO_CONTACTO, 
				CONCAT(B.TEL_CONVENCIONAL, ', ', B.TEL_CELULAR_T, ', ', B.TEL_CELULAR_C) AS xTEL, ISNULL(C.DESCRIPCION, '') AS xDESC_TIPO, (case when (B.ID IS NULL) THEN '' ELSE 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_GRAB) AS NVARCHAR(4)), 4)) END) AS xEDIT_CONTACTO, 
								
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_GRAB) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_PROVEEDOR A
				LEFT JOIN Activos_Fijos.TBL_CONTACTO_PROVEEDOR B ON (A.ID = B.ID_PROVEEDOR)
				LEFT JOIN Activos_Fijos.TBL_TIPO_CONTACTO C ON (B.ID_TIPO_CONTACTO = C.ID)
			WHERE (A.ID > 0)
		) AS xDATOS
		ORDER BY xDATOS.RowNumber;
	END
	ELSE
	BEGIN
		SELECT xDATOS.xCOD AS xCOD, xDATOS.xIDENTIFICACION AS xIDENTIFICACION, xDATOS.xNOMBRE_COMPLETO AS xNOMBRE_COMPLETO, xDATOS.xCOD_CONTACTO AS xCOD_CONTACTO, 
			xDATOS.xIDENTIFICACION_CONTACTO AS xIDENTIFICACION_CONTACTO, xDATOS.xNOMBRE_COMPLETO_CONTACTO AS xNOMBRE_COMPLETO_CONTACTO, xDATOS.xINGRESO AS xINGRESO, xDATOS.xINGRESO_CONTACTO AS xINGRESO_CONTACTO, 
			xDATOS.xTEL AS xTEL, xDATOS.xDESC_TIPO AS xDESC_TIPO, xDATOS.xDESC_EST AS xESTADO, xDATOS.xBAJA AS xBAJA, xDATOS.xEDIT AS xEDIT, xDATOS.xEDIT_CONTACTO AS xEDIT_CONTACTO
		FROM
		(
			SELECT 
				RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.IDENTIFICACION AS xIDENTIFICACION,  
				
				(case when (A.ID_TIPO = 1) then CONCAT(A.PRIMER_APELLIDO, ' ', A.SEGUNDO_APELLIDO, ', ', A.PRIMER_NOMBRE, ' ', A.SEGUNDO_NOMBRE) else A.RAZON_SOCIAL end) AS xNOMBRE_COMPLETO,
				(CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xID_EST,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,

				CONCAT(RIGHT('00' + CAST(DAY(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.INGRESO) AS NVARCHAR(4)), 4)) AS xINGRESO,
				(case when (B.ID IS NULL) THEN '' ELSE CONCAT(RIGHT('00' + CAST(DAY(B.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(B.INGRESO) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(B.INGRESO) AS NVARCHAR(4)), 4)) END) AS xINGRESO_CONTACTO,

				ISNULL(RIGHT('00000' + CAST(B.ID AS NVARCHAR(5)), 5), '') AS xCOD_CONTACTO, ISNULL(B.IDENTIFICACION, '') AS xIDENTIFICACION_CONTACTO, ISNULL(CONCAT(B.PRIMER_APELLIDO, ' ', B.SEGUNDO_APELLIDO, ', ', B.PRIMER_NOMBRE, ' ', B.SEGUNDO_NOMBRE), '') AS xNOMBRE_COMPLETO_CONTACTO, 
				CONCAT(B.TEL_CONVENCIONAL, ', ', B.TEL_CELULAR_T, ', ', B.TEL_CELULAR_C) AS xTEL, ISNULL(C.DESCRIPCION, '') AS xDESC_TIPO, (case when (B.ID IS NULL) THEN '' ELSE 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_GRAB) AS NVARCHAR(4)), 4)) END) AS xEDIT_CONTACTO, 
															
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_GRAB) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_GRAB) AS NVARCHAR(4)), 4)) AS xEDIT, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
			FROM Activos_Fijos.TBL_PROVEEDOR A
				LEFT JOIN Activos_Fijos.TBL_CONTACTO_PROVEEDOR B ON (A.ID = B.ID_PROVEEDOR)
				LEFT JOIN Activos_Fijos.TBL_TIPO_CONTACTO C ON (B.ID_TIPO_CONTACTO = C.ID)
			WHERE (A.ID > 0)
		) AS xDATOS
		WHERE (xDATOS.xID_EST = @xEST)
		ORDER BY xDATOS.RowNumber;
	END
  	

END



GO
/****** Object:  StoredProcedure [Seguridad].[ACCESO_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[ACCESO_OPCIONES]
	@xID_USER AS INT = 0, @xROL AS INT = 0, @xOPCION AS NVARCHAR(200) = ''
AS
BEGIN                                                                                         
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                     
                                                                                                                      
    DECLARE @xCANT AS INT = 0;                                                                
                                                                                                                     
    SELECT @xCANT = COUNT(P.ID)                                                               
    FROM Seguridad.SYS_ACCESOS P                                                                    
        INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID)                                 
    WHERE (M.CODIGO_01 = @xOPCION) AND (P.ID_USUARIO = @xID_USER) AND (P.ID_ROL = @xROL) 
		AND (M.TIPO = 'ToolStripMenuItem');                                                        

    IF (@xCANT = 0)                                                                           
    BEGIN                                                                                     
        SELECT 0 AS xEJEC, 0 AS xVIS, 0 AS xIMP, 0 AS xBOR,  0 AS xINS, 0 AS xACT;            
        RETURN;                                                                               
    END                                                                                       
    
	SELECT xRESULT.xEJEC AS xEJEC, xRESULT.xVIS AS xVIS, xRESULT.xIMP AS xIMP, xRESULT.xBOR AS xBOR, 
		xRESULT.xINS AS xINS, xRESULT.xACT AS xACT
	FROM
	(                                                                                                                 
		SELECT P.EJECUTAR AS xEJEC, P.VISUALIZAR AS xVIS, P.IMPRIMIR AS xIMP, P.BORRAR AS xBOR,   
			P.INSERTAR AS xINS, P.ACTUALIZAR AS xACT, RowNumber = ROW_NUMBER() OVER (ORDER BY P.ID)                                              
		FROM Seguridad.SYS_ACCESOS P                                                                    
			INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID)                                 
		WHERE (M.CODIGO_01 = @xOPCION) AND (P.ID_USUARIO = @xID_USER) AND (P.ID_ROL = @xROL) 
			AND (M.TIPO = 'ToolStripMenuItem') 
	) AS xRESULT;                                                                            
END


GO
/****** Object:  StoredProcedure [Seguridad].[ACTUALIZAR_ACCESO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[ACTUALIZAR_ACCESO]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN                                                                                                                                    
    BEGIN TRY                                                                                                                               
        BEGIN TRANSACTION;                                                                                                                  
        SET NOCOUNT ON; SET LANGUAGE spanish; 
		                                                                                              
        DECLARE @xID AS INT = 0, @xEJEC AS INT = 0, @xVIS AS INT = 0, @xIMP AS INT = 0, @xDEL AS INT = 0, @xINS AS INT = 0,
            @xACT AS INT = 0, @xConsec AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0;

        -- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                   
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xEJEC = CAST(Node.Data.value('EJEC[1]', 'NVARCHAR(50)') AS INT), @xVIS = CAST(Node.Data.value('VIS[1]', 'NVARCHAR(50)') AS INT),
            @xIMP = CAST(Node.Data.value('IMP[1]', 'NVARCHAR(50)') AS INT), @xDEL = CAST(Node.Data.value('DEL[1]', 'NVARCHAR(50)') AS INT), @xINS = CAST(Node.Data.value('INS[1]', 'NVARCHAR(50)') AS INT), 
            @xACT = CAST(Node.Data.value('ACT[1]', 'NVARCHAR(50)') AS INT), @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)                                             
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
        
        UPDATE Seguridad.SYS_ACCESOS SET EJECUTAR = @xEJEC, VISUALIZAR = @xVIS, IMPRIMIR = @xIMP,                                                 
                BORRAR = @xDEL, INSERTAR = @xINS, ACTUALIZAR = @xACT, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)                                                                         
            WHERE (ID = @xID);                                                                                                              
                                                    
        IF (@xSESION > 0)
        BEGIN                                                                                                             
            SET @xConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                
                            FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                           
                                                                                                                                                                 
            INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                          
                VALUES(@xConsec, @xSESION, 'CONTROL DE ACCESOS', '---', 'ACTUALIZANDO LOS ACCESOS', 
                        RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)); 
        END
                                                                                                                
        COMMIT TRANSACTION; SET @xMSG = @xID;                                                                                                                
    END TRY                                                                                                                                 
    BEGIN CATCH                                                                                                                             
        ROLLBACK TRANSACTION;                                                                                                               
        SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();                                                                        
    END CATCH			                                                                                                                    
END




GO
/****** Object:  StoredProcedure [Seguridad].[Actualizar_PASSWORD_USER]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Actualizar_PASSWORD_USER]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN                                                                                                                                    
    BEGIN TRY                                                                                                                               
            BEGIN TRANSACTION;                                                                                                                  
            SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                               
                                                                                                                                                                 
            DECLARE @xConsec AS FLOAT = 0, @yConsec AS FLOAT = 0, @xID AS NUMERIC(38, 0) = 0, @xPWD AS NVARCHAR(200) = '';                 
                                                                                                                                                                  
            -- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
            DECLARE @mDATOS AS XML = @yDatos;                                                                                                   
                                                                                                                                                                 
            SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(20)') AS NUMERIC(38, 0)), @xPWD = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(200)')
            FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);                                                                                
                                                        
            UPDATE Seguridad.SYS_USUARIOS SET xPWD = @xPWD WHERE (ID = @xID);
            SET @xConsec = CAST(@xID AS INT);                                                                                                               
                                                                                                                                                                 
            IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                           
            BEGIN                                                                                                                               
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                            
                            FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                       
                                                                                                                                                                 
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                      
					VALUES(@yConsec, @xSESION, 'USUARIOS', 'CAMBIO DE PASSWORD', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', PWD = ' + @xPWD, RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8));                         
            END                                                                                                                                 
                        		                                                                                                                                    
            COMMIT TRANSACTION; SET @xMSG = RIGHT('00000' + CAST(@xConsec AS NVARCHAR(5)), 5);                                                                                                 
    END TRY                                                                                                                                 
    BEGIN CATCH                                                                                                                             
            ROLLBACK TRANSACTION;                                                                                                               
            SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();                                                                        
    END CATCH			                                                                                                                    
END


GO
/****** Object:  StoredProcedure [Seguridad].[ASIGNAR_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[ASIGNAR_ACCESOS]
	@xUSER AS INT = 0, @xROL AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	

		DECLARE @xOPT AS INT = 0, @yConsec AS NUMERIC(38, 0) = 0, @xCANT AS INT = 0;

		-- AGREGANDO LAS OPCIONES DE LOS ACCESOS
		DECLARE DATOS_ACCESOS CURSOR FOR 
			SELECT ID FROM Seguridad.SYS_OPCIONES WHERE (TIPO = 'ToolStripMenuItem') ORDER BY ID;
		OPEN DATOS_ACCESOS;
		FETCH NEXT FROM DATOS_ACCESOS INTO @xOPT;
		WHILE (@@FETCH_STATUS = 0)
		BEGIN 
			SET @xCANT = (SELECT COUNT(ID) FROM Seguridad.SYS_ACCESOS WHERE (ID_OPCIONES = @xOPT) AND (ID_USUARIO = @xUSER) AND (ID_ROL = @xROL));
			IF (@xCANT = 0)
			BEGIN
				SET @yConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END) AS CONSEC_REG
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_ACCESOS ) Q);

				INSERT INTO Seguridad.SYS_ACCESOS(ID, ID_OPCIONES, ID_USUARIO, ID_ROL, EJECUTAR, VISUALIZAR, BORRAR, IMPRIMIR, INSERTAR, ACTUALIZAR, ESTADO, BAJA, OBSERVACIONES, FECHA_GRAB, FECHA_MOD)
					VALUES(@yConsec, @xOPT, @xUSER, @xROL, 1, 1, 0, 0, 0, 0, 1, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE));
			END

			FETCH NEXT FROM DATOS_ACCESOS INTO @xOPT;
		END
		CLOSE DATOS_ACCESOS; DEALLOCATE DATOS_ACCESOS;

		IF (@xSESION > 0)
        BEGIN                                                                                                             
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                
                            FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                           
                                                                                                                                                                 
            INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                          
                VALUES(@yConsec, @xSESION, 'ACCESOS', '---', 'GENERANDO LOS ACCESOS', 
                        RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)); 
        END

		COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = '1'; -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH

END


GO
/****** Object:  StoredProcedure [Seguridad].[AUTENTICAR_USUARIO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[AUTENTICAR_USUARIO]
     @xUID AS NVARCHAR(200) = '', @xPWD AS NVARCHAR(200) = '', @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                          
                                                                                                                                                            
		DECLARE @xCANT AS INT = 0, @xUSUARIO AS INT = 0,  @xConsec AS NUMERIC(38, 0) = 0, @zConsec AS NUMERIC(38, 0) = 0, 
			@yConsec AS NUMERIC(38, 0) = 0, @xPERIODO AS NUMERIC(38, 0) = 0, @xEMPRESA AS INT = 0,
			@xQUIN AS INT = 0, @xMES AS INT = 0, @xANYO AS INT = 0, @xSUCURSAL AS INT = 0, @xITEM AS INT = 0,
			@xROL AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xBITACORA AS NUMERIC(38, 0) = 0;              
                        				                                                                                                                       
		-- VERIFICA SI EL USUARIO ESTA INACTIVO... 
		SELECT @xCANT = COUNT(U.ID)                                                                                                    
		FROM Seguridad.SYS_USUARIOS U                                                                                                        
		WHERE (U.xUID = UPPER(@xUID)) AND (U.xPWD = @xPWD) AND (U.ESTADO = 1);                                                         
		IF (@xCANT = 0)                                                                                                                
		BEGIN   
			SET @xMSG = 'CREDENCIALES DEL USUARIO NO EXISTE O ESTA DE BAJA...';                                                                                                                       
			ROLLBACK TRANSACTION; RETURN;                                                                                                
		END 

		-- PARA UN USUARIO QUE NO REQUIERA REGISTRAR SU SESION Y BITACORA                                                              
		IF (@xUID IN ('ADMIN'))                                                                                 
		BEGIN
			
			-- INGRESANDO AL MODULO A QUE SE TIENE ACCESO
			SELECT xRESULT.xID AS xID, xRESULT.xNOMBRE AS xNOMBRE, xRESULT.xDESC_ROL AS xDESC_ROL, xRESULT.xID_ROL AS xID_ROL, 
				xRESULT.xSESION AS xSESION, xRESULT.xUID AS xUID, xRESULT.xGRAL_EMPRESA AS xGRAL_EMPRESA, xRESULT.xDPTO_EMPRESA AS xDPTO_EMPRESA,
				xRESULT.xDIR_EMPRESA AS xDIR_EMPRESA
			FROM
			(                                                                                                                         
				SELECT U.ID AS xID, UPPER(U.NOMBRE_COMPLETO) AS xNOMBRE, R.DESCRIPCION AS xDESC_ROL, U.ID_ROL AS xID_ROL, 0 AS xSESION, 
					U.xUID AS xUID, 'INSTITUTO NICARAGUENSE DE LA PESCA Y ACUICULTURA - INPESCA' AS xGRAL_EMPRESA, 
					'DIRECCION GENERAL ADMINISTRATIVA FINANCIERA' AS xDIR_EMPRESA, 'DEPARTAMENTO DE CONTROL DE BIENES' AS xDPTO_EMPRESA, 
					RowNumber = ROW_NUMBER() OVER (ORDER BY U.ID)                                                                                                             
				FROM Seguridad.SYS_USUARIOS U                                                                                                    
					INNER JOIN Seguridad.SYS_ROL R ON (U.ID_ROL = R.ID)
					INNER JOIN Seguridad.SYS_ACCESOS C ON (U.ID = C.ID_USUARIO) 
					INNER JOIN Seguridad.SYS_OPCIONES D ON (C.ID_OPCIONES = D.ID) AND (D.NIVEL = 0)
				WHERE (U.xUID = UPPER(@xUID)) AND (U.xPWD = @xPWD) AND (U.ESTADO = 1) 
			) AS xRESULT;                                                    
                                                                                                                                                            
			SET @xMSG = ''; COMMIT TRANSACTION; RETURN;
		END 
	
		-- PARA TODO USUARIO DONDE SE REGISTRA SU SESION Y BITACORA                                                                                   		                                                                                                                               
		SELECT @xUSUARIO = ID, @xROL = ID_ROL                                                                                          
		FROM Seguridad.SYS_USUARIOS                                                                                                          
		WHERE (xUID = UPPER(@xUID)) AND (xPWD = @xPWD) AND (ESTADO = 1);                                                              
                        		                                                                                                                               
		-- VERIFICA SI HAY UNA SESION ACTIVA                                                                                           
		SET @xCANT = ( SELECT COUNT(ID)                                                                                                
						FROM Seguridad.SYS_SESION                                                                                             
						WHERE (ID_USUARIO = @xUSUARIO) AND (ESTADO = 1)                                                                 
						);                                                                                                               
		IF (@xCANT > 0)                                                                                                                
		BEGIN                                                                                                                          
			SELECT @xSESION = ID FROM Seguridad.SYS_SESION WHERE (ID_USUARIO = @xUSUARIO) AND (ESTADO = 1);                                  
			UPDATE Seguridad.SYS_SESION SET ESTADO = 0 WHERE (ID = @xSESION);                                                                
                                                                                                                                                            
			SET @xConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                       
						FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                   
                                                                                                                                                            
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                 
				VALUES(@xConsec, @xSESION, 'INICIO DE SESION', 'APERTURA', 'CIERRE', RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8));     
		END 

		SET @xSESION = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                           
						FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_SESION) Q);                                                        
                                                                                                                                                            
		INSERT INTO Seguridad.SYS_SESION(ID, ID_USUARIO, ID_ROL, FECHA, ESTADO)                                                              
			VALUES(@xSESION, @xUSUARIO, @xROL, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), 1);                           
                                                                                                                                                            
		SET @xBITACORA = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                         
						FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                   
                                                                                                                                                            
		INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                     
			VALUES(@xBITACORA, @xSESION, 'INICIO DE SESION', '---', 'APERTURA', RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8));          
         
		-- REGISTRO DEL USUARIO AUTENTICADO...
		SELECT xRESULT.xID AS xID, xRESULT.xNOMBRE AS xNOMBRE, xRESULT.xDESC_ROL AS xDESC_ROL, xRESULT.xID_ROL AS xID_ROL, 
			xRESULT.xSESION AS xSESION, xRESULT.xUID AS xUID, xRESULT.xGRAL_EMPRESA AS xGRAL_EMPRESA, xRESULT.xDPTO_EMPRESA AS xDPTO_EMPRESA,
			xRESULT.xDIR_EMPRESA AS xDIR_EMPRESA
		FROM
		(                                                                                                                         
			SELECT U.ID AS xID, UPPER(U.NOMBRE_COMPLETO) AS xNOMBRE, R.DESCRIPCION AS xDESC_ROL, U.ID_ROL AS xID_ROL, @xSESION AS xSESION, 
				U.xUID AS xUID, 'INSTITUTO NICARAGUENSE DE LA PESCA Y ACUICULTURA - INPESCA' AS xGRAL_EMPRESA, 
				'DIRECCION GENERAL ADMINISTRATIVA FINANCIERA' AS xDIR_EMPRESA, 'DEPARTAMENTO DE CONTROL DE BIENES' AS xDPTO_EMPRESA, 
				RowNumber = ROW_NUMBER() OVER (ORDER BY U.ID)                                                                                                               
			FROM Seguridad.SYS_USUARIOS U                                                                                                    
				INNER JOIN Seguridad.SYS_ROL R ON (U.ID_ROL = R.ID)
				INNER JOIN Seguridad.SYS_ACCESOS C ON (U.ID = C.ID_USUARIO) 
				INNER JOIN Seguridad.SYS_OPCIONES D ON (C.ID_OPCIONES = D.ID) AND (D.NIVEL = 0)
			WHERE (U.xUID = UPPER(@xUID)) AND (U.xPWD = @xPWD) AND (U.ESTADO = 1) 
		) AS xRESULT;         
		
		COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = ''; -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END


GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[BAJA_SYS_ACCESOS]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_ACCESOS SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'ACCESOS', 'BAJA DE ACCESOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[BAJA_SYS_OPCIONES]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_OPCIONES SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'SYS_OPCIONES', 'BAJA DE OPCIONES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[BAJA_SYS_ROLES]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_ROL SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'ROL', 'BAJA DE ROL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[BAJA_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[BAJA_SYS_USUARIOS]
	@xID AS NUMERIC(38, 0) = 0, @xBAJA AS DATE, @xOBS AS NVARCHAR(1000) = '', @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_USUARIOS SET BAJA = @xBAJA, ESTADO = 0, OBSERVACIONES = @xOBS WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'USUARIOS', 'BAJA DE ROL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', BAJA = ' + CAST(@xBAJA AS NVARCHAR(20)) + ', OBSERVACIONES = ' + @xOBS + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[Cerrar_Sesion]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Cerrar_Sesion]
	@xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN                                                                                                                     
    BEGIN TRY                                                                                                                
        BEGIN TRANSACTION;                                                                                                   
        SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                
                        				            
        DECLARE @xConsec AS NUMERIC(38, 0) = 0;

        UPDATE Seguridad.SYS_SESION SET ESTADO = 0 WHERE (ID = @xSESION );                                                         
                        		                    
        IF (@xSESION > 0)
        BEGIN                                                                                                 
            SET @xConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                 
                                    FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                    
                                                                                                                                                  
            INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                           
                VALUES(@xConsec, @xSESION, 'CIERRE DE SESION', 'APERTURA', 'CIERRE', 
                        RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)); 
        END
                                                                                                  
        COMMIT TRANSACTION;  SET @xMSG = '';                                                                                                
    END TRY                                                                                                                  
    BEGIN CATCH                                                                                                              
        ROLLBACK TRANSACTION;                                                                                                
        SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();                                                         
    END CATCH			                                                                                                     
END


GO
/****** Object:  StoredProcedure [Seguridad].[DEL_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[DEL_CARGA_ARCHIVOS]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @yConsec AS FLOAT; 

		DELETE FROM Seguridad.SYS_REG_CARGA_ARCHIVOS WHERE (ID = @xID);
                                                     
        IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                           
        BEGIN                                                                                                                               
        SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                            
                        FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                       
                                                                                                                                                                 
        INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                      
            VALUES(@yConsec, @xSESION, 'REG_CARGA_ARCHIVOS', 'ELIMINANDO ARCHIVO',                                   
                'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8));                         
        END             
		
	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = ''; -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[INS_ACT_SYS_OPCIONES]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0,
			@xCOD_01 AS NVARCHAR(10) = '', @xCOD_02 AS NVARCHAR(10) = '', @xNIVEL AS INT = 0, @xORDEN AS INT = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'), 
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT), @xCOD_01 = Node.Data.value('CODIGO_01[1]', 'NVARCHAR(10)'),
			@xCOD_02 = Node.Data.value('CODIGO_02[1]', 'NVARCHAR(10)'), @xNIVEL = CAST(Node.Data.value('NIVEL[1]', 'NVARCHAR(50)') AS INT),
			@xORDEN = CAST(Node.Data.value('ORDEN[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            DECLARE @xConsec AS FLOAT;
            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_OPCIONES) Q);

	        INSERT INTO Seguridad.SYS_OPCIONES(ID, CODIGO_01, CODIGO_02, DESCRIPCION, NIVEL, TIPO, ORDEN, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xCOD_01, (CASE WHEN (@xNIVEL = 2) THEN @xCOD_02 ELSE '' END), @xDESC, @xNIVEL, 'ToolStripMenuItem', @xORDEN, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'SYS_OPCIONES', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SELECT @xDESC_ANTES = DESCRIPCION  FROM Seguridad.SYS_OPCIONES WHERE (ID = @xID);  

	        UPDATE Seguridad.SYS_OPCIONES SET DESCRIPCION = @xDESC, CODIGO_01 = @xCOD_01, CODIGO_02 = (CASE WHEN (@xNIVEL = 2) THEN @xCOD_02 ELSE '' END), NIVEL = @xNIVEL, ORDEN = @xORDEN, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'SYS_OPCIONES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[INS_ACT_SYS_ROLES]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xDESC AS NVARCHAR(1000) = '', @yConsec AS NUMERIC(38, 0) = 0, @xDESC_ANTES AS NVARCHAR(1000) = '', @xUSER AS INT = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('DESCRIPCION[1]', 'NVARCHAR(1000)'),                                
            @xUSER = CAST(Node.Data.value('USER[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            DECLARE @xConsec AS FLOAT;
            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_ROL) Q);

	        INSERT INTO Seguridad.SYS_ROL(ID, DESCRIPCION, ESTADO, ID_USUARIO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xDESC, 1, @xUSER, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ROL', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			SELECT @xDESC_ANTES = DESCRIPCION  FROM Seguridad.SYS_ROL WHERE (ID = @xID);  

	        UPDATE Seguridad.SYS_ROL SET DESCRIPCION = @xDESC, ID_USUARIO = @xUSER, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'ROL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC_ANTES + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC + ', USUARIO = ' + (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Seguridad].[INS_ACT_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[INS_ACT_SYS_USUARIOS]
	@yDatos AS XML, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    SET LANGUAGE spanish;	
		
		DECLARE @xID AS INT = 0, @xID_ROL AS INT = 0, @xUID AS NVARCHAR(100) = '', @xPWD AS NVARCHAR(100) = '', @xDESC AS NVARCHAR(1000) = '', 
			@yConsec AS NUMERIC(38, 0) = 0;

		-- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                                                                
                                                                                                                                                                 
        SELECT @xID = CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS INT), @xDESC = Node.Data.value('NOMBRE[1]', 'NVARCHAR(1000)'),
			@xUID = Node.Data.value('UID[1]', 'NVARCHAR(100)'), @xPWD = Node.Data.value('PWD[1]', 'NVARCHAR(100)'),
			@xID_ROL = CAST(Node.Data.value('ROL[1]', 'NVARCHAR(50)') AS INT)
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);   
		    
	    IF (@xID = 0) -- INSERTA UN REGISTRO
	    BEGIN
            DECLARE @xConsec AS FLOAT;
            SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_USUARIOS) Q);

	        INSERT INTO Seguridad.SYS_USUARIOS(ID, ID_ROL, xUID, xPWD, NOMBRE_COMPLETO, ESTADO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, @xID_ROL, @xUID, @xPWD, @xDESC, 1, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

			SET @xID = @xConsec;

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
				SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'USUARIO', '---', 'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC , 
						LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END   
	    END
	    ELSE IF (@xID > 0) -- ACTUALIZA UN REGISTRO
	    BEGIN
			
	        UPDATE Seguridad.SYS_USUARIOS SET NOMBRE_COMPLETO = @xDESC, ID_ROL = @xID_ROL, xUID = @xUID, xPWD = @xPWD, FECHA_MOD = CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE) 
				WHERE (ID = @xID);

			IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
            BEGIN                                                                                                                                                              
            SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
								FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
				INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
					VALUES(@yConsec, @xSESION, 'USUARIO', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC , 
						'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', DESCRIPCION = ' + @xDESC , 
							LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
            END  
	    END

		-- Proceso de Control de Entrada de la Aplicacion y la generación de las Opciones del Sistema...
		-- Acceso al Sistema...
		DECLARE @xCANT AS INT = 0
		SET @xCANT = (SELECT COUNT(ID) FROM Seguridad.SYS_ACCESOS WHERE (ID_USUARIO = @xID) AND (ID_ROL = @xID_ROL) AND (ID_OPCIONES = 1));
		IF (@xCANT = 0)
		BEGIN
			SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_ACCESOS) Q);

	        INSERT INTO Seguridad.SYS_ACCESOS(ID, ID_OPCIONES, ID_ROL, ID_USUARIO, EJECUTAR, VISUALIZAR, BORRAR, IMPRIMIR, INSERTAR, ACTUALIZAR, ESTADO, OBSERVACIONES, BAJA, FECHA_GRAB, FECHA_MOD)
				VALUES(@xConsec, 1, @xID_ROL, @xID, 1, 1, 0, 0, 0, 0, 1, '', CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)); 

		END
		
	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES 
		  
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END





GO
/****** Object:  StoredProcedure [Seguridad].[INS_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[INS_CARGA_ARCHIVOS]
	@yDatos AS XML, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	TRANSACTION BEGIN;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    DECLARE @xConsec AS FLOAT, @yConsec AS FLOAT, @xID AS NUMERIC(38, 0) = 0, @xARCHIVO AS NVARCHAR(1000) = '', 
			@xEXTENSION AS NVARCHAR(1000) = '',  @xURL AS NVARCHAR(1000) = '', @xTIPO AS INT = 0, @xID_TIPO AS NUMERIC(38, 0) = 0;                 
                                                                                                                                                                  
        -- SI SE HAYA LA FORMA DE LEER UN PARAMETRO XML (ARREGLO O LISTA DINAMICA) Y SER ASIGANDO A LAS VARIABLES CORRESPONDIENTES          
        DECLARE @mDATOS AS XML = @yDatos;                                                                                                   
                                                     
        DECLARE DATOS_ARCHIVOS CURSOR FOR                                                                                                           
        SELECT CAST(Node.Data.value('ID[1]', 'NVARCHAR(50)') AS NUMERIC(38, 0)), 
            Node.Data.value('ARCHIVO[1]', 'NVARCHAR(1000)'), Node.Data.value('EXTENSION[1]', 'NVARCHAR(1000)'), 
            Node.Data.value('URL[1]', 'NVARCHAR(1000)'), CAST(Node.Data.value('TIPO[1]', 'NVARCHAR(20)') AS INT),
			CAST(Node.Data.value('ID_TIPO[1]', 'NVARCHAR(20)') AS NUMERIC(38, 0))
        FROM @mDATOS.nodes('/NewDataSet/Table1') Node(Data);                                                                                                                                     
        OPEN DATOS_ARCHIVOS;
		FETCH NEXT FROM DATOS_ARCHIVOS INTO @xID, @xARCHIVO, @xEXTENSION, @xURL, @xTIPO, @xID_TIPO;
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
        SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END)                                               
                        FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_REG_CARGA_ARCHIVOS) Q);                                                         
                                                                                                                                                                 
        INSERT INTO Seguridad.SYS_REG_CARGA_ARCHIVOS(ID, ARCHIVO, EXTENSION, URL, TIPO, ID_TIPO)                                         
            VALUES(@xConsec, @xARCHIVO, @xEXTENSION, @xURL, @xTIPO, @xID_TIPO);
                                                        
        FETCH NEXT FROM DATOS_ARCHIVOS INTO @xID, @xARCHIVO, @xEXTENSION, @xURL, @xTIPO, @xID_TIPO;
        END
        CLOSE DATOS_ARCHIVOS; DEALLOCATE DATOS_ARCHIVOS;	
                                                     
        IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                           
        BEGIN                                                                                                                               
        SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                            
                        FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                       
                                                                                                                                                                 
        INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                      
            VALUES(@yConsec, @xSESION, 'REG_CARGA_ARCHIVOS', 'CARGANDO ARCHIVOS ',                                   
                'ID = ' + CAST(@xConsec AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)), RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8));                         
        END                                                                                                                                 
                        		                                                                                                                                    
        COMMIT TRANSACTION; SET @xMSG = '';     
		 
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [Seguridad].[Listado_Opciones_Accesos]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec [Seguridad].[Listado_Opciones_Accesos] 2, 2;

CREATE PROCEDURE [Seguridad].[Listado_Opciones_Accesos]
	@xUSER AS INT = 0, @xROL AS INT = 0
AS
BEGIN                                                         
    SET NOCOUNT ON; SET LANGUAGE spanish;                     
    
	SELECT xRESULT.xOPC AS xOPC, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                 
		SELECT M.CODIGO_01 AS xOPC, M.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY M.CODIGO_01)         
		FROM Seguridad.SYS_ACCESOS P                                    
			INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID)            
		WHERE (P.ID_USUARIO = @xUSER) AND (M.TIPO = 'ToolStripMenuItem') AND (P.EJECUTAR > 0) AND (P.ID_ROL = @xROL)
	) AS xRESULT;                                            
END


GO
/****** Object:  StoredProcedure [Seguridad].[Listar_Accesos]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Seguridad.Listar_Accesos -1, 2;

CREATE PROCEDURE [Seguridad].[Listar_Accesos]
	@xBAJA AS INT = 0, @xUSER AS INT = 0, @xROL AS INT = 0
AS
BEGIN                                                                          
    SET NOCOUNT ON; SET LANGUAGE spanish;                                      
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xCOD_01 AS xCOD_01, xRESULT.xCOD_02 AS xCOD_02, xRESULT.xOPCION AS xDESC, xRESULT.xEJEC AS xEJEC, 
			xRESULT.xVIS AS xVIS, xRESULT.xIMP AS xIMP, xRESULT.xBOR AS xBOR, xRESULT.xINS AS xINS, xRESULT.xACT AS xACT, xRESULT.xDESC_EST AS xDESC_EST, 
			xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xEDIT AS xEDIT, xRESULT.xUSER AS xUSER, xRESULT.xROL AS xROL
		FROM
		(                                                                                                  
			SELECT P.ID AS xID, RIGHT('00000' + CAST(P.ID AS NVARCHAR(5)), 5) AS xCOD, UPPER(M.DESCRIPCION) AS xOPCION, P.EJECUTAR AS xEJEC, M.CODIGO_01 AS xCOD_01, M.CODIGO_02 AS xCOD_02, 
				P.VISUALIZAR AS xVIS, P.IMPRIMIR AS xIMP, P.BORRAR AS xBOR, P.INSERTAR AS xINS, P.ACTUALIZAR AS xACT,
				(CASE WHEN (P.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, P.ESTADO AS xEST, (CASE WHEN (P.ESTADO = 0) THEN P.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (P.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(P.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(P.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(P.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(P.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(P.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(P.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				RowNumber = ROW_NUMBER() OVER (ORDER BY M.ORDEN), (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = P.ID_USUARIO)) AS xUSER, (SELECT TOP(1) DESCRIPCION FROM Seguridad.SYS_ROL WHERE (ID = P.ID_ROL)) AS xROL            
			FROM Seguridad.SYS_ACCESOS P                                                     
				INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID) 
			WHERE (P.ID_USUARIO = @xUSER) AND (P.ID_ROL = @xROL) AND (M.TIPO = 'ToolStripMenuItem')  
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xCOD_01 AS xCOD_01, xRESULT.xCOD_02 AS xCOD_02, xRESULT.xOPCION AS xDESC, xRESULT.xEJEC AS xEJEC, 
			xRESULT.xVIS AS xVIS, xRESULT.xIMP AS xIMP, xRESULT.xBOR AS xBOR, xRESULT.xINS AS xINS, xRESULT.xACT AS xACT, xRESULT.xDESC_EST AS xDESC_EST, 
			xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xEDIT AS xEDIT, xRESULT.xUSER AS xUSER, xRESULT.xROL AS xROL
		FROM
		(                                                                                                  
			SELECT P.ID AS xID, RIGHT('00000' + CAST(P.ID AS NVARCHAR(5)), 5) AS xCOD, UPPER(M.DESCRIPCION) AS xOPCION, P.EJECUTAR AS xEJEC, M.CODIGO_01 AS xCOD_01, M.CODIGO_02 AS xCOD_02, 
				P.VISUALIZAR AS xVIS, P.IMPRIMIR AS xIMP, P.BORRAR AS xBOR, P.INSERTAR AS xINS, P.ACTUALIZAR AS xACT,
				(CASE WHEN (P.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, P.ESTADO AS xEST, (CASE WHEN (P.ESTADO = 0) THEN P.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (P.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(P.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(P.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(P.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(P.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(P.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(P.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				RowNumber = ROW_NUMBER() OVER (ORDER BY M.ORDEN), (SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = P.ID_USUARIO)) AS xUSER, (SELECT TOP(1) DESCRIPCION FROM Seguridad.SYS_ROL WHERE (ID = P.ID_ROL)) AS xROL                        
			FROM Seguridad.SYS_ACCESOS P                                                     
				INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID) 
			WHERE (P.ID_USUARIO = @xUSER) AND (P.ID_ROL = @xROL) AND (M.TIPO = 'ToolStripMenuItem') AND (P.ESTADO = @xBAJA)                  
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END



GO
/****** Object:  StoredProcedure [Seguridad].[Listar_Adjuntos]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_Adjuntos]
	@xID AS NUMERIC(38, 0) = 0, @xTIPO AS INT = 0
AS
BEGIN                                                           
    SET NOCOUNT ON; SET LANGUAGE spanish;                       
    
	SELECT xRESULT.xARCHIVO AS xARCHIVO, xRESULT.xEXTENSION AS xEXTENSION, xRESULT.xURL AS xURL, 
		xRESULT.xSERVER AS xSERVER, xRESULT.xID AS xID
	FROM
	(   
		SELECT ARCHIVO AS xARCHIVO, EXTENSION AS xEXTENSION, URL AS xURL, 1 AS xSERVER, ID AS xID,
		     RowNumber = ROW_NUMBER() OVER (ORDER BY ID)        
        FROM Seguridad.SYS_REG_CARGA_ARCHIVOS 
        WHERE (TIPO = @xTIPO) AND (ID_TIPO = @xID)
	) AS xRESULT;
	                              
END


GO
/****** Object:  StoredProcedure [Seguridad].[Listar_BITACORAS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_BITACORAS]
	@xSESION AS NUMERIC(38, 0) = 0
AS
BEGIN                                                           
    SET NOCOUNT ON; SET LANGUAGE spanish;                       
    
	SELECT xRESULT.xID AS xID, xRESULT.xHORA AS xHORA, xRESULT.xVENTANA AS xVENTANA, xRESULT.xANTES AS xANTES, xRESULT.xDESPUES AS xDESPUES
	FROM
	(                                                                                    
		SELECT B.ID AS xID, B.HORA AS xHORA, B.VENTANA AS xVENTANA, B.ANTES AS xANTES, B.DESPUES AS xDESPUES,
			RowNumber = ROW_NUMBER() OVER (ORDER BY B.ID)                        
		FROM Seguridad.SYS_BITACORA B                                     
		WHERE (B.ID_SESION = @xSESION)
	) AS xRESULT
	ORDER BY xRESULT.RowNumber;
	                              
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_FIRMAS_DOCUMENTOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Listar_FIRMAS_DOCUMENTOS]
	@xID AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	SELECT xRESULT.xNOMBRE AS xNOMBRE, xRESULT.xCARGO AS xCARGO, xRESULT.xAREA AS xAREA
	FROM
	(                                                                         
		SELECT NOMBRE_COMPLETO AS xNOMBRE, CARGO_OCUPACIONAL AS xCARGO, AREA_FUNCIONAL AS xAREA, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY ID)            
		FROM Seguridad.SYS_FIRMAS_DOCUMENTOS 
		WHERE (ID = @xID)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                     
END


GO
/****** Object:  StoredProcedure [Seguridad].[Listar_FOTOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Listar_FOTOS]
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	SELECT xRESULT.xLOGO_01 AS xLOGO_01, xRESULT.xLOGO_02 AS xLOGO_02
	FROM
	(                                                                         
		SELECT LOGO_01 AS xLOGO_01, LOGO_02 AS xLOGO_02, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY ID)            
		FROM Seguridad.SYS_FOTOS 
		WHERE (ACTIVO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                     
END


GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SESIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec Seguridad.Listar_SESIONES 1;

CREATE PROCEDURE [Seguridad].[Listar_SESIONES]
	@xUSUARIO AS INT = 0
AS
BEGIN                                                           
    SET NOCOUNT ON; SET LANGUAGE spanish;                       
    
	SELECT xRESULT.xID AS xID, xRESULT.xFECHA AS xFECHA, xRESULT.xUSUARIO AS xUSUARIO, xRESULT.xROL AS xROL, xRESULT.xESTADO AS xESTADO
	FROM
	(                                                                                    
		SELECT 
			A.ID AS xID, 
			CONCAT(RIGHT('00' + CAST(DAY(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA) AS NVARCHAR(4)), 4)) AS xFECHA, 				
			B.NOMBRE_COMPLETO AS xUSUARIO, C.DESCRIPCION AS xROL, (CASE WHEN (A.ESTADO = 1) THEN 'ABIERTO' ELSE 'CERRADO' END) AS xESTADO, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)                        
		FROM Seguridad.SYS_SESION A                                     
			INNER JOIN Seguridad.SYS_USUARIOS B ON (A.ID_USUARIO = B.ID)
			INNER JOIN Seguridad.SYS_ROL C ON (A.ID_ROL = C.ID)
		WHERE (A.ID_USUARIO = @xUSUARIO)
	) AS xRESULT
	ORDER BY xRESULT.RowNumber;
	                              
END



GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_NIVELES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Seguridad].[Listar_SYS_NIVELES]
AS
BEGIN
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(
		SELECT A.ID AS xID, A.CODIGO_01 AS xDESC, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)
		FROM Seguridad.SYS_OPCIONES A 
		WHERE (A.ESTADO = 1) AND (A.NIVEL = 1) 
	) AS xRESULT
	ORDER BY xRESULT.RowNumber;
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_SYS_OPCIONES]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xCOD_01 AS xCOD_01, xRESULT.xCOD_02 AS xCOD_02, xRESULT.xNIVEL AS xNIVEL, xRESULT.xDESC_NIVEL AS xDESC_NIVEL, xRESULT.xRAYA AS xRAYA, xRESULT.xORDEN AS xORDEN, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.CODIGO_01 AS xCOD_01, A.CODIGO_02 AS xCOD_02, A.DESCRIPCION AS xDESC, A.NIVEL AS xNIVEL, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA, (CASE WHEN (A.NIVEL = 1) THEN 'RESUMEN' WHEN (A.NIVEL = 2) THEN 'DETALLE' END) AS xDESC_NIVEL, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, (CASE WHEN (A.NIVEL = -1) THEN 1 ELSE 0 END) AS xRAYA, A.ORDEN AS xORDEN,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_OPCIONES A
			WHERE (A.ID > 1)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xCOD_01 AS xCOD_01, xRESULT.xCOD_02 AS xCOD_02, xRESULT.xNIVEL AS xNIVEL, xRESULT.xDESC_NIVEL AS xDESC_NIVEL, xRESULT.xRAYA AS xRAYA, xRESULT.xORDEN AS xORDEN, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.CODIGO_01 AS xCOD_01, A.CODIGO_02 AS xCOD_02, A.DESCRIPCION AS xDESC, A.NIVEL AS xNIVEL, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA, (CASE WHEN (A.NIVEL = 1) THEN 'RESUMEN' WHEN (A.NIVEL = 2) THEN 'DETALLE' END) AS xDESC_NIVEL, 
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT, (CASE WHEN (A.NIVEL = -1) THEN 1 ELSE 0 END) AS xRAYA, A.ORDEN AS xORDEN,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_OPCIONES A
			WHERE (A.ID > 1) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_SYS_ROLES]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_ROL A
			WHERE (A.ID > 0)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xUSER AS xUSER, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.DESCRIPCION AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				(SELECT NOMBRE_COMPLETO FROM Seguridad.SYS_USUARIOS WHERE (ID = A.ID_USUARIO)) AS xUSER, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_ROL A
			WHERE (A.ID > 0) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_ROLES_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_SYS_ROLES_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, A.DESCRIPCION AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.DESCRIPCION)            
		FROM Seguridad.SYS_ROL A
		WHERE (A.ID > 0) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Seguridad].[Listar_SYS_USUARIOS]
	@xBAJA AS INT = 0
AS
BEGIN                                                
    SET NOCOUNT ON; SET LANGUAGE spanish;            
    
	IF (@xBAJA = -1)
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xID_ROL AS xID_ROL, xRESULT.xDESC_ROL AS xDESC_ROL, xRESULT.xUID AS xUID, xRESULT.xPWD AS xPWD, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.NOMBRE_COMPLETO AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				A.ID_ROL AS xID_ROL, B.DESCRIPCION AS xDESC_ROL, A.xUID AS xUID, A.xPWD AS xPWD, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_USUARIOS A
				INNER JOIN Seguridad.SYS_ROL B ON (A.ID_ROL = B.ID)
			WHERE (A.ID > 1)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
	ELSE
	BEGIN
		SELECT xRESULT.xID AS xID, xRESULT.xCOD AS xCOD, xRESULT.xDESC AS xDESC, xRESULT.xID_ROL AS xID_ROL, xRESULT.xDESC_ROL AS xDESC_ROL, xRESULT.xUID AS xUID, xRESULT.xPWD AS xPWD, xRESULT.xDESC_EST AS xDESC_EST, xRESULT.xEST AS xEST, xRESULT.xDESC_BAJA AS xDESC_BAJA, xRESULT.xBAJA AS xBAJA, xRESULT.xEDIT AS xEDIT
		FROM
		(                                                                         
			SELECT A.ID AS xID, RIGHT('00000' + CAST(A.ID AS NVARCHAR(5)), 5) AS xCOD, A.NOMBRE_COMPLETO AS xDESC, (CASE WHEN (A.ESTADO = 1) THEN 'ALTA' ELSE 'BAJA' END) AS xDESC_EST, A.ESTADO AS xEST, (CASE WHEN (A.ESTADO = 0) THEN A.OBSERVACIONES ELSE '' END) AS xDESC_BAJA,
				(CASE WHEN (A.ESTADO = 0) THEN CONCAT(RIGHT('00' + CAST(DAY(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.BAJA) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.BAJA) AS NVARCHAR(4)), 4)) ELSE '' END) AS xBAJA,
				CONCAT(RIGHT('00' + CAST(DAY(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('00' + CAST(MONTH(A.FECHA_MOD) AS NVARCHAR(2)), 2), '/', RIGHT('0000' + CAST(YEAR(A.FECHA_MOD) AS NVARCHAR(4)), 4)) AS xEDIT,
				A.ID_ROL AS xID_ROL, B.DESCRIPCION AS xDESC_ROL, A.xUID AS xUID, A.xPWD AS xPWD, RowNumber = ROW_NUMBER() OVER (ORDER BY A.ID)            
			FROM Seguridad.SYS_USUARIOS A
				INNER JOIN Seguridad.SYS_ROL B ON (A.ID_ROL = B.ID)
			WHERE (A.ID > 1) AND (A.ESTADO = @xBAJA)
		) AS xRESULT
		ORDER BY xRESULT.RowNumber;  
	END
END




GO
/****** Object:  StoredProcedure [Seguridad].[Listar_SYS_USUARIOS_AFECTABLE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[Listar_SYS_USUARIOS_AFECTABLE]
AS
BEGIN                                                                                                                        
    SET NOCOUNT ON; SET LANGUAGE spanish;                                                                                    
    
	SELECT xRESULT.xID AS xID, xRESULT.xDESC AS xDESC
	FROM
	(                                                                                                                                                 
		SELECT A.ID AS xID, CONCAT(A.NOMBRE_COMPLETO, ' - ', B.DESCRIPCION, ' | ', A.ID_ROL) AS xDESC, 
			RowNumber = ROW_NUMBER() OVER (ORDER BY A.NOMBRE_COMPLETO)            
		FROM Seguridad.SYS_USUARIOS A
			INNER JOIN Seguridad.SYS_ROL B ON (A.ID_ROL = B.ID)
		WHERE (A.ID > 1) AND (A.ESTADO = 1)
    ) AS xRESULT
	ORDER BY xRESULT.RowNumber;                                                                                                           
END




GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[REACTIVAR_SYS_ACCESOS]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_ACCESOS SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'ACCESOS', 'REACTIVAR ACCESOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Seguridad].[REACTIVAR_SYS_OPCIONES]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_OPCIONES SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'SYS_OPCIONES', 'REACTIVAR SYS_OPCIONES', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_ROLES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[REACTIVAR_SYS_ROLES]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_ROL SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'ROL', 'REACTIVAR ROL', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[REACTIVAR_SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[REACTIVAR_SYS_USUARIOS]
	@xID AS NUMERIC(38, 0) = 0, @xUSER AS INT = 0, @xSESION AS NUMERIC(38, 0) = 0, @xMSG AS NVARCHAR(1000) OUTPUT
AS
BEGIN
-- INSTRUCCIONES SQL
	BEGIN TRY -- CONTROLADOR DE ERROR
	    -- SE EJECUTAN LAS INSTRUCCIONES ANTES DE UN ERROR
	    BEGIN TRANSACTION;  -- INDICA QUE INICIA UNA TRANSACCION EN SQL SERVER
	    SET NOCOUNT ON;
	    
	    DECLARE @yConsec AS NUMERIC(38, 0) = 0;
				
		UPDATE Seguridad.SYS_USUARIOS SET ESTADO = 1, OBSERVACIONES = '' WHERE (ID = @xID); 

		IF (@xSESION > 0) -- AGREGA A LA BITACORA                                                                                                                          
        BEGIN                                                                                                                                                              
			SET @yConsec = (SELECT (CASE WHEN (Q.NO_REG IS NULL) THEN 1 ELSE (Q.NO_REG + 1) END)                                                                           
							FROM (SELECT MAX(ID) AS NO_REG FROM Seguridad.SYS_BITACORA) Q);                                                                                      
                                                                                                                                                                                                
			INSERT INTO Seguridad.SYS_BITACORA(ID, ID_SESION, VENTANA, ANTES, DESPUES, HORA)                                                                                       
				VALUES(@yConsec, @xSESION, 'ROL', 'REACTIVAR USUARIOS', 'ID = ' + CAST(@xID AS NVARCHAR(50)) + ', USUARIO = ' + (SELECT CONCAT('LOGIN: ', xUID, ', NOMBRE COMPLETO: ', NOMBRE_COMPLETO) FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER)) , 
					LTRIM(RTRIM(RIGHT(CONVERT(DATETIME, GETDATE(), 108), 8)))); 
        END   

	    COMMIT TRANSACTION; -- SI NO HAY ERROR, APLICA CAMBIOS PERMANENTES  
		 
	    SET @xMSG = RIGHT('00000' + CAST(@xID AS NVARCHAR(5)), 5); -- En caso de No haber Error
	END TRY 
	BEGIN CATCH 
	    ROLLBACK TRANSACTION; -- EN CASOS DE ERROR, DESHACE LOS CAMBIOS REALIZADOS
	    SET @xMSG = 'Error en la Base de Datos: ' + ERROR_MESSAGE();
	END CATCH
END









































GO
/****** Object:  StoredProcedure [Seguridad].[URL_ARCHIVO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Seguridad].[URL_ARCHIVO]
	@xID AS NUMERIC(38, 0) = 0
AS
BEGIN                                                           
    SET NOCOUNT ON; SET LANGUAGE spanish;                       
    
	SELECT xRESULT.xDESC AS xDESC, xRESULT.xID AS xID
	FROM
	(  
		SELECT 0 AS xID, CONCAT(URL, '.', EXTENSION) AS xDESC 
        FROM Seguridad.SYS_REG_CARGA_ARCHIVOS 
        WHERE (ID = @xID)     
	) AS xRESULT;
	                              
END


GO
/****** Object:  StoredProcedure [Seguridad].[Verificar_Acceso_Opcion]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [Seguridad].[Verificar_Acceso_Opcion]
   @xUSER AS INT = 0, @xOPCION AS NVARCHAR(50)
AS
BEGIN
  DECLARE @xModo AS INT;
  SET @xModo = ( SELECT COUNT(*) 
				 FROM Seguridad.SYS_ACCESOS P 
					INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID)
				 WHERE (P.ID_USUARIO = @xUSER) AND (M.CODIGO_01 = @xOPCION) AND (M.NIVEL <> 0)
			   );
  
  IF (@xModo > 0) -- Recupera los PERMISOS ASIGNADOS AL ROL DE ACUERDO A SU MENU
  BEGIN
	SELECT (CASE WHEN P.EJECUTAR = 1 THEN 1 ELSE 0 END) AS xEJEC, (CASE WHEN P.VISUALIZAR = 1 THEN 1 ELSE 0 END) AS xVIS, 
        (CASE WHEN P.IMPRIMIR = 1 THEN 1 ELSE 0 END) AS xIMP, (CASE WHEN P.BORRAR = 1 THEN 1 ELSE 0 END) AS xBOR, 
        (CASE WHEN P.INSERTAR = 1 THEN 1 ELSE 0 END) AS xINS, (CASE WHEN P.ACTUALIZAR = 1 THEN 1 ELSE 0 END) AS xACT
	FROM Seguridad.SYS_ACCESOS P 
		INNER JOIN Seguridad.SYS_OPCIONES M ON (P.ID_OPCIONES = M.ID)
	WHERE (P.ID_USUARIO = @xUSER) AND (M.CODIGO_01 = @xOPCION) AND (M.NIVEL = 'ToolStripMenuItem') AND (P.ID_ROL = (SELECT TOP(1) ID_ROL FROM Seguridad.SYS_USUARIOS WHERE (ID = @xUSER) ))
	ORDER BY P.ID;
  END
  ELSE 
  BEGIN
    SELECT 0 AS xEJEC, 0 AS xVIS, 0 AS xIMP, 0 AS xBOR, 0 AS xINS, 0 AS xACT;
  END
END



GO
/****** Object:  Table [Activos_Fijos].[TBL_AREA_FUNCIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_AREA_FUNCIONAL_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_ARTICULO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_ARTICULO](
	[ID] [int] NOT NULL,
	[ID_MARCA] [int] NOT NULL,
	[ID_MODELO] [int] NOT NULL,
	[ID_CLASE] [int] NOT NULL,
	[ID_COLOR] [int] NOT NULL,
	[ID_PROCEDENCIA] [int] NOT NULL,
	[CODIGO] [nvarchar](50) NOT NULL,
	[SERIE] [nvarchar](50) NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[INGRESO] [date] NOT NULL,
	[FECHA_COMPRA] [date] NOT NULL,
	[COSTO] [numeric](38, 2) NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_ARTICULO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET](
	[ID] [numeric](38, 0) NOT NULL,
	[ID_ENC] [numeric](38, 0) NOT NULL,
	[ID_ARTICULO] [int] NOT NULL,
	[COSTO] [numeric](38, 2) NOT NULL,
 CONSTRAINT [PK_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC](
	[ID] [numeric](38, 0) NOT NULL,
	[ID_EMPLEADO] [int] NOT NULL,
	[ID_TIPO_MOVIMIENTO] [int] NOT NULL,
	[FECHA] [date] NOT NULL,
	[CONCEPTO] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_CARGO_OCUPACIONAL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_CARGO_OCUPACIONAL_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_CLASE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_CLASE](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_CLASE_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_COLOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_COLOR](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_COLOR_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR](
	[ID] [int] NOT NULL,
	[ID_PROVEEDOR] [int] NOT NULL,
	[ID_TIPO_CONTACTO] [int] NOT NULL,
	[ID_SEXO] [int] NOT NULL,
	[IDENTIFICACION] [nvarchar](50) NOT NULL,
	[PRIMER_APELLIDO] [nvarchar](250) NOT NULL,
	[SEGUNDO_APELLIDO] [nvarchar](250) NULL,
	[PRIMER_NOMBRE] [nvarchar](250) NOT NULL,
	[SEGUNDO_NOMBRE] [nvarchar](250) NULL,
	[DIRECCION] [nvarchar](1000) NULL,
	[TEL_CONVENCIONAL] [nvarchar](10) NULL,
	[TEL_CELULAR_T] [nvarchar](10) NULL,
	[TEL_CELULAR_C] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](1000) NULL,
	[INGRESO] [date] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
 CONSTRAINT [PK_TBL_CONTACTO_PROVEEDOR_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_EMPLEADO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_EMPLEADO](
	[ID] [int] NOT NULL,
	[ID_AREA_FUNCIONAL] [int] NOT NULL,
	[ID_CARGO_OCUPACIONAL] [int] NOT NULL,
	[ID_SEXO] [int] NOT NULL,
	[PRIMER_NOMBRE] [nvarchar](200) NOT NULL,
	[SEGUNDO_NOMBRE] [nvarchar](200) NULL,
	[PRIMER_APELLIDO] [nvarchar](200) NOT NULL,
	[SEGUNDO_APELLIDO] [nvarchar](200) NULL,
	[CEDULA] [nvarchar](50) NOT NULL,
	[NO_INSS] [nvarchar](50) NOT NULL,
	[DIRECCION] [nvarchar](1000) NULL,
	[TEL_CONVENCIONAL] [nvarchar](10) NULL,
	[TEL_CELULAR_T] [nvarchar](10) NULL,
	[TEL_CELULAR_C] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](1000) NULL,
	[INGRESO] [date] NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_EMPLEADO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_MARCA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_MARCA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_MARCA_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_MODELO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_MODELO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_MARCAS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_PROCEDENCIA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_PROCEDENCIA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_PROCEDENCIA_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_PROVEEDOR]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_PROVEEDOR](
	[ID] [int] NOT NULL,
	[ID_TIPO] [int] NOT NULL,
	[ID_SEXO] [int] NOT NULL,
	[IDENTIFICACION] [nvarchar](50) NOT NULL,
	[PRIMER_APELLIDO] [nvarchar](250) NOT NULL,
	[SEGUNDO_APELLIDO] [nvarchar](250) NULL,
	[PRIMER_NOMBRE] [nvarchar](250) NOT NULL,
	[SEGUNDO_NOMBRE] [nvarchar](250) NULL,
	[RAZON_SOCIAL] [nvarchar](200) NOT NULL,
	[DIRECCION] [nvarchar](1000) NULL,
	[TEL_CONVENCIONAL] [nvarchar](10) NULL,
	[TEL_CELULAR_T] [nvarchar](10) NULL,
	[TEL_CELULAR_C] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](1000) NULL,
	[INGRESO] [date] NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_PROVEEDOR_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_REPORTE]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_REPORTE](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_TBL_REPORTE_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_SEXO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_SEXO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](200) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_SEXO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_TIPO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](200) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_TIPO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_ALTA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_TIPO_ALTA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_TIPO_ALTA_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_CONTACTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](200) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_TIPO_CONTACTO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Activos_Fijos].[TBL_TIPO_MOVIMIENTO]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_TBL_TIPO_MOVIMIENTO_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_ACCESOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_ACCESOS](
	[ID] [int] NOT NULL,
	[ID_OPCIONES] [int] NOT NULL,
	[ID_ROL] [int] NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[EJECUTAR] [int] NOT NULL,
	[VISUALIZAR] [int] NOT NULL,
	[BORRAR] [int] NOT NULL,
	[IMPRIMIR] [int] NOT NULL,
	[INSERTAR] [int] NOT NULL,
	[ACTUALIZAR] [int] NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_SYS_ACCESOS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_BITACORA]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_BITACORA](
	[ID] [numeric](38, 0) NOT NULL,
	[ID_SESION] [numeric](38, 0) NOT NULL,
	[VENTANA] [nvarchar](200) NOT NULL,
	[ANTES] [nvarchar](1000) NULL,
	[DESPUES] [nvarchar](1000) NULL,
	[HORA] [nvarchar](50) NULL,
 CONSTRAINT [PK_SYS_BITACORA_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_FIRMAS_DOCUMENTOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS](
	[ID] [int] NOT NULL,
	[NOMBRE_COMPLETO] [nvarchar](200) NOT NULL,
	[CARGO_OCUPACIONAL] [nvarchar](1000) NOT NULL,
	[AREA_FUNCIONAL] [nvarchar](1000) NOT NULL,
	[ACTIVO] [int] NOT NULL,
 CONSTRAINT [PK_SYS_FIRMAS_DOCUMENTOS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_FOTOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_FOTOS](
	[ID] [int] NOT NULL,
	[LOGO_01] [nvarchar](1000) NOT NULL,
	[LOGO_02] [nvarchar](1000) NOT NULL,
	[ACTIVO] [int] NOT NULL,
 CONSTRAINT [PK_SYS_FOTOS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_OPCIONES]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_OPCIONES](
	[ID] [int] NOT NULL,
	[CODIGO_01] [nvarchar](200) NOT NULL,
	[CODIGO_02] [nvarchar](200) NOT NULL,
	[DESCRIPCION] [nvarchar](200) NOT NULL,
	[NIVEL] [int] NOT NULL,
	[TIPO] [nvarchar](50) NOT NULL,
	[ORDEN] [int] NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_SYS_OPCIONES_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_REG_CARGA_ARCHIVOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_REG_CARGA_ARCHIVOS](
	[ID] [int] NOT NULL,
	[ARCHIVO] [nvarchar](1000) NOT NULL,
	[EXTENSION] [nvarchar](1000) NOT NULL,
	[URL] [nvarchar](1000) NOT NULL,
	[TIPO] [int] NOT NULL,
	[ID_TIPO] [numeric](38, 0) NOT NULL,
 CONSTRAINT [PK_SYS_REG_CARGA_ARCHIVOS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_ROL]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_ROL](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_SYS_ROL_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_SESION]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_SESION](
	[ID] [numeric](38, 0) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[ID_ROL] [int] NOT NULL,
	[FECHA] [date] NOT NULL,
	[ESTADO] [int] NOT NULL,
 CONSTRAINT [PK_SYS_SESION_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Seguridad].[SYS_USUARIOS]    Script Date: 07/08/2023 18:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[SYS_USUARIOS](
	[ID] [int] NOT NULL,
	[ID_ROL] [int] NOT NULL,
	[xUID] [nvarchar](200) NOT NULL,
	[xPWD] [nvarchar](200) NOT NULL,
	[NOMBRE_COMPLETO] [nvarchar](1000) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[BAJA] [date] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NOT NULL,
	[FECHA_GRAB] [date] NOT NULL,
	[FECHA_MOD] [date] NOT NULL,
 CONSTRAINT [PK_SYS_USUARIOS_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'DIRECCION GENERAL', 0, CAST(0x85450B00 AS Date), N'PRUEBA', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'OFICINA GENERAL DEL DIRECTOR GENERAL', 0, CAST(0x83450B00 AS Date), N'REPETIDO', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'OFICINA ADMINISTRATIVA', 0, CAST(0x92450B00 AS Date), N'DFDFD', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'OFICINA DE ADQUISICIONES', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'OFICINA DE AUDITORIA INTERNA', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'OFICINA DE FINANZAS', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'DIVISION ADMINISTRATIVA FINANCIERA', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'DIRECCION DE INVESTIGACION PESQUERA', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'DIRECCION DE ORDENACION PESQUERA Y ACUICOLA', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'DIRECCION DE MONITOREO VIGILANCIA Y CONTROL', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'DIRECCION DE FOMENTO Y DESARROLLO PESQUERO', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'OFICINA DE COMUNICACION Y ACCESO A LA INFORMACION', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, N'DIRECCION DE ACUICULTURA', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, N'SUB DIRECCION GENERAL', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x82450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (15, N'DIRECCION DE PESCA ARTESANAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (16, N'DELEGACION CHINANDEGA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (17, N'DELEGACION RIVAS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (18, N'DELEGACION RACCN', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (19, N'DELEGACION RACCS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (20, N'DELEGACION RIO SAN JUAN', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (21, N'INSPECTORIA LEON', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (22, N'INSPECTORIA CORN ISLAND', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (23, N'OFICINA DE INFORMATICA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (24, N'OFICINA DE R.R.H.H', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (25, N'OFICINA DE ASESORIA LEGAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (26, N'OFICINA DE ESTADISTICA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (27, N'OFICINA DE PROYECTOS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, 3, 2, 1, 5, 5, N'159201-46101501-00002301', N'ADF12344556', N'CPU', CAST(0x93450B00 AS Date), CAST(0x92430B00 AS Date), CAST(7000.00 AS Numeric(38, 2)), 1, CAST(0xB0450B00 AS Date), N'', 2, CAST(0x93450B00 AS Date), CAST(0xAB450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, 1, 2, 1, 6, 2, N'159201-46101501-00002303', N'AWE43567', N'CPU', CAST(0x93450B00 AS Date), CAST(0x52450B00 AS Date), CAST(25600.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 1, CAST(0x93450B00 AS Date), CAST(0xA8450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, 11, 3, 1, 2, 9, N'159201-46101501-00002556', N'REW32566H', N'CPU', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(45800.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 2, CAST(0x93450B00 AS Date), CAST(0xAB450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, 12, 5, 2, 4, 7, N'15921-56101506-00001345', N'N/D', N'ESCRITORIO DE MADERA', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(2500.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 1, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, 12, 5, 2, 7, 2, N'159201-56101703-00000154', N'NN', N'ESCRITORIO DE METAL', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(3499.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, 12, 5, 2, 4, 4, N'159201-56101519-00001137', N'MM,', N'MESA DE MADERA', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(5688.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, 12, 5, 2, 4, 8, N'159201-56101519-00001136', N'NNN', N'MESA DE METAL', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(4500.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, 12, 5, 2, 7, 2, N'159201-56101702-00000220', N'AM', N'ARCHIVO DE METAL', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(6000.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, 8, 5, 2, 8, 2, N'159201-56101702-00000221', N'AM1', N'ARCHIVO DE METAL', CAST(0x93450B00 AS Date), CAST(0x99430B00 AS Date), CAST(6800.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, 12, 5, 2, 7, 2, N'159201-56101520-00000166', N'AN', N'ARMARIO DE METAL', CAST(0x93450B00 AS Date), CAST(0xB3400B00 AS Date), CAST(10900.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, 12, 5, 2, 3, 9, N'159201-24102004-00000018', N'EM', N'ESTANTE DE METAL', CAST(0x93450B00 AS Date), CAST(0xF9420B00 AS Date), CAST(11000.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, 12, 5, 2, 5, 2, N'159201-56112104-00002669', N'SG', N'SILLA GIRATORIA', CAST(0x93450B00 AS Date), CAST(0x50440B00 AS Date), CAST(6590.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, 12, 5, 2, 4, 7, N'159201-56112104-00002687', N'SE', N'SILLA DE ESPERA', CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date), CAST(3212.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, 12, 5, 2, 7, 8, N'159201-56101603-00002538', N'MP', N'MESA PLEGABLE', CAST(0x93450B00 AS Date), CAST(0x67450B00 AS Date), CAST(7800.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (15, 7, 2, 1, 5, 4, N'159201-46171603-00002359', N'A2QO194560669', N'RELOJ MARCADOR', CAST(0x93450B00 AS Date), CAST(0xFB410B00 AS Date), CAST(5150.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (16, 12, 7, 2, 3, 2, N'159201-44111905-00000877', N'PA', N'PIZARRA ACRILICA', CAST(0x93450B00 AS Date), CAST(0x35450B00 AS Date), CAST(600.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (17, 12, 7, 2, 4, 9, N'159201-44111905-00000528', N'PC', N'PIZARRA DE CORCHO', CAST(0x93450B00 AS Date), CAST(0x10440B00 AS Date), CAST(1200.00 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (18, 10, 1, 1, 5, 4, N'159201-45121504-00001221', N'WM2LA001249', N'CAMARA FOTOGRAFICA', CAST(0x93450B00 AS Date), CAST(0x36370B00 AS Date), CAST(4639.44 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (19, 8, 1, 1, 5, 2, N'159201-45121504-00001495', N'4PBNCN1F30004M', N'CAMARA DE VIDEO', CAST(0x93450B00 AS Date), CAST(0x863F0B00 AS Date), CAST(9655.49 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (20, 13, 11, 1, 5, 2, N'159201-52161512-00002662', N'ND', N'PARLANTE', CAST(0x93450B00 AS Date), CAST(0x2D410B00 AS Date), CAST(7640.08 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (21, 14, 12, 1, 5, 2, N'159201-45111704-00001583', N'0DBFH141064', N'CONSOLA', CAST(0x93450B00 AS Date), CAST(0xB83A0B00 AS Date), CAST(7963.93 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (22, 10, 1, 1, 5, 2, N'159201-43201813-00001451', N'1F2220033039', N'DISCO DURO EXTERNO', CAST(0x93450B00 AS Date), CAST(0x75350B00 AS Date), CAST(3493.61 AS Numeric(38, 2)), 1, CAST(0x93450B00 AS Date), N'ALTA DE ARTICULOS (07/07/2023)', 3, CAST(0x93450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ARTICULO] ([ID], [ID_MARCA], [ID_MODELO], [ID_CLASE], [ID_COLOR], [ID_PROCEDENCIA], [CODIGO], [SERIE], [DESCRIPCION], [INGRESO], [FECHA_COMPRA], [COSTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (23, 12, 10, 2, 7, 2, N'159201-56101703-00001077', N'ND', N'ESCRITORIO DE METAL', CAST(0x94450B00 AS Date), CAST(0x202E0B00 AS Date), CAST(1840.00 AS Numeric(38, 2)), 1, CAST(0xAF450B00 AS Date), N'', 3, CAST(0x94450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(7 AS Numeric(38, 0)), CAST(2 AS Numeric(38, 0)), 7, CAST(4500.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(8 AS Numeric(38, 0)), CAST(2 AS Numeric(38, 0)), 8, CAST(6000.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(9 AS Numeric(38, 0)), CAST(2 AS Numeric(38, 0)), 11, CAST(11000.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(10 AS Numeric(38, 0)), CAST(3 AS Numeric(38, 0)), 12, CAST(6590.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(11 AS Numeric(38, 0)), CAST(3 AS Numeric(38, 0)), 3, CAST(45800.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(12 AS Numeric(38, 0)), CAST(3 AS Numeric(38, 0)), 15, CAST(5150.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(13 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), 2, CAST(25600.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(14 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), 5, CAST(3499.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(15 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), 14, CAST(500.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(16 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), 16, CAST(600.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ([ID], [ID_ENC], [ID_ARTICULO], [COSTO]) VALUES (CAST(17 AS Numeric(38, 0)), CAST(6 AS Numeric(38, 0)), 6, CAST(5688.00 AS Numeric(38, 2)))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(1 AS Numeric(38, 0)), 6, 1, CAST(0xA6450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023)', 1, CAST(0xAB450B00 AS Date), N'', 3, CAST(0xA6450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(2 AS Numeric(38, 0)), 1, 1, CAST(0xA8450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (28/07/2023)', 1, CAST(0xA8450B00 AS Date), N'', 1, CAST(0xA8450B00 AS Date), CAST(0xAF450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(3 AS Numeric(38, 0)), 2, 1, CAST(0xA9450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (29/07/2023)', 0, CAST(0xAF450B00 AS Date), N'BAJA AL DOCUMENTO DE ASIGNACION Nº : 00003', 1, CAST(0xA9450B00 AS Date), CAST(0xAF450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(4 AS Numeric(38, 0)), 2, 1, CAST(0xA9450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (29/07/2023)', 1, CAST(0xAF450B00 AS Date), N'', 1, CAST(0xA9450B00 AS Date), CAST(0xAF450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(5 AS Numeric(38, 0)), 1, 1, CAST(0xB0450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (05/08/2023)', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID], [ID_EMPLEADO], [ID_TIPO_MOVIMIENTO], [FECHA], [CONCEPTO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (CAST(6 AS Numeric(38, 0)), 4, 1, CAST(0xB0450B00 AS Date), N'ALTA DE ASIGNACIONES DE ARTICULOS (05/08/2023)', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'ANALISTA PROGRAMADOR DE SISTEMAS', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'CONTADOR GENERAL', 0, CAST(0x85450B00 AS Date), N'KUYGKYJ', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'TECNICO ACUICOLA', 0, CAST(0x8C450B00 AS Date), N'SDGSDFG', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'RESPONSABLE CONTROL DE BIENES', 1, CAST(0x82450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x82450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'ADMINISTRADOR DE REDES', 0, CAST(0x89450B00 AS Date), N'PRUEBA', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'ADMINISTRADOR SITIO WEB', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'ANALISTA CONTABLE', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'ANALISTA DE PLANIFICACIÓN', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'ANALISTA DE TRAMITES', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'ANALISTA EN DESCENTRALIZACIÓN DE PESCA ARTESANAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'ANALISTA ESTADISTICO I', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'ANALISTA PRESUPUESTARIO I', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, N'ASESOR LEGAL DE DIRECCION SUPERIOR', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, N'ASISTENTE ADMINISTRATIVO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (15, N'ASISTENTE DE COMUNICACIÓN Y PRENSA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (16, N'ASISTENTE TECNICO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (17, N'AYUDANTE DE MANTENIMIENTO DE EDIFICIO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (18, N'CAJERO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (19, N'CONDUCTOR DE TRANSPORTE LIVIANO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (20, N'CONSERJE', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (21, N'CONTADOR A', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (22, N'CONTADOR B', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (23, N'COORDINADOR TECNICO GENERAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (24, N'ESPECIALISTA EN ACUICULTURA CONTINENTAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (25, N'ESPECIALISTA EN ACUICULTURA MARINA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (26, N'ESPECIALISTA EN INVESTIGACIÓN PESQUERA Y ACUICOLA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (27, N'ESPECIALISTA EN REGULACIÓN DE PESCA Y ACUICULTURA CONTINENTAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (28, N'ESPECIALISTA EN SISTEMA DE INFORMACIÓN CATASTRAL PESQUERO Y ACUICOLA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (29, N'ESPECIALISTA EN TRAMITES DE PROCESOS ADMINISTRATIVOS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (30, N'INSPECTOR CONTROL DE CALIDAD DE RECURSOS PESQUEROS Y ACUÍCOLA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (31, N'INSPECTOR DE PESCA Y ACUICULTURA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (32, N'JARDINERO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (33, N'JEFE DE DESPACHO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (34, N'OFICIAL ADMINISTRATIVO I', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (35, N'RECEPCIONISTA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (36, N'RESPONSABLE DE CARTERA Y COBRO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (37, N'RESPONSABLE DE COMUNICACIÓN Y PRENSA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (38, N'RESPONSABLE DE DELEGACIÓN DEPARTAMENTAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (39, N'RESPONSABLE DE DIRECCION I', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (40, N'RESPONSABLE DE PRESUPUESTO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (41, N'RESPONSABLE DE SERVICIOS GENERALES', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (42, N'RESPONSABLE DEL SISTEMA DE SEGUIMIENTO SATELITAL DE EMBARCACIONES PESQUERAS', 0, CAST(0x90450B00 AS Date), N'PRUEBA', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (43, N'RESPONSABLE DELEGACION RACCN', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (44, N'RESPONSABLE DELEGACION RACCS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (45, N'RESPONSABLE DEPARTAMENTO DE ACUICULTURA CONTINENTAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (46, N'RESPONSABLE DEPARTAMENTO DE ACUICULTURA MARINA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (47, N'RESPONSABLE DEPARTAMENTO DE INVESTIGACION PESQUERA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (48, N'RESPONSABLE DIRECCION DE ACUICULTURA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (49, N'RESPONSABLE DIRECCION DE FOMENTO Y DESARROLLO PESQUERO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (50, N'RESPONSABLE DIRECCION DE INVESTIGACION PESQUERA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (51, N'RESP. DIRECCION DE MONITOREO, VIGILANCIA Y CONTROL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x94450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (52, N'RESPONSABLE DIRECCION DE ORDENACION PESQUERA Y ACUÍCOLA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (53, N'RESPONSABLE DIRECCION DE PESCA ARTESANAL', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (54, N'RESPONSABLE DIVISION DE PLANIFICACION', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (55, N'RESPONSABLE DIVISIÓN ADMINISTRATIVA Y FINANCIERA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (56, N'RESPONSABLE OFICINA ADMINISTRATIVA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (57, N'RESPONSABLE OFICINA DE ADQUISICIONES', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (58, N'RESPONSABLE OFICINA DE AUDITORIA INTERNA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (59, N'RESP. OFICINA DE COMUNICACION Y ACCESO A LA INFORMACION', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x90450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (60, N'RESPONSABLE OFICINA DE ESTADISTICAS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (61, N'RESPONSABLE OFICINA DE FINANZAS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (62, N'RESPONSABLE OFICINA DE INFORMATICA', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (63, N'RESPONSABLE OFICINA DE PROYECTOS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (64, N'RESPONSABLE OFICINA DE RECURSOS HUMANOS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (65, N'SECRETARIA EJECUTIVA "B"', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (66, N'SUPERVISOR DE PROYECTOS', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (67, N'TECNICO EN ADQUISICIONES', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (68, N'TECNICO PRESUPUESTARIO', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (69, N'SUB DIRECTOR', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CLASE] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_CLASE] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'EQUIPOS', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x78450B00 AS Date), CAST(0x93450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CLASE] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'MOBILIARIO', 1, CAST(0x93450B00 AS Date), N'', 1, CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CLASE] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'VEHICULOS', 0, CAST(0x94450B00 AS Date), N'EHWN¿¿¿¿¿NN', 1, CAST(0x93450B00 AS Date), CAST(0x93450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CLASE] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'VEHICULOS', 1, CAST(0x97450B00 AS Date), N'', 1, CAST(0x97450B00 AS Date), CAST(0x97450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0xD8440B00 AS Date), N' ', 0, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'ROJO', 1, CAST(0x8C450B00 AS Date), N'', 2, CAST(0x76450B00 AS Date), CAST(0x9D450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'AZUL', 1, CAST(0x76450B00 AS Date), N' ', 1, CAST(0x76450B00 AS Date), CAST(0x7F450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'BLANCO', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x76450B00 AS Date), CAST(0x78450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'CAFE', 1, CAST(0x7E450B00 AS Date), N'', 1, CAST(0x76450B00 AS Date), CAST(0x7E450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'NEGRO', 1, CAST(0x76450B00 AS Date), N'', 1, CAST(0x76450B00 AS Date), CAST(0x76450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'PLATEADO', 1, CAST(0x76450B00 AS Date), N'', 1, CAST(0x76450B00 AS Date), CAST(0x76450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'CREMA', 1, CAST(0x76450B00 AS Date), N'', 1, CAST(0x76450B00 AS Date), CAST(0x76450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'AZUL/NEGRO', 1, CAST(0x76450B00 AS Date), N'', 1, CAST(0x78450B00 AS Date), CAST(0x78450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'CELESTE', 1, CAST(0x78450B00 AS Date), N'', 1, CAST(0x78450B00 AS Date), CAST(0x78450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'CELESTE', 0, CAST(0x82450B00 AS Date), N'DUPLICADO', 1, CAST(0x7C450B00 AS Date), CAST(0x7C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'BENQ', 0, CAST(0x7F450B00 AS Date), N'NO ES COLOR', 1, CAST(0x7E450B00 AS Date), CAST(0x7E450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'ROSADO', 0, CAST(0x89450B00 AS Date), N'PRUEBA', 1, CAST(0x7F450B00 AS Date), CAST(0x7F450B00 AS Date))
INSERT [Activos_Fijos].[TBL_COLOR] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, N'ROJOS', 1, CAST(0xB2450B00 AS Date), N'', 1, CAST(0xB2450B00 AS Date), CAST(0xB2450B00 AS Date))
INSERT [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ([ID], [ID_PROVEEDOR], [ID_TIPO_CONTACTO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [FECHA_GRAB], [ID_USUARIO]) VALUES (1, 2, 3, 1, N'0011702770008H', N'RIVAS', N'LOPEZ', N'CESAR', N'DWIGHT', N'MANAGUA', N'75431437 (', N'', N'', N'CESAR_RIVAS_LOPEZ@YAHOO.COM', CAST(0x80450B00 AS Date), CAST(0x80450B00 AS Date), 1)
INSERT [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ([ID], [ID_PROVEEDOR], [ID_TIPO_CONTACTO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [FECHA_GRAB], [ID_USUARIO]) VALUES (3, 3, 4, 1, N'0021010900087G', N'MARTINEZ', N'ESPINOZA', N'ORLANDO', N'JOSE', N'GRANADA, NICARAGUA', N'76754354', N'', N'', N'OMARTINEZ@HOTMAIL.COM', CAST(0xF4300B00 AS Date), CAST(0x85450B00 AS Date), 1)
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, 0, 0, 0, N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'', N' ', CAST(0xD8440B00 AS Date), 0, CAST(0x7F450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, 2, 1, 1, N'CESAR', N'DWIGHT', N'RIVAS', N'LOPEZ', N'0011702770008H', N'1827584-5', N'BARRIO MONSEÑOR LEZCANO, DE LA ESTATUA 80 VARAS AL NORTE, MANO DERECHA, PENULTIMA CASA,  MANAGUA NICARAGUA', N'75431437 (', N'', N'', N'CRIVAS@INPESCA.GOB.NI, CESAR_RIVAS_LOPEZ@YAHOO.COM.NI', CAST(0x80450B00 AS Date), 1, CAST(0x80450B00 AS Date), N'', 1, CAST(0x80450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, 2, 2, 2, N'LUISA', N'LUCIA', N'CHAVEZ', N'GUERRERO', N'6011212650066U', N'1111111111', N'GRANADA, NICARAGUA', N'22334421', N'', N'87876655', N'', CAST(0x80450B00 AS Date), 1, CAST(0x85450B00 AS Date), N'', 3, CAST(0x80450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, 3, 4, 1, N'NGUYEN', N'BLADIMIR', N'OROZCO', N'CASTILLO', N'0012507820048Y', N'15183037', N'BO. 1ERO DE MAYO, CALLE 6, CASA NO. 3', N'82103265', N'', N'', N'NOROZCOINPESCA.GOB.NI', CAST(0xCD320B00 AS Date), 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x82450B00 AS Date), CAST(0x82450B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, 13, 3, 2, N'ANA', N'JULIA', N'LOPEZ', N'', N'0012401660087T', N'', N'', N'88888888', N'', N'', N'ANALOPEZINPESCA.GOB.NI', CAST(0xE3320B00 AS Date), 1, CAST(0x86450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, 13, 25, 2, N'LYDIA', N'MERCEDES', N'AGUERO', N'GUIDO', N'2811707740011E', N'', N'CHINANDEGA', N'87657689', N'', N'', N'LAGUERO@INPESCA.GOB.NI', CAST(0x0B3A0B00 AS Date), 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x85450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_EMPLEADO] ([ID], [ID_AREA_FUNCIONAL], [ID_CARGO_OCUPACIONAL], [ID_SEXO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [CEDULA], [NO_INSS], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, 22, 22, 2, N'ANA', N'LUISA', N'TORREZ', N'', N'0012308910000Y', N'', N'MASAYA,  SOBRE LA PISTA', N'22222222', N'', N'', N'ANATORREZ.COM', CAST(0x60360B00 AS Date), 1, CAST(0x86450B00 AS Date), N'', 1, CAST(0x86450B00 AS Date), CAST(0x86450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'LENOVO', 1, CAST(0x78450B00 AS Date), N'', 1, CAST(0x78450B00 AS Date), CAST(0x78450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'GOLS STARK', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x7F450B00 AS Date), CAST(0x7F450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'DELL', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'TRIPP LITE', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'HP', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'CARRIER', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'LOGITECH', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'SANKEY', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'3M', 1, CAST(0x7E450B00 AS Date), N'', 1, CAST(0x7E450B00 AS Date), CAST(0x7E450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'ADATA', 1, CAST(0x7E450B00 AS Date), N'', 1, CAST(0x7E450B00 AS Date), CAST(0x7E450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'ALIENWARE', 1, CAST(0x7E450B00 AS Date), N'', 1, CAST(0x7E450B00 AS Date), CAST(0x7E450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'N/D', 1, CAST(0xA9450B00 AS Date), N'', 1, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, N'JUNIOR', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MARCA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, N'PEAVEY', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'A1234', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x78450B00 AS Date), CAST(0x78450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'OPTIPLEX 7050', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'OPTIPLEX 3020', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'PEDESTAL', 1, CAST(0x7B450B00 AS Date), N'', 1, CAST(0x7B450B00 AS Date), CAST(0x7B450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'CONTADOR', 1, CAST(0xA9450B00 AS Date), N'', 1, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'EJECUTIVO', 1, CAST(0xA9450B00 AS Date), N'', 3, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'CENTRO', 1, CAST(0xA9450B00 AS Date), N'', 3, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'SECRETARIAL', 1, CAST(0xA9450B00 AS Date), N'', 3, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'MADERA', 1, CAST(0xA9450B00 AS Date), N'', 3, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'METAL', 1, CAST(0xA9450B00 AS Date), N'', 3, CAST(0xA9450B00 AS Date), CAST(0xA9450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'VERTICAL', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_MODELO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'PU10AT', 1, CAST(0xB0450B00 AS Date), N'', 3, CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'A123', 0, CAST(0x8C450B00 AS Date), N'BAJA AL REGISTRO Nº : 00001', 1, CAST(0x7A450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'INPESCA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'OSPESCA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'MARAZUL', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'FAO', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'INATUN', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'FLORA Y FAUNA INTERNACIONAL', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'OIRSA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROCEDENCIA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'PASENIC', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x8C450B00 AS Date), CAST(0x8C450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROVEEDOR] ([ID], [ID_TIPO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [RAZON_SOCIAL], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, 0, 0, N' ', N' ', N' ', N' ', N' ', N' ', N' ', N' ', N'', N'', N' ', CAST(0xD8440B00 AS Date), 0, CAST(0x7A450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROVEEDOR] ([ID], [ID_TIPO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [RAZON_SOCIAL], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, 1, 1, N'0011702770008H', N'RIVAS', N'LOPEZ', N'CESAR', N'DWIGHT', N'', N'BARRIO MONSEÑOR LEZCANO, DE LA ESTATUA 80 VARAS AL NORTE, MANO DERECHA, PENULTIMA CASA, MANAGUA NICARAGUA', N'75431437 (', N'', N'', N'CRIVAS@INPESCA.GOB.NI, CESAR_RIVAS_LOPEZ@YAHOO.COM', CAST(0x80450B00 AS Date), 1, CAST(0x80450B00 AS Date), N'', 1, CAST(0x80450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROVEEDOR] ([ID], [ID_TIPO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [RAZON_SOCIAL], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, 2, 2, N'J0012350000023', N'', N'', N'', N'', N'CERVECERIA VICTORIA', N'MANAGUA', N'', N'', N'', N'', CAST(0x80450B00 AS Date), 1, CAST(0x80450B00 AS Date), N'', 1, CAST(0x80450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_PROVEEDOR] ([ID], [ID_TIPO], [ID_SEXO], [IDENTIFICACION], [PRIMER_APELLIDO], [SEGUNDO_APELLIDO], [PRIMER_NOMBRE], [SEGUNDO_NOMBRE], [RAZON_SOCIAL], [DIRECCION], [TEL_CONVENCIONAL], [TEL_CELULAR_T], [TEL_CELULAR_C], [EMAIL], [INGRESO], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, 2, 2, N'J1236477477474', N'', N'', N'', N'', N'IMPRESA REPUESTOS TECNOLOGICOS', N'ALTA MIRA, MANAGUA', N'82726564', N'', N'', N'IMPRESAREPUESTOS@GMAIL.COM', CAST(0xD23F0B00 AS Date), 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x85450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (1, N'LISTADO DE TIPO DE COLORES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (2, N'LISTADO DE TIPO DE MARCAS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (3, N'LISTADO DE TIPO DE MODELOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (4, N'LISTADO DE TIPO DE CLASES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (5, N'LISTADO DE TIPO DE PROCEDENCIAS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (6, N'LISTADO DE TIPO DE ALTAS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (7, N'LISTADO DE TIPO DE MOVIMIENTOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (8, N'LISTADO DE TIPO DE PROVEEDOR')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (9, N'LISTADO DE TIPO DE CONTACTO DE PROVEEDORES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (10, N'LISTADO DE TIPO DE SEXOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (11, N'LISTADO DE CENTROS DE COSTOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (12, N'LISTADO DE CARGOS OCUPACIONALES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (13, N'ALFABETICO DE EMPLEADOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (14, N'ALFABETICO DE PROVEEDORES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (15, N'CATALOGO DE ARTICULOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (16, N'LISTADO DE TIPO DE ROLES')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (17, N'LISTADO DE CUENTAS DE USUARIOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (18, N'LISTADO DE OPCIONES DEL SISTEMA')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (19, N'LISTADO DE ACCESOS DEL USUARIO')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (20, N'CATALOGO DE ARTICULOS (CODIGO BARRA)')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (21, N'HOJA DE ASIGNACION DE ACTIVOS FIJOS')
INSERT [Activos_Fijos].[TBL_REPORTE] ([ID], [DESCRIPCION]) VALUES (22, N'LISTADO DE ASIGNACIONES POR RANGO DE FECHAS')
INSERT [Activos_Fijos].[TBL_SEXO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_SEXO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'MASCULINO', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_SEXO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'FEMENINO', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'NATURAL', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'JURIDICO', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_ALTA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_ALTA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'ALTA POR COMPRA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_ALTA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'ALTA POR DONACION', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_ALTA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'ALTA POR PRESTAMO', 1, CAST(0x85450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_ALTA] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'ALTA POR PROYECTO VIGENTE', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_CONTACTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_CONTACTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'REPRESENTANTE GENERAL', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x93450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_CONTACTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'APODERADO GENERAL', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x82450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_CONTACTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'APODERADO ESPECIAL', 1, CAST(0x7A450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x7A450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (0, N'SIN ESPECIFICAR', 0, CAST(0x78450B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'ALTA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x7A450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'BAJA', 1, CAST(0x8C450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x83450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'REASIGNACION', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'DEVOLUCION', 1, CAST(0x83450B00 AS Date), N'', 1, CAST(0x83450B00 AS Date), CAST(0x85450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, CAST(0xD8440B00 AS Date), N' ', CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, 1, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9A450B00 AS Date), N'', CAST(0x9A450B00 AS Date), CAST(0x9A450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, 1, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9A450B00 AS Date), N'', CAST(0x9A450B00 AS Date), CAST(0x9A450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, 2, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, 3, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, 4, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, 5, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0xAE450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, 6, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0xB2450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, 7, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, 8, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, 9, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, 10, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, 11, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, 12, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (15, 13, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (16, 14, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (17, 15, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (18, 16, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (19, 17, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (20, 18, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (21, 19, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (22, 20, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (23, 21, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (24, 22, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (25, 23, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (26, 24, 2, 2, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (27, 25, 2, 2, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (28, 26, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (29, 27, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (30, 28, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (31, 29, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (32, 30, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (33, 31, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (34, 32, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (35, 33, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (36, 34, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (37, 35, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (38, 36, 2, 2, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9E450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (39, 2, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (40, 3, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (41, 4, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (42, 5, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (43, 6, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (44, 7, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (45, 8, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (46, 9, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (47, 10, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (48, 11, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (49, 12, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (50, 13, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (51, 14, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (52, 15, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (53, 16, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (54, 17, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (55, 18, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (56, 19, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (57, 20, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (58, 21, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (59, 22, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (60, 23, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (61, 24, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (62, 25, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (63, 26, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (64, 27, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (65, 28, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (66, 29, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (67, 30, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (68, 31, 1, 3, 1, 1, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (69, 32, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (70, 33, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (71, 34, 1, 3, 1, 1, 1, 1, 1, 1, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (72, 35, 1, 3, 1, 1, 0, 1, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (73, 36, 1, 3, 0, 0, 0, 0, 0, 0, 1, CAST(0x9C450B00 AS Date), N'', CAST(0x9C450B00 AS Date), CAST(0x9E450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (74, 1, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (75, 2, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (76, 3, 2, 4, 1, 1, 1, 1, 1, 1, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (77, 4, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (78, 5, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (79, 6, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (80, 7, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (81, 8, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (82, 9, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (83, 10, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (84, 11, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (85, 12, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (86, 13, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (87, 14, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (88, 15, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (89, 16, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (90, 17, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (91, 18, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (92, 19, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (93, 20, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (94, 21, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (95, 22, 2, 4, 1, 1, 1, 1, 1, 1, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (96, 23, 2, 4, 1, 1, 1, 1, 1, 1, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (97, 24, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (98, 25, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (99, 26, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (100, 27, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
GO
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (101, 28, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (102, 29, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (103, 30, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (104, 31, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (105, 32, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (106, 33, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (107, 34, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (108, 35, 2, 4, 0, 0, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (109, 36, 2, 4, 1, 1, 0, 0, 0, 0, 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xA1450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (110, 1, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (111, 2, 3, 5, 0, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (112, 3, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (113, 4, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (114, 5, 3, 5, 0, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (115, 6, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (116, 7, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (117, 8, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (118, 9, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (119, 10, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (120, 11, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (121, 12, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (122, 13, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (123, 14, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (124, 15, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (125, 16, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (126, 17, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (127, 18, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (128, 19, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (129, 20, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (130, 21, 3, 5, 0, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (131, 22, 3, 5, 0, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (132, 23, 3, 5, 0, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (133, 24, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (134, 25, 3, 5, 1, 1, 0, 1, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (135, 26, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (136, 27, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (137, 28, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (138, 29, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (139, 30, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (140, 31, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (141, 32, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (142, 33, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (143, 34, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (144, 35, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_ACCESOS] ([ID], [ID_OPCIONES], [ID_ROL], [ID_USUARIO], [EJECUTAR], [VISUALIZAR], [BORRAR], [IMPRIMIR], [INSERTAR], [ACTUALIZAR], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (145, 36, 3, 5, 1, 1, 0, 0, 0, 0, 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(1 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:19PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(2 AS Numeric(38, 0)), CAST(1 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  6:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(3 AS Numeric(38, 0)), CAST(2 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(4 AS Numeric(38, 0)), CAST(2 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(5 AS Numeric(38, 0)), CAST(3 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:49PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(6 AS Numeric(38, 0)), CAST(3 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:49PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(7 AS Numeric(38, 0)), CAST(4 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:52PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(8 AS Numeric(38, 0)), CAST(4 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:09PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(9 AS Numeric(38, 0)), CAST(5 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(10 AS Numeric(38, 0)), CAST(5 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(11 AS Numeric(38, 0)), CAST(5 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(12 AS Numeric(38, 0)), CAST(6 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:15PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(13 AS Numeric(38, 0)), CAST(6 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:15PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(14 AS Numeric(38, 0)), CAST(7 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(15 AS Numeric(38, 0)), CAST(7 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(16 AS Numeric(38, 0)), CAST(8 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  4:31PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(17 AS Numeric(38, 0)), CAST(8 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  4:31PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(18 AS Numeric(38, 0)), CAST(9 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  4:32PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(19 AS Numeric(38, 0)), CAST(9 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  4:32PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(20 AS Numeric(38, 0)), CAST(10 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  4:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(21 AS Numeric(38, 0)), CAST(10 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  4:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(22 AS Numeric(38, 0)), CAST(10 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  4:34PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(23 AS Numeric(38, 0)), CAST(11 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:01AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(24 AS Numeric(38, 0)), CAST(11 AS Numeric(38, 0)), N'COLOR', N'ID = 1, DESCRIPCION = ROJO, USUARIO = CESAR RIVAS', N'ID = 1, DESCRIPCION = ROJO, USUARIO = CESAR RIVAS', N'1:01AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(25 AS Numeric(38, 0)), CAST(11 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:02AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(26 AS Numeric(38, 0)), CAST(12 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(27 AS Numeric(38, 0)), CAST(12 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(28 AS Numeric(38, 0)), CAST(13 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(29 AS Numeric(38, 0)), CAST(13 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:58PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(30 AS Numeric(38, 0)), CAST(14 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:01PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(31 AS Numeric(38, 0)), CAST(14 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:01PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(32 AS Numeric(38, 0)), CAST(15 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:12PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(33 AS Numeric(38, 0)), CAST(15 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:15PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(34 AS Numeric(38, 0)), CAST(16 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:20PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(35 AS Numeric(38, 0)), CAST(16 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:12AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(36 AS Numeric(38, 0)), CAST(17 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:12AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(37 AS Numeric(38, 0)), CAST(17 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:26AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(38 AS Numeric(38, 0)), CAST(18 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(39 AS Numeric(38, 0)), CAST(18 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(40 AS Numeric(38, 0)), CAST(19 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:41AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(41 AS Numeric(38, 0)), CAST(19 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:52AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(42 AS Numeric(38, 0)), CAST(20 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:55AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(43 AS Numeric(38, 0)), CAST(20 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N' 12:56AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(44 AS Numeric(38, 0)), CAST(20 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N' 12:57AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(45 AS Numeric(38, 0)), CAST(21 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:57AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(46 AS Numeric(38, 0)), CAST(21 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:26AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(47 AS Numeric(38, 0)), CAST(22 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:26AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(48 AS Numeric(38, 0)), CAST(22 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'  1:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(49 AS Numeric(38, 0)), CAST(22 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  1:36AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(50 AS Numeric(38, 0)), CAST(23 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:36AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(51 AS Numeric(38, 0)), CAST(23 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:38AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(52 AS Numeric(38, 0)), CAST(24 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:40AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(53 AS Numeric(38, 0)), CAST(24 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'  1:40AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(54 AS Numeric(38, 0)), CAST(24 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  1:42AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(55 AS Numeric(38, 0)), CAST(25 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:42AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(56 AS Numeric(38, 0)), CAST(25 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  1:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(57 AS Numeric(38, 0)), CAST(26 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(58 AS Numeric(38, 0)), CAST(26 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'  1:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(59 AS Numeric(38, 0)), CAST(26 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  3:02AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(60 AS Numeric(38, 0)), CAST(27 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:40PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(61 AS Numeric(38, 0)), CAST(27 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:40PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(62 AS Numeric(38, 0)), CAST(28 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:40PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(63 AS Numeric(38, 0)), CAST(28 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  5:43PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(64 AS Numeric(38, 0)), CAST(28 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:43PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(65 AS Numeric(38, 0)), CAST(29 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:43PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(66 AS Numeric(38, 0)), CAST(29 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:44PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(67 AS Numeric(38, 0)), CAST(30 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:44PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(68 AS Numeric(38, 0)), CAST(30 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  5:44PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(69 AS Numeric(38, 0)), CAST(30 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:44PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(70 AS Numeric(38, 0)), CAST(31 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:45PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(71 AS Numeric(38, 0)), CAST(31 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'  5:54PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(72 AS Numeric(38, 0)), CAST(31 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(73 AS Numeric(38, 0)), CAST(32 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(74 AS Numeric(38, 0)), CAST(32 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(75 AS Numeric(38, 0)), CAST(33 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(76 AS Numeric(38, 0)), CAST(33 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(77 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:07PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(78 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'USUARIO', N'---', N'ID = 4, DESCRIPCION = BISMARCK SALAZAR', N'6:09PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(79 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'ACCESOS', N'---', N'GENERANDO LOS ACCESOS', N'  6:10PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(80 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(81 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(82 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(83 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:12PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(84 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:12PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(85 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:12PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(86 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:12PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(87 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(88 AS Numeric(38, 0)), CAST(34 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(89 AS Numeric(38, 0)), CAST(35 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(90 AS Numeric(38, 0)), CAST(35 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(91 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(92 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(93 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(94 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(95 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N'  6:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(96 AS Numeric(38, 0)), CAST(36 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(97 AS Numeric(38, 0)), CAST(37 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:15PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(98 AS Numeric(38, 0)), CAST(37 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:15PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(99 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:57PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(100 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'ARTICULO', N'ID = 1, DESCRIPCION = CPU123, CLASE = MOBILIARIO, INGRESO = 2023-07-07', N'ID = 1, DESCRIPCION = CPU123, CLASE = MOBILIARIO, INGRESO = 2023-07-07, USUARIO = CESAR RIVAS', N'6:58PM')
GO
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(101 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'ARTICULO', N'ID = 1, DESCRIPCION = CPU123, CLASE = MOBILIARIO, INGRESO = 2023-07-07', N'ID = 1, DESCRIPCION = CPU123, CLASE = MOBILIARIO, INGRESO = 2023-07-07, USUARIO = CESAR RIVAS', N'7:01PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(102 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'---', NULL, N'7:01PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(103 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'ID = 1, FECHA = 2023-07-26, EMPLEADOS = 5, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'ID = 1, FECHA = 2023-07-26, EMPLEADO = 5, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'7:02PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(104 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'ID = 1, FECHA = 2023-07-26, EMPLEADOS = 5, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'ID = 1, FECHA = 2023-07-26, EMPLEADO = 5, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'7:03PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(105 AS Numeric(38, 0)), CAST(38 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:20PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(106 AS Numeric(38, 0)), CAST(39 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  7:20PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(107 AS Numeric(38, 0)), CAST(39 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:23PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(108 AS Numeric(38, 0)), CAST(40 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:37PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(109 AS Numeric(38, 0)), CAST(40 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  7:29PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(110 AS Numeric(38, 0)), CAST(41 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  7:29PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(111 AS Numeric(38, 0)), CAST(41 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  2:45PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(112 AS Numeric(38, 0)), CAST(42 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  2:45PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(113 AS Numeric(38, 0)), CAST(42 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  2:46PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(114 AS Numeric(38, 0)), CAST(43 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  3:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(115 AS Numeric(38, 0)), CAST(43 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  3:13PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(116 AS Numeric(38, 0)), CAST(44 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(117 AS Numeric(38, 0)), CAST(44 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:26PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(118 AS Numeric(38, 0)), CAST(45 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  5:53PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(119 AS Numeric(38, 0)), CAST(45 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:23PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(120 AS Numeric(38, 0)), CAST(46 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:59PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(121 AS Numeric(38, 0)), CAST(46 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:14PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(122 AS Numeric(38, 0)), CAST(47 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:30AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(123 AS Numeric(38, 0)), CAST(47 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:33AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(124 AS Numeric(38, 0)), CAST(48 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:33AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(125 AS Numeric(38, 0)), CAST(48 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:41AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(126 AS Numeric(38, 0)), CAST(49 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:54AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(127 AS Numeric(38, 0)), CAST(49 AS Numeric(38, 0)), N'REG_ARTICULOS', N'BAJA DE REG_ARTICULOS', N'ID = 23, BAJA = 2023-08-04, OBSERVACIONES = BAJA DE ARTICULOS:, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'10:54AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(128 AS Numeric(38, 0)), CAST(49 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N' 10:58AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(129 AS Numeric(38, 0)), CAST(50 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:58AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(130 AS Numeric(38, 0)), CAST(50 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N' 10:58AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(131 AS Numeric(38, 0)), CAST(50 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N' 10:59AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(132 AS Numeric(38, 0)), CAST(50 AS Numeric(38, 0)), N'REG_ARTICULOS', N'REACTIVAR DE REG_ARTICULOS', N'ID = 23, USUARIO = LOGIN: CRIVAS, NOMBRE COMPLETO: CESAR RIVAS', N'10:59AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(133 AS Numeric(38, 0)), CAST(50 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 11:00AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(134 AS Numeric(38, 0)), CAST(51 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 11:55AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(135 AS Numeric(38, 0)), CAST(51 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 11:55AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(136 AS Numeric(38, 0)), CAST(52 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 11:55AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(137 AS Numeric(38, 0)), CAST(52 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 11:55AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(138 AS Numeric(38, 0)), CAST(53 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 11:56AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(139 AS Numeric(38, 0)), CAST(53 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 11:59AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(140 AS Numeric(38, 0)), CAST(54 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 11:59AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(141 AS Numeric(38, 0)), CAST(54 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:01PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(142 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:05PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(143 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:05PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(144 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(145 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:06PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(146 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:07PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(147 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:08PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(148 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N' 12:08PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(149 AS Numeric(38, 0)), CAST(55 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:09PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(150 AS Numeric(38, 0)), CAST(56 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  7:25AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(151 AS Numeric(38, 0)), CAST(56 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:25AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(152 AS Numeric(38, 0)), CAST(57 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  7:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(153 AS Numeric(38, 0)), CAST(57 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(154 AS Numeric(38, 0)), CAST(58 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  7:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(155 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  8:44AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(156 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'MARCA', N'---', N'ID = 13, DESCRIPCION = JUNIOR, ESTADO = ALTA, USUARIO = NGUYEN OROZCO', N'8:48AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(157 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'MODELO', N'---', N'ID = 11, DESCRIPCION = VERTICAL, USUARIO = NGUYEN OROZCO', N'8:49AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(158 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 20, DESCRIPCION = PARLANTE, CLASE = EQUIPOS, INGRESO = 2023-07-07', N'ID = 20, DESCRIPCION = PARLANTE, CLASE = EQUIPOS, INGRESO = 2023-07-07, USUARIO = NGUYEN OROZCO', N'8:51AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(159 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'MARCA', N'---', N'ID = 14, DESCRIPCION = PEAVEY, ESTADO = ALTA, USUARIO = NGUYEN OROZCO', N'8:52AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(160 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'MODELO', N'---', N'ID = 12, DESCRIPCION = PU10AT, USUARIO = NGUYEN OROZCO', N'8:52AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(161 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 21, DESCRIPCION = CONSOLA, CLASE = EQUIPOS, INGRESO = 2023-07-07', N'ID = 21, DESCRIPCION = CONSOLA, CLASE = EQUIPOS, INGRESO = 2023-07-07, USUARIO = NGUYEN OROZCO', N'8:54AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(162 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 22, DESCRIPCION = DISCO DURO EXTERNO, CLASE = EQUIPOS, INGRESO = 2023-07-07', N'ID = 22, DESCRIPCION = DISCO DURO EXTERNO, CLASE = EQUIPOS, INGRESO = 2023-07-07, USUARIO = NGUYEN OROZCO', N'8:59AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(163 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 23, DESCRIPCION = REGLETA, CLASE = MOBILIARIO, INGRESO = 2023-07-08', N'ID = 23, DESCRIPCION = ESCRITORIO DE METAL, CLASE = MOBILIARIO, INGRESO = 2023-07-08, USUARIO = NGUYEN OROZCO', N'9:04AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(164 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 23, DESCRIPCION = ESCRITORIO DE METAL, CLASE = MOBILIARIO, INGRESO = 2023-07-08', N'ID = 23, DESCRIPCION = ESCRITORIO DE METAL, CLASE = MOBILIARIO, INGRESO = 2023-07-08, USUARIO = NGUYEN OROZCO', N'9:04AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(165 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ARTICULO', N'ID = 23, DESCRIPCION = ESCRITORIO DE METAL, CLASE = MOBILIARIO, INGRESO = 2023-07-08', N'ID = 23, DESCRIPCION = ESCRITORIO DE METAL, CLASE = MOBILIARIO, INGRESO = 2023-07-08, USUARIO = NGUYEN OROZCO', N'9:05AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(166 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'ID = 1, FECHA = 2023-07-26, EMPLEADOS = 6, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'ID = 1, FECHA = 2023-07-26, EMPLEADO = 6, TIPO MOVIMIENTO = 1, CONCEPTO = ALTA DE ASIGNACIONES DE ARTICULOS (26/07/2023), ESTADO = ALTA', N'9:09AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(167 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:15AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(168 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 3, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:16AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(169 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 4, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:18AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(170 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:18AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(171 AS Numeric(38, 0)), CAST(59 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:19AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(172 AS Numeric(38, 0)), CAST(60 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:19AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(173 AS Numeric(38, 0)), CAST(60 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  9:23AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(174 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:23AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(175 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'CARGANDO ARCHIVOS ', N'ID = 2, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:23AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(176 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'REG_CARGA_ARCHIVOS', N'ELIMINANDO ARCHIVO', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'  9:25AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(177 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'REG_ARTICULOS', N'BAJA DE REG_ARTICULOS', N'ID = 1, BAJA = 2023-08-05, OBSERVACIONES = BAJA DE ARTICULOS: CPU PRUEBA, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'9:26AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(178 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'REG_ARTICULOS', N'REACTIVAR DE REG_ARTICULOS', N'ID = 1, USUARIO = LOGIN: NOROZCO, NOMBRE COMPLETO: NGUYEN OROZCO', N'9:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(179 AS Numeric(38, 0)), CAST(61 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(180 AS Numeric(38, 0)), CAST(62 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:27AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(181 AS Numeric(38, 0)), CAST(62 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:29AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(182 AS Numeric(38, 0)), CAST(63 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:40AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(183 AS Numeric(38, 0)), CAST(63 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  9:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(184 AS Numeric(38, 0)), CAST(64 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  9:54AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(185 AS Numeric(38, 0)), CAST(64 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N' 10:24AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(186 AS Numeric(38, 0)), CAST(65 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:24AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(187 AS Numeric(38, 0)), CAST(65 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:42AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(188 AS Numeric(38, 0)), CAST(66 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:42AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(189 AS Numeric(38, 0)), CAST(66 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(190 AS Numeric(38, 0)), CAST(58 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N' 10:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(191 AS Numeric(38, 0)), CAST(67 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:43AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(192 AS Numeric(38, 0)), CAST(67 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 10:45AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(193 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 10:46AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(194 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 10:46AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(195 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'EMPLEADO', N'ID = 2, NOMBRE_COMPLETO = CHAVEZ , LUISA ', N'ID = 2, NOMBRE_COMPLETO = CHAVEZ GUERRERO, LUISA LUCIA', N'11:34AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(196 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'---', NULL, N'11:37AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(197 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'ASIGNACION DE ACTIVOS FIJOS A EMPLEADOS', N'---', NULL, N'11:58AM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(198 AS Numeric(38, 0)), CAST(68 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:18PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(199 AS Numeric(38, 0)), CAST(69 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:19PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(200 AS Numeric(38, 0)), CAST(69 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:19PM')
GO
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(201 AS Numeric(38, 0)), CAST(70 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:21PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(202 AS Numeric(38, 0)), CAST(70 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:22PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(203 AS Numeric(38, 0)), CAST(71 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:22PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(204 AS Numeric(38, 0)), CAST(71 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:23PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(205 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:23PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(206 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:24PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(207 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:24PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(208 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(209 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(210 AS Numeric(38, 0)), CAST(72 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(211 AS Numeric(38, 0)), CAST(73 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(212 AS Numeric(38, 0)), CAST(73 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:26PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(213 AS Numeric(38, 0)), CAST(74 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:26PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(214 AS Numeric(38, 0)), CAST(74 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(215 AS Numeric(38, 0)), CAST(74 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(216 AS Numeric(38, 0)), CAST(75 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(217 AS Numeric(38, 0)), CAST(75 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(218 AS Numeric(38, 0)), CAST(76 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:27PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(219 AS Numeric(38, 0)), CAST(76 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(220 AS Numeric(38, 0)), CAST(76 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:28PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(221 AS Numeric(38, 0)), CAST(77 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:29PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(222 AS Numeric(38, 0)), CAST(77 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:29PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(223 AS Numeric(38, 0)), CAST(78 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:29PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(224 AS Numeric(38, 0)), CAST(78 AS Numeric(38, 0)), N'CONTROL DE ACCESOS', N'---', N'ACTUALIZANDO LOS ACCESOS', N' 12:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(225 AS Numeric(38, 0)), CAST(78 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(226 AS Numeric(38, 0)), CAST(79 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N' 12:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(227 AS Numeric(38, 0)), CAST(79 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N' 12:57PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(228 AS Numeric(38, 0)), CAST(80 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  1:07PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(229 AS Numeric(38, 0)), CAST(80 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  1:09PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(230 AS Numeric(38, 0)), CAST(81 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:31PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(231 AS Numeric(38, 0)), CAST(81 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:31PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(232 AS Numeric(38, 0)), CAST(82 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(233 AS Numeric(38, 0)), CAST(82 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(234 AS Numeric(38, 0)), CAST(83 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(235 AS Numeric(38, 0)), CAST(83 AS Numeric(38, 0)), N'INICIO DE SESION', N'APERTURA', N'CIERRE', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(236 AS Numeric(38, 0)), CAST(84 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(237 AS Numeric(38, 0)), CAST(84 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:33PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(238 AS Numeric(38, 0)), CAST(85 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:36PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(239 AS Numeric(38, 0)), CAST(85 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:38PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(240 AS Numeric(38, 0)), CAST(86 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:40PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(241 AS Numeric(38, 0)), CAST(86 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(242 AS Numeric(38, 0)), CAST(86 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  7:25PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(243 AS Numeric(38, 0)), CAST(87 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  4:30PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(244 AS Numeric(38, 0)), CAST(87 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  5:11PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(245 AS Numeric(38, 0)), CAST(88 AS Numeric(38, 0)), N'INICIO DE SESION', N'---', N'APERTURA', N'  6:00PM')
INSERT [Seguridad].[SYS_BITACORA] ([ID], [ID_SESION], [VENTANA], [ANTES], [DESPUES], [HORA]) VALUES (CAST(246 AS Numeric(38, 0)), CAST(88 AS Numeric(38, 0)), N'CIERRE DE SESION', N'APERTURA', N'CIERRE', N'  6:01PM')
INSERT [Seguridad].[SYS_FIRMAS_DOCUMENTOS] ([ID], [NOMBRE_COMPLETO], [CARGO_OCUPACIONAL], [AREA_FUNCIONAL], [ACTIVO]) VALUES (1, N'Nguyen B. Orozco Castillo', N'RESPONSABLE DE OFICINA', N'UNIDAD DE CONTROL DE BIENES', 1)
INSERT [Seguridad].[SYS_FOTOS] ([ID], [LOGO_01], [LOGO_02], [ACTIVO]) VALUES (1, N'/ASIGNACION_ACTIVOS_FIJOS/images/Logo_01.png', N'/ASIGNACION_ACTIVOS_FIJOS/images/Logo_02.png', 1)
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'APP_WEB', N' ', N'SISTEMA DE ASIGNACION DE ACTIVOS FIJOS SAAF', 0, N'Application', 0, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'Opt_01', N'', N'CATALOGOS', 1, N'ToolStripMenuItem', 1, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'Opt_02', N'', N'REGISTRAR', 1, N'ToolStripMenuItem', 17, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0x9C450B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, N'Opt_03', N'', N'REPORTES', 1, N'ToolStripMenuItem', 24, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, N'Opt_04', N'', N'ADMINISTRACION', 1, N'ToolStripMenuItem', 28, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (6, N'Opt_01_01', N'Opt_01', N'COLORES', 2, N'ToolStripMenuItem', 2, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (7, N'Opt_01_02', N'Opt_01', N'MARCAS', 2, N'ToolStripMenuItem', 3, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (8, N'Opt_01_03', N'Opt_01', N'MODELOS', 2, N'ToolStripMenuItem', 4, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (9, N'Opt_01_04', N'Opt_01', N'CLASES', 2, N'ToolStripMenuItem', 5, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (10, N'Opt_01_01_01', N' ', N'Raya_01', -1, N'ToolStripMenuItem', 6, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (11, N'Opt_01_05', N'Opt_01', N'PROCEDENCIAS', 2, N'ToolStripMenuItem', 7, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (12, N'Opt_01_06', N'Opt_01', N'TIPO ALTAS', 2, N'ToolStripMenuItem', 8, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (13, N'Opt_01_07', N'Opt_01', N'TIPO MOVIMIENTO', 2, N'ToolStripMenuItem', 9, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (14, N'Opt_01_01_02', N' ', N'Raya_02', -1, N'ToolStripMenuItem', 10, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (15, N'Opt_01_08', N'Opt_01', N'TIPO PROVEEDOR', 2, N'ToolStripMenuItem', 11, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (16, N'Opt_01_09', N'Opt_01', N'TIPO CONTACTO', 2, N'ToolStripMenuItem', 12, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (17, N'Opt_01_10', N'Opt_01', N'TIPO SEXO', 2, N'ToolStripMenuItem', 13, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (18, N'Opt_01_01_03', N' ', N'Raya_03', -1, N'ToolStripMenuItem', 14, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (19, N'Opt_01_11', N'Opt_01', N'CENTRO DE COSTOS', 2, N'ToolStripMenuItem', 15, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (20, N'Opt_01_12', N'Opt_01', N'CARGO OCUPACIONAL', 2, N'ToolStripMenuItem', 16, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (21, N'Opt_02_01', N'Opt_02', N'ARTICULOS', 2, N'ToolStripMenuItem', 18, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (22, N'Opt_02_02', N'Opt_02', N'PROVEEDORES', 2, N'ToolStripMenuItem', 19, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (23, N'Opt_02_03', N'Opt_02', N'EMPLEADOS', 2, N'ToolStripMenuItem', 20, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (24, N'Opt_02_01_01', N' ', N'Raya_04', -1, N'ToolStripMenuItem', 21, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (25, N'Opt_02_04', N'Opt_02', N'ASIGNACION DE ACTIVOS', 2, N'ToolStripMenuItem', 23, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (26, N'Opt_03_01', N'Opt_03', N'REPORTES', 2, N'ToolStripMenuItem', 25, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (27, N'Opt_03_01_01', N' ', N'Raya_04', -1, N'ToolStripMenuItem', 26, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (28, N'Opt_03_02', N'Opt_03', N'CAMBIAR CLAVE', 2, N'ToolStripMenuItem', 27, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (29, N'Opt_04_01', N'Opt_04', N'ROLES', 2, N'ToolStripMenuItem', 29, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (30, N'Opt_04_02', N'Opt_04', N'USUARIOS', 2, N'ToolStripMenuItem', 30, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (31, N'Opt_04_01_01', N' ', N'Raya_05', -1, N'ToolStripMenuItem', 31, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (32, N'Opt_04_03', N'Opt_04', N'OPCIONES', 2, N'ToolStripMenuItem', 32, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (33, N'Opt_04_01_02', N' ', N'Raya_06', -1, N'ToolStripMenuItem', 33, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (34, N'Opt_04_04', N'Opt_04', N'ACCESOS', 2, N'ToolStripMenuItem', 34, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (35, N'Opt_04_05', N'Opt_04', N'SESIONES Y BITACORAS', 2, N'ToolStripMenuItem', 35, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_OPCIONES] ([ID], [CODIGO_01], [CODIGO_02], [DESCRIPCION], [NIVEL], [TIPO], [ORDEN], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (36, N'Opt_02_05', N'Opt_02', N'ENTRADAS DE ACTIVOS', 2, N'ToolStripMenuItem', 22, 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_REG_CARGA_ARCHIVOS] ([ID], [ARCHIVO], [EXTENSION], [URL], [TIPO], [ID_TIPO]) VALUES (2, N'FONDO_12', N'png', N'/Adjuntos/FONDO_12', 1, CAST(1 AS Numeric(38, 0)))
INSERT [Seguridad].[SYS_REG_CARGA_ARCHIVOS] ([ID], [ARCHIVO], [EXTENSION], [URL], [TIPO], [ID_TIPO]) VALUES (3, N'EXAMEN III', N'docx', N'/Adjuntos/EXAMEN III', 1, CAST(1 AS Numeric(38, 0)))
INSERT [Seguridad].[SYS_ROL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, N'ADMINISTRADOR', 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_ROL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, N'GRABADOR', 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_ROL] ([ID], [DESCRIPCION], [ESTADO], [BAJA], [OBSERVACIONES], [ID_USUARIO], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, N'CONSULTOR', 1, CAST(0xD8440B00 AS Date), N' ', 1, CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(1 AS Numeric(38, 0)), 2, 2, CAST(0x9A450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(2 AS Numeric(38, 0)), 2, 2, CAST(0x9A450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(3 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(4 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(5 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(6 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(7 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(8 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(9 AS Numeric(38, 0)), 2, 2, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(10 AS Numeric(38, 0)), 3, 1, CAST(0x9C450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(11 AS Numeric(38, 0)), 2, 2, CAST(0x9D450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(12 AS Numeric(38, 0)), 2, 2, CAST(0x9E450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(13 AS Numeric(38, 0)), 2, 2, CAST(0x9E450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(14 AS Numeric(38, 0)), 2, 2, CAST(0x9E450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(15 AS Numeric(38, 0)), 2, 2, CAST(0x9E450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(16 AS Numeric(38, 0)), 2, 2, CAST(0x9E450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(17 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(18 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(19 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(20 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(21 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(22 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(23 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(24 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(25 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(26 AS Numeric(38, 0)), 2, 2, CAST(0x9F450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(27 AS Numeric(38, 0)), 2, 2, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(28 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(29 AS Numeric(38, 0)), 2, 2, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(30 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(31 AS Numeric(38, 0)), 2, 2, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(32 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(33 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(34 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(35 AS Numeric(38, 0)), 4, 2, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(36 AS Numeric(38, 0)), 3, 1, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(37 AS Numeric(38, 0)), 4, 2, CAST(0xA1450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(38 AS Numeric(38, 0)), 2, 2, CAST(0xA6450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(39 AS Numeric(38, 0)), 2, 2, CAST(0xA6450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(40 AS Numeric(38, 0)), 2, 2, CAST(0xA7450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(41 AS Numeric(38, 0)), 2, 2, CAST(0xA7450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(42 AS Numeric(38, 0)), 2, 2, CAST(0xAD450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(43 AS Numeric(38, 0)), 2, 2, CAST(0xAE450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(44 AS Numeric(38, 0)), 2, 2, CAST(0xAE450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(45 AS Numeric(38, 0)), 2, 2, CAST(0xAE450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(46 AS Numeric(38, 0)), 2, 2, CAST(0xAE450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(47 AS Numeric(38, 0)), 2, 2, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(48 AS Numeric(38, 0)), 2, 2, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(49 AS Numeric(38, 0)), 2, 2, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(50 AS Numeric(38, 0)), 2, 2, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(51 AS Numeric(38, 0)), 3, 1, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(52 AS Numeric(38, 0)), 3, 1, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(53 AS Numeric(38, 0)), 3, 1, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(54 AS Numeric(38, 0)), 3, 1, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(55 AS Numeric(38, 0)), 3, 1, CAST(0xAF450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(56 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(57 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(58 AS Numeric(38, 0)), 2, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(59 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(60 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(61 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(62 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(63 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(64 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(65 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(66 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(67 AS Numeric(38, 0)), 2, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(68 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(69 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(70 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(71 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(72 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(73 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(74 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(75 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(76 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(77 AS Numeric(38, 0)), 4, 2, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(78 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(79 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(80 AS Numeric(38, 0)), 3, 1, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(81 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(82 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(83 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(84 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(85 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(86 AS Numeric(38, 0)), 5, 3, CAST(0xB0450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(87 AS Numeric(38, 0)), 3, 1, CAST(0xB2450B00 AS Date), 0)
INSERT [Seguridad].[SYS_SESION] ([ID], [ID_USUARIO], [ID_ROL], [FECHA], [ESTADO]) VALUES (CAST(88 AS Numeric(38, 0)), 2, 2, CAST(0xB2450B00 AS Date), 0)
INSERT [Seguridad].[SYS_USUARIOS] ([ID], [ID_ROL], [xUID], [xPWD], [NOMBRE_COMPLETO], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (1, 1, N'ADMIN', N'123', N'ADMINISTRADOR DEL SISTEMA', 1, CAST(0x9A450B00 AS Date), N'', CAST(0xD8440B00 AS Date), CAST(0xD8440B00 AS Date))
INSERT [Seguridad].[SYS_USUARIOS] ([ID], [ID_ROL], [xUID], [xPWD], [NOMBRE_COMPLETO], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (2, 2, N'CRIVAS', N'ce', N'CESAR RIVAS', 1, CAST(0x9A450B00 AS Date), N'', CAST(0x9A450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_USUARIOS] ([ID], [ID_ROL], [xUID], [xPWD], [NOMBRE_COMPLETO], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (3, 1, N'NOROZCO', N'123', N'NGUYEN OROZCO', 1, CAST(0x9A450B00 AS Date), N'', CAST(0x9A450B00 AS Date), CAST(0x9A450B00 AS Date))
INSERT [Seguridad].[SYS_USUARIOS] ([ID], [ID_ROL], [xUID], [xPWD], [NOMBRE_COMPLETO], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (4, 2, N'BSALAZAR', N'123', N'BISMARCK SALAZAR', 1, CAST(0xA1450B00 AS Date), N'', CAST(0xA1450B00 AS Date), CAST(0xB0450B00 AS Date))
INSERT [Seguridad].[SYS_USUARIOS] ([ID], [ID_ROL], [xUID], [xPWD], [NOMBRE_COMPLETO], [ESTADO], [BAJA], [OBSERVACIONES], [FECHA_GRAB], [FECHA_MOD]) VALUES (5, 3, N'MRIVAS', N'123', N'MANUEL RIVAS', 1, CAST(0xB0450B00 AS Date), N'', CAST(0xB0450B00 AS Date), CAST(0xB0450B00 AS Date))
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] ADD  CONSTRAINT [DF__TBL_AREA___DESCR__2EFAF1E2]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] ADD  CONSTRAINT [DF_TBL_AREA_FUNCIONAL_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] ADD  CONSTRAINT [DF__TBL_AREA___FECHA__2FEF161B]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_AREA_FUNCIONAL] ADD  CONSTRAINT [DF__TBL_AREA___FECHA__30E33A54]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF_TBL_ARTICULO_CODIGO]  DEFAULT ('') FOR [CODIGO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__DESCR__2DD1C37F]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__ESTAD__2FBA0BF1]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTICU__BAJA__30AE302A]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__DESC___31A25463]  DEFAULT ('') FOR [OBSERVACIONES]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__ID_US__3296789C]  DEFAULT ((1)) FOR [ID_USUARIO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__FECHA__338A9CD5]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] ADD  CONSTRAINT [DF__TBL_ARTIC__FECHA__347EC10E]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] ADD  DEFAULT ((0.00)) FOR [COSTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT (getdate()) FOR [FECHA]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT ('') FOR [CONCEPTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT ('') FOR [OBSERVACIONES]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT ((1)) FOR [ID_USUARIO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ADD  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ADD  CONSTRAINT [DF__TBL_CARGO__DESCR__33BFA6FF]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ADD  CONSTRAINT [DF__TBL_CARGO__ESTAD__34B3CB38]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ADD  CONSTRAINT [DF_TBL_CARGO_OCUPACIONAL_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ADD  CONSTRAINT [DF__TBL_CARGO__FECHA__35A7EF71]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ADD  CONSTRAINT [DF__TBL_CARGO__FECHA__369C13AA]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] ADD  CONSTRAINT [DF__TBL_CLASE__DESCR__44EA3301]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] ADD  CONSTRAINT [DF__TBL_CLASE__ESTAD__45DE573A]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] ADD  CONSTRAINT [DF_TBL_CLASE_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] ADD  CONSTRAINT [DF__TBL_CLASE__FECHA__46D27B73]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_CLASE] ADD  CONSTRAINT [DF__TBL_CLASE__FECHA__47C69FAC]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] ADD  CONSTRAINT [DF__TBL_COLOR__DESCR__4AA30C57]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] ADD  CONSTRAINT [DF__TBL_COLOR__ESTAD__4B973090]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] ADD  CONSTRAINT [DF_TBL_COLOR_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] ADD  CONSTRAINT [DF__TBL_COLOR__FECHA__4C8B54C9]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_COLOR] ADD  CONSTRAINT [DF__TBL_COLOR__FECHA__4D7F7902]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__IDENT__15FA39EE]  DEFAULT ('') FOR [IDENTIFICACION]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__PRIME__16EE5E27]  DEFAULT ('') FOR [PRIMER_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__SEGUN__17E28260]  DEFAULT ('') FOR [SEGUNDO_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__PRIME__18D6A699]  DEFAULT ('') FOR [PRIMER_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__SEGUN__19CACAD2]  DEFAULT ('') FOR [SEGUNDO_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__DIREC__1ABEEF0B]  DEFAULT ('') FOR [DIRECCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__TELEF__1BB31344]  DEFAULT ('') FOR [TEL_CONVENCIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_TEL_CEL_T]  DEFAULT ('') FOR [TEL_CELULAR_T]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_TEL_CEL_C]  DEFAULT ('') FOR [TEL_CELULAR_C]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__EMAIL__1CA7377D]  DEFAULT ('') FOR [EMAIL]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_CONTA__FECHA__1F83A428]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_CONTACTO_PROVEEDOR_ID_USUARIO]  DEFAULT ((1)) FOR [ID_USUARIO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__PRIME__758D6A5C]  DEFAULT ('') FOR [PRIMER_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__SEGUN__76818E95]  DEFAULT ('') FOR [SEGUNDO_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__PRIME__7775B2CE]  DEFAULT ('') FOR [PRIMER_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__SEGUN__7869D707]  DEFAULT ('') FOR [SEGUNDO_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__CEDUL__795DFB40]  DEFAULT ('') FOR [CEDULA]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__NO_IN__7A521F79]  DEFAULT ('') FOR [NO_INSS]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__DIREC__7B4643B2]  DEFAULT ('') FOR [DIRECCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__TELEF__7C3A67EB]  DEFAULT ('') FOR [TEL_CONVENCIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF_TBL_EMPLEADO_TEL_CONVENCIONAL1]  DEFAULT ('') FOR [TEL_CELULAR_T]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF_TBL_EMPLEADO_TEL_CEL_T1]  DEFAULT ('') FOR [TEL_CELULAR_C]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__EMAIL__7D2E8C24]  DEFAULT ('') FOR [EMAIL]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__ESTAD__7E22B05D]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF_TBL_EMPLEADO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__FECHA__7F16D496]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] ADD  CONSTRAINT [DF__TBL_EMPLE__FECHA__000AF8CF]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] ADD  CONSTRAINT [DF__TBL_MARCA__DESCR__39788055]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] ADD  CONSTRAINT [DF__TBL_MARCA__ESTAD__3A6CA48E]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] ADD  CONSTRAINT [DF_TBL_MARCA_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] ADD  CONSTRAINT [DF__TBL_MARCA__FECHA__3B60C8C7]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_MARCA] ADD  CONSTRAINT [DF__TBL_MARCA__FECHA__3C54ED00]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] ADD  CONSTRAINT [DF__TBL_MODEL__DESCR__3F3159AB]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] ADD  CONSTRAINT [DF__TBL_MODEL__ESTAD__40257DE4]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] ADD  CONSTRAINT [DF_TBL_MODELO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] ADD  CONSTRAINT [DF__TBL_MODEL__FECHA__4119A21D]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_MODELO] ADD  CONSTRAINT [DF__TBL_MODEL__FECHA__420DC656]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] ADD  CONSTRAINT [DF__TBL_PROCE__DESCR__5614BF03]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] ADD  CONSTRAINT [DF__TBL_PROCE__ESTAD__5708E33C]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] ADD  CONSTRAINT [DF_TBL_PROCEDENCIA_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] ADD  CONSTRAINT [DF__TBL_PROCE__FECHA__57FD0775]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROCEDENCIA] ADD  CONSTRAINT [DF__TBL_PROCE__FECHA__58F12BAE]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__IDENT__04CFADEC]  DEFAULT ('') FOR [IDENTIFICACION]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__PRIME__05C3D225]  DEFAULT ('') FOR [PRIMER_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__SEGUN__06B7F65E]  DEFAULT ('') FOR [SEGUNDO_APELLIDO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__PRIME__07AC1A97]  DEFAULT ('') FOR [PRIMER_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__SEGUN__08A03ED0]  DEFAULT ('') FOR [SEGUNDO_NOMBRE]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__RAZON__09946309]  DEFAULT ('') FOR [RAZON_SOCIAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__DIREC__0A888742]  DEFAULT ('') FOR [DIRECCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__TELEF__0B7CAB7B]  DEFAULT ('') FOR [TEL_CONVENCIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_PROVEEDOR_TEL_CEL_T]  DEFAULT ('') FOR [TEL_CELULAR_T]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_PROVEEDOR_TEL_CEL_C]  DEFAULT ('') FOR [TEL_CELULAR_C]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__EMAIL__0C70CFB4]  DEFAULT ('') FOR [EMAIL]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__ESTAD__0D64F3ED]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF_TBL_PROVEEDOR_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__ID_US__0E591826]  DEFAULT ((1)) FOR [ID_USUARIO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__FECHA__0F4D3C5F]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] ADD  CONSTRAINT [DF__TBL_PROVE__FECHA__10416098]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_REPORTE] ADD  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] ADD  CONSTRAINT [DF__TBL_SEXO__DESCRI__6CF8245B]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] ADD  CONSTRAINT [DF__TBL_SEXO__ESTADO__6DEC4894]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] ADD  CONSTRAINT [DF_TBL_SEXO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] ADD  CONSTRAINT [DF__TBL_SEXO__FECHA___6EE06CCD]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_SEXO] ADD  CONSTRAINT [DF__TBL_SEXO__FECHA___6FD49106]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] ADD  CONSTRAINT [DF__TBL_TIPO__DESCRI__618671AF]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] ADD  CONSTRAINT [DF__TBL_TIPO__ESTADO__627A95E8]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] ADD  CONSTRAINT [DF_TBL_TIPO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] ADD  CONSTRAINT [DF__TBL_TIPO__FECHA___636EBA21]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO] ADD  CONSTRAINT [DF__TBL_TIPO__FECHA___6462DE5A]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] ADD  CONSTRAINT [DF__TBL_TIPO___DESCR__505BE5AD]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] ADD  CONSTRAINT [DF__TBL_TIPO___ESTAD__515009E6]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] ADD  CONSTRAINT [DF_TBL_TIPO_ALTA_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__52442E1F]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_ALTA] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__53385258]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] ADD  CONSTRAINT [DF__TBL_TIPO___DESCR__673F4B05]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] ADD  CONSTRAINT [DF__TBL_TIPO___ESTAD__68336F3E]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] ADD  CONSTRAINT [DF_TBL_TIPO_CONTACTO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__69279377]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_CONTACTO] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__6A1BB7B0]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ADD  CONSTRAINT [DF__TBL_TIPO___DESCR__5BCD9859]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ADD  CONSTRAINT [DF__TBL_TIPO___ESTAD__5CC1BC92]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ADD  CONSTRAINT [DF_TBL_TIPO_MOVIMIENTO_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__5DB5E0CB]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ADD  CONSTRAINT [DF__TBL_TIPO___FECHA__5EAA0504]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__ID_US__40DA7652]  DEFAULT ((1)) FOR [ID_USUARIO]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__EJECU__41CE9A8B]  DEFAULT ((0)) FOR [EJECUTAR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__VISUA__42C2BEC4]  DEFAULT ((0)) FOR [VISUALIZAR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__BORRA__43B6E2FD]  DEFAULT ((0)) FOR [BORRAR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__IMPRI__44AB0736]  DEFAULT ((0)) FOR [IMPRIMIR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__INSER__459F2B6F]  DEFAULT ((0)) FOR [INSERTAR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF__SYS_ACCES__ACTUA__46934FA8]  DEFAULT ((0)) FOR [ACTUALIZAR]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF_SYS_ACCESOS_ESTADO]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF_SYS_ACCESOS_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF_SYS_ACCESOS_FECHA_GRAB]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] ADD  CONSTRAINT [DF_SYS_ACCESOS_FECHA_MOD]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] ADD  CONSTRAINT [DF__SYS_FIRMA__NOMBR__7D845D36]  DEFAULT ('') FOR [NOMBRE_COMPLETO]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] ADD  CONSTRAINT [DF__SYS_FIRMA__CARGO__7E78816F]  DEFAULT ('') FOR [CARGO_OCUPACIONAL]
GO
ALTER TABLE [Seguridad].[SYS_FIRMAS_DOCUMENTOS] ADD  CONSTRAINT [DF_SYS_FIRMAS_DOCUMENTOS_CARGO_OCUPACIONAL1]  DEFAULT ('') FOR [AREA_FUNCIONAL]
GO
ALTER TABLE [Seguridad].[SYS_FOTOS] ADD  CONSTRAINT [DF__SYS_FOTOS__LOGOS__2B2A60FE]  DEFAULT ('') FOR [LOGO_01]
GO
ALTER TABLE [Seguridad].[SYS_FOTOS] ADD  CONSTRAINT [DF_SYS_FOTOS_LOGO_011]  DEFAULT ('') FOR [LOGO_02]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] ADD  CONSTRAINT [DF_SYS_OPCIONES_ESTADO]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] ADD  CONSTRAINT [DF_SYS_OPCIONES_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] ADD  CONSTRAINT [DF_SYS_OPCIONES_FECHA_GRAB]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_OPCIONES] ADD  CONSTRAINT [DF_SYS_OPCIONES_FECHA_MOD]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_ROL] ADD  CONSTRAINT [DF_SYS_ROL_ESTADO]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [Seguridad].[SYS_ROL] ADD  CONSTRAINT [DF_SYS_ROL_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Seguridad].[SYS_ROL] ADD  CONSTRAINT [DF_SYS_ROL_FECHA_GRAB]  DEFAULT (getdate()) FOR [FECHA_GRAB]
GO
ALTER TABLE [Seguridad].[SYS_ROL] ADD  CONSTRAINT [DF_SYS_ROL_FECHA_MOD]  DEFAULT (getdate()) FOR [FECHA_MOD]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] ADD  CONSTRAINT [DF_SYS_USUARIOS_BAJA]  DEFAULT (getdate()) FOR [BAJA]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] ADD  CONSTRAINT [DF_SYS_USUARIOS_OBSERVACIONES]  DEFAULT ('') FOR [OBSERVACIONES]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ARTICULO_ID_CLASE] FOREIGN KEY([ID_CLASE])
REFERENCES [Activos_Fijos].[TBL_CLASE] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] CHECK CONSTRAINT [FX_TBL_ARTICULO_ID_CLASE]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ARTICULO_ID_COLOR] FOREIGN KEY([ID_COLOR])
REFERENCES [Activos_Fijos].[TBL_COLOR] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] CHECK CONSTRAINT [FX_TBL_ARTICULO_ID_COLOR]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ARTICULO_ID_MARCA] FOREIGN KEY([ID_MARCA])
REFERENCES [Activos_Fijos].[TBL_MARCA] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] CHECK CONSTRAINT [FX_TBL_ARTICULO_ID_MARCA]
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ARTICULO_ID_MODELO] FOREIGN KEY([ID_MODELO])
REFERENCES [Activos_Fijos].[TBL_MODELO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ARTICULO] CHECK CONSTRAINT [FX_TBL_ARTICULO_ID_MODELO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ARTICULO] FOREIGN KEY([ID_ARTICULO])
REFERENCES [Activos_Fijos].[TBL_ARTICULO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] CHECK CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ARTICULO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ENC] FOREIGN KEY([ID_ENC])
REFERENCES [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_DET] CHECK CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_DET_ID_ENC]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_EMPLEADO] FOREIGN KEY([ID_EMPLEADO])
REFERENCES [Activos_Fijos].[TBL_EMPLEADO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] CHECK CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_EMPLEADO]
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC]  WITH CHECK ADD  CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_TIPO_MOVIMIENTO] FOREIGN KEY([ID_TIPO_MOVIMIENTO])
REFERENCES [Activos_Fijos].[TBL_TIPO_MOVIMIENTO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_ASIGNACION_ACTIVO_FIJO_ENC] CHECK CONSTRAINT [FX_TBL_ASIGNACION_ACTIVO_FIJO_ENC_ID_TIPO_MOVIMIENTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_PROVEEDOR] FOREIGN KEY([ID_PROVEEDOR])
REFERENCES [Activos_Fijos].[TBL_PROVEEDOR] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] CHECK CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_PROVEEDOR]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_SEXO] FOREIGN KEY([ID_SEXO])
REFERENCES [Activos_Fijos].[TBL_SEXO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] CHECK CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_TIPO_CONTACTO] FOREIGN KEY([ID_TIPO_CONTACTO])
REFERENCES [Activos_Fijos].[TBL_TIPO_CONTACTO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_CONTACTO_PROVEEDOR] CHECK CONSTRAINT [FX_TBL_CONTACTO_PROVEEDOR_ID_TIPO_CONTACTO]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_EMPLEADO_ID_AREA_FUNCIONAL] FOREIGN KEY([ID_AREA_FUNCIONAL])
REFERENCES [Activos_Fijos].[TBL_AREA_FUNCIONAL] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] CHECK CONSTRAINT [FX_TBL_EMPLEADO_ID_AREA_FUNCIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_EMPLEADO_ID_CARGO_OCUPACIONAL] FOREIGN KEY([ID_CARGO_OCUPACIONAL])
REFERENCES [Activos_Fijos].[TBL_CARGO_OCUPACIONAL] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] CHECK CONSTRAINT [FX_TBL_EMPLEADO_ID_CARGO_OCUPACIONAL]
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FX_TBL_EMPLEADO_ID_SEXO] FOREIGN KEY([ID_SEXO])
REFERENCES [Activos_Fijos].[TBL_SEXO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_EMPLEADO] CHECK CONSTRAINT [FX_TBL_EMPLEADO_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FX_TBL_PROVEEDOR_ID_SEXO] FOREIGN KEY([ID_SEXO])
REFERENCES [Activos_Fijos].[TBL_SEXO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] CHECK CONSTRAINT [FX_TBL_PROVEEDOR_ID_SEXO]
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FX_TBL_PROVEEDOR_ID_TIPO] FOREIGN KEY([ID_TIPO])
REFERENCES [Activos_Fijos].[TBL_TIPO] ([ID])
GO
ALTER TABLE [Activos_Fijos].[TBL_PROVEEDOR] CHECK CONSTRAINT [FX_TBL_PROVEEDOR_ID_TIPO]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS]  WITH CHECK ADD  CONSTRAINT [FX_SYS_ACCESOS_ID_OPCION] FOREIGN KEY([ID_OPCIONES])
REFERENCES [Seguridad].[SYS_OPCIONES] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] CHECK CONSTRAINT [FX_SYS_ACCESOS_ID_OPCION]
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS]  WITH CHECK ADD  CONSTRAINT [FX_SYS_ACCESOS_ID_ROL] FOREIGN KEY([ID_ROL])
REFERENCES [Seguridad].[SYS_ROL] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_ACCESOS] CHECK CONSTRAINT [FX_SYS_ACCESOS_ID_ROL]
GO
ALTER TABLE [Seguridad].[SYS_BITACORA]  WITH CHECK ADD  CONSTRAINT [FX_SYS_BITACORA_ID_SESION] FOREIGN KEY([ID_SESION])
REFERENCES [Seguridad].[SYS_SESION] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_BITACORA] CHECK CONSTRAINT [FX_SYS_BITACORA_ID_SESION]
GO
ALTER TABLE [Seguridad].[SYS_SESION]  WITH CHECK ADD  CONSTRAINT [FX_SYS_SESION_ID_ROL] FOREIGN KEY([ID_ROL])
REFERENCES [Seguridad].[SYS_ROL] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_SESION] CHECK CONSTRAINT [FX_SYS_SESION_ID_ROL]
GO
ALTER TABLE [Seguridad].[SYS_SESION]  WITH CHECK ADD  CONSTRAINT [FX_SYS_SESION_ID_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [Seguridad].[SYS_USUARIOS] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_SESION] CHECK CONSTRAINT [FX_SYS_SESION_ID_USUARIO]
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS]  WITH CHECK ADD  CONSTRAINT [FX_SYS_USUARIOS_ID_ROL] FOREIGN KEY([ID_ROL])
REFERENCES [Seguridad].[SYS_ROL] ([ID])
GO
ALTER TABLE [Seguridad].[SYS_USUARIOS] CHECK CONSTRAINT [FX_SYS_USUARIOS_ID_ROL]
GO
