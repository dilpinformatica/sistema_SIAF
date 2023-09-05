using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TBL_AUTENTICACION
/// </summary>

namespace APP_ENTIDADES {
    public class TBL_AUTENTICACION
    {
        // Campos de la Clase...
        private string xID = string.Empty;
        private string xNOMBRE = string.Empty;
        private string xTIPO = string.Empty;
        private string xID_TIPO = string.Empty;
        private string xUID = string.Empty;
        private string xGRAL_EMPRESA = string.Empty;
        private string xESP_EMPRESA = string.Empty;
        private string xDPTO_EMPRESA = string.Empty;
        private string xSESION = string.Empty;
        
        // Constructor de la Clase
        public TBL_AUTENTICACION() { }

        // Campos de la Clase...
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string NOMBRE
        {
            get { return xNOMBRE; }
            set { xNOMBRE = value; }
        }

        public string TIPO
        {
            get { return xTIPO; }
            set { xTIPO = value; }
        }

        public string ID_TIPO
        {
            get { return xID_TIPO; }
            set { xID_TIPO = value; }
        }

        public string UID
        {
            get { return xUID; }
            set { xUID = value; }
        }

        public string GRAL_EMPRESA
        {
            get { return xGRAL_EMPRESA; }
            set { xGRAL_EMPRESA = value; }
        }

        public string ESP_EMPRESA
        {
            get { return xESP_EMPRESA; }
            set { xESP_EMPRESA = value; }
        }

        public string DPTO_EMPRESA
        {
            get { return xDPTO_EMPRESA; }
            set { xDPTO_EMPRESA = value; }
        }
                
        public string SESION
        {
            get { return xSESION; }
            set { xSESION = value; }
        }
                
    }
}
