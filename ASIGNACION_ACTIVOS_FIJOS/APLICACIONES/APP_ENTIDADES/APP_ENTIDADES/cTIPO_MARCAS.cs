using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cTIPO_MARCAS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xDESC = string.Empty;
        private string xUSER = string.Empty;
    
        // Constructor de la Clase
        public cTIPO_MARCAS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }
                
        public string DESCRIPCION
        {
            get { return xDESC; }
            set { xDESC = value; }
        }
                
        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }
    }
}
