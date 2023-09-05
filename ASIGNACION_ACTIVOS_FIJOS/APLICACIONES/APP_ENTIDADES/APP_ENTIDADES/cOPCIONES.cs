using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cOPCIONES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCOD_01 = string.Empty;
        private string xCOD_02 = string.Empty;
        private string xDESC = string.Empty;
        private string xNIVEL = string.Empty;
        private string xTIPO = string.Empty;
        private string xORDEN = string.Empty;
        private string xUSER = string.Empty;
        
        // Constructor de la Clase
        public cOPCIONES() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string CODIGO_01
        {
            get { return xCOD_01; }
            set { xCOD_01 = value; }
        }

        public string CODIGO_02
        {
            get { return xCOD_02; }
            set { xCOD_02 = value; }
        }

        public string DESCRIPCION
        {
            get { return xDESC; }
            set { xDESC = value; }
        }

        public string NIVEL
        {
            get { return xNIVEL; }
            set { xNIVEL = value; }
        }

        public string ORDEN
        {
            get { return xORDEN; }
            set { xORDEN = value; }
        }
                        
        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }
    }
}
