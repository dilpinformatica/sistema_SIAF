using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cREG_CARGA_ARCHIVOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xARCHIVO = string.Empty;
        private string xEXTENSION = string.Empty;
        private string xURL = string.Empty;
        private string xTIPO = string.Empty;
        private string xID_TIPO = string.Empty;

        // Constructor de la Clase
        public cREG_CARGA_ARCHIVOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }
                
        public string ARCHIVO
        {
            get { return xARCHIVO; }
            set { xARCHIVO = value; }
        }

        public string EXTENSION
        {
            get { return xEXTENSION; }
            set { xEXTENSION = value; }
        }

        public string URL
        {
            get { return xURL; }
            set { xURL = value; }
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
    }
}
