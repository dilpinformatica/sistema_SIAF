using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cACCESOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xEJEC = string.Empty;
        private string xVIS = string.Empty;
        private string xIMP = string.Empty;
        private string xDEL = string.Empty;
        private string xINS = string.Empty;
        private string xACT = string.Empty;
        private string xUSER = string.Empty;


        // Constructor de la Clase
        public cACCESOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string EJEC
        {
            get { return xEJEC; }
            set { xEJEC = value; }
        }

        public string VIS
        {
            get { return xVIS; }
            set { xVIS = value; }
        }

        public string IMP
        {
            get { return xIMP; }
            set { xIMP = value; }
        }

        public string DEL
        {
            get { return xDEL; }
            set { xDEL = value; }
        }

        public string INS
        {
            get { return xINS; }
            set { xINS = value; }
        }

        public string ACT
        {
            get { return xACT; }
            set { xACT = value; }
        }

        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }
    }
}
