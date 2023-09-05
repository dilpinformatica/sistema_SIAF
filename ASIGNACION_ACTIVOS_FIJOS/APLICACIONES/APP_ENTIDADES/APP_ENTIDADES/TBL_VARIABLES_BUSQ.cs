using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class TBL_VARIABLES_BUSQ
    {
        // Campos de la Clase
        private string xlabel = string.Empty;
        private long xvalue = 0;

        // Constructor de la Clase
        public TBL_VARIABLES_BUSQ() { }

        // Propiedades de la Clase
        public string label
        {
            get { return xlabel; }
            set { xlabel = value; }
        }

        public long value
        {
            get { return xvalue; }
            set { xvalue = value; }
        }
    }
}
