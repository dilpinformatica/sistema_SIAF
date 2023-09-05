using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cREG_ASIGNACIONES_ENC
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xFECHA = string.Empty;
        private string xEMPLEADO = string.Empty;
        private string xTIPO_MOVIMIENTO = string.Empty;
        private string xCONCEPTO = string.Empty;
        private string xUSER = string.Empty;

        // Constructor de la Clase
        public cREG_ASIGNACIONES_ENC() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
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

        public string TIPO_MOVIMIENTO
        {
            get { return xTIPO_MOVIMIENTO; }
            set { xTIPO_MOVIMIENTO = value; }
        }
                
        public string CONCEPTO
        {
            get { return xCONCEPTO; }
            set { xCONCEPTO = value; }
        }
      
        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }
    }
}
