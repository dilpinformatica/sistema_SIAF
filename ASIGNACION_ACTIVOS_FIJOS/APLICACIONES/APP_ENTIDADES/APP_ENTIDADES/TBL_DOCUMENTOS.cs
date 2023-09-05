using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_DOCUMENTOS
    {
        // Campos de la Clase
        private string xNOM = string.Empty;
        private string xURL = string.Empty;
        private string xEXT = string.Empty;
        private string xSERVER = string.Empty;
        private string xID = string.Empty;
        private string xID_TIPO = string.Empty;
        
        // Constructor de la Clase
        public TBL_DOCUMENTOS() { }

        // Propiedades de la Clase
        public string nbarchivo
        {
            get { return xNOM; }
            set { xNOM = value; }
        }

        public string urlarchivo
        {
            get { return xURL; }
            set { xURL = value; }
        }

        public string ext
        {
            get { return xEXT; }
            set { xEXT = value; }
        }

        public string server
        {
            get { return xSERVER; }
            set { xSERVER = value; }
        }

        public string id
        {
            get { return xID; }
            set { xID = value; }
        }

        public string id_tipo
        {
            get { return xID_TIPO; }
            set { xID_TIPO = value; }
        }
    }
}
