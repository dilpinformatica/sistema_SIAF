using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class TBL_ACCESOS_01
    {
        // Campos de la Clase
        private string xEJEC = string.Empty;
        private string xVIS = string.Empty;
        private string xIMP = string.Empty;
        private string xDEL = string.Empty;
        private string xINS = string.Empty;
        private string xACT = string.Empty;

        // Constructor de la Clase
        public TBL_ACCESOS_01() { }

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

    }
}
