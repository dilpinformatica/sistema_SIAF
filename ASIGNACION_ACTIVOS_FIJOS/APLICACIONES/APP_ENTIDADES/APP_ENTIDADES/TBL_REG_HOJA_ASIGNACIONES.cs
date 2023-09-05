using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_HOJA_ASIGNACIONES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCODIGO = string.Empty;
        private string xDESC_TIPO_MOVIMIENTO = string.Empty;
        private string xFECHA = string.Empty;
        private string xEMPLEADO = string.Empty;
        private string xCEDULA = string.Empty;
        private string xCARGO = string.Empty;
        private string xAREA = string.Empty;
        private string xCONCEPTO = string.Empty;
        private string xCANTIDAD = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xDESC_ESTADO = string.Empty;
        private string xCOD_ARTICULO = string.Empty;
        private string xSERIE_ARTICULO = string.Empty;
        private string xDESC_ARTICULO = string.Empty;
        private string xPROCEDENCIA_ARTICULO = string.Empty;
        private string xCLASE_ARTICULO = string.Empty;
        private string xMODELO_ARTICULO = string.Empty;
        private string xMARCA_ARTICULO = string.Empty;
        private string xCOLOR_ARTICULO = string.Empty;
        private string xCOSTO = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;
        
        
        // Constructor de la Clase
        public TBL_REG_HOJA_ASIGNACIONES() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string CODIGO 
        {
            get { return xCODIGO; }
            set { xCODIGO = value; }
        }

        public string DESC_TIPO_MOVIMIENTO
        {
            get { return xDESC_TIPO_MOVIMIENTO; }
            set { xDESC_TIPO_MOVIMIENTO = value; }
        }

        public string FECHA
        {
            get { return xFECHA; }
            set { xFECHA = value; }
        }
                
        public string EMPLEADO 
        {
            get { return xEMPLEADO; }
            set { xEMPLEADO = value; }
        }

        public string CEDULA
        {
            get { return xCEDULA; }
            set { xCEDULA = value; }
        }

        public string CARGO
        {
            get { return xCARGO; }
            set { xCARGO = value; }
        }

        public string AREA
        {
            get { return xAREA; }
            set { xAREA = value; }
        }

        public string CONCEPTO
        {
            get { return xCONCEPTO; }
            set { xCONCEPTO = value; }
        }

        public string CANTIDAD
        {
            get { return xCANTIDAD; }
            set { xCANTIDAD = value; }
        }

        public string BAJA
        {
            get { return xBAJA; }
            set { xBAJA = value; }
        }

        public string DESC_BAJA
        {
            get { return xDESC_BAJA; }
            set { xDESC_BAJA = value; }
        }
                
        public string DESC_ESTADO
        {
            get { return xDESC_ESTADO; }
            set { xDESC_ESTADO = value; }
        }

        public string COD_ARTICULO
        {
            get { return xCOD_ARTICULO; }
            set { xCOD_ARTICULO = value; }
        }

        public string SERIE_ARTICULO
        {
            get { return xSERIE_ARTICULO; }
            set { xSERIE_ARTICULO = value; }
        }

        public string DESC_ARTICULO
        {
            get { return xDESC_ARTICULO; }
            set { xDESC_ARTICULO = value; }
        }

        public string PROCEDENCIA_ARTICULO
        {
            get { return xPROCEDENCIA_ARTICULO; }
            set { xPROCEDENCIA_ARTICULO = value; }
        }

        public string CLASE_ARTICULO
        {
            get { return xCLASE_ARTICULO; }
            set { xCLASE_ARTICULO = value; }
        }

        public string MODELO_ARTICULO
        {
            get { return xMODELO_ARTICULO; }
            set { xMODELO_ARTICULO = value; }
        }

        public string MARCA_ARTICULO
        {
            get { return xMARCA_ARTICULO; }
            set { xMARCA_ARTICULO = value; }
        }

        public string COLOR_ARTICULO
        {
            get { return xCOLOR_ARTICULO; }
            set { xCOLOR_ARTICULO = value; }
        }

        public string COSTO
        {
            get { return xCOSTO; }
            set { xCOSTO = value; }
        }

        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }

        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }
    }
}
