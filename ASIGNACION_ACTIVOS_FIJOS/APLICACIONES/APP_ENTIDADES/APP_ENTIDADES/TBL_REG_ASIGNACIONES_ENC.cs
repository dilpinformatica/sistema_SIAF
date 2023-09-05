using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_ASIGNACIONES_ENC
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCODIGO = string.Empty;
        private string xID_TIPO_MOVIMIENTO = string.Empty;
        private string xDESC_TIPO_MOVIMIENTO = string.Empty;
        private string xFECHA = string.Empty;
        private string xID_EMPLEADO = string.Empty;
        private string xEMPLEADO = string.Empty;
        private string xCONCEPTO = string.Empty;
        private string xCANTIDAD = string.Empty;
        private string xCOSTO = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xID_ESTADO = string.Empty;
        private string xDESC_ESTADO = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;
        
        
        // Constructor de la Clase
        public TBL_REG_ASIGNACIONES_ENC() { }

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

        public string ID_TIPO_MOVIMIENTO
        {
            get { return xID_TIPO_MOVIMIENTO; }
            set { xID_TIPO_MOVIMIENTO = value; }
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
                
        public string ID_EMPLEADO
        {
            get { return xID_EMPLEADO; }
            set { xID_EMPLEADO = value; }
        }
                
        public string EMPLEADO 
        {
            get { return xEMPLEADO; }
            set { xEMPLEADO = value; }
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

        public string COSTO
        {
            get { return xCOSTO; }
            set { xCOSTO = value; }
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
        
        public string ID_ESTADO
        {
            get { return xID_ESTADO; }
            set { xID_ESTADO = value; }
        }

        public string DESC_ESTADO
        {
            get { return xDESC_ESTADO; }
            set { xDESC_ESTADO = value; }
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
