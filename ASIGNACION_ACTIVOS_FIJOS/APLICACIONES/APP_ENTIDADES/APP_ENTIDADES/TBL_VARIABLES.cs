using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TBL_VARIABLES
/// </summary>

namespace APP_ENTIDADES { 
    public class TBL_VARIABLES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xDESC = string.Empty;

        // Constructor de la Clase
        public TBL_VARIABLES() { }

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
    }
}
