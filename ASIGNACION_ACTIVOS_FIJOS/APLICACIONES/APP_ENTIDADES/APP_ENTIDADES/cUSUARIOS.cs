using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cUSUARIOS
/// </summary>

namespace APP_ENTIDADES {
    public class cUSUARIOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xROL = string.Empty;
        private string xUID = string.Empty;
        private string xPWD = string.Empty;
        private string xNOMBRE = string.Empty;
        
        // Constructor de la Clase
        public cUSUARIOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }
                
        public string ROL
        {
            get { return xROL; }
            set { xROL = value; }
        }

        public string UID
        {
            get { return xUID; }
            set { xUID = value; }
        }

        public string PWD
        {
            get { return xPWD; }
            set { xPWD = value; }
        }

        public string NOMBRE
        {
            get { return xNOMBRE; }
            set { xNOMBRE = value; }
        }

    }
}
