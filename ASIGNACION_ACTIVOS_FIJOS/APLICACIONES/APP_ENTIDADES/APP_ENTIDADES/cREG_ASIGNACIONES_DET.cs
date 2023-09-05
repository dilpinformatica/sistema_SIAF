using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cREG_ASIGNACIONES_DET
    {
        // Campos de la Clase
        private string xARTICULO = string.Empty;
        private string xCOSTO = string.Empty;
                

        // Constructor de la Clase
        public cREG_ASIGNACIONES_DET() { }

        // Propiedades de la Clase
        public string ARTICULO
        {
            get { return xARTICULO; }
            set { xARTICULO = value; }
        }
                
        public string COSTO
        {
            get { return xCOSTO; }
            set { xCOSTO = value; }
        }
                                
    }
}
