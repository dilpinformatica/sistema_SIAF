using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class TBL_SESIONES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xFECHA = string.Empty;
        private string xUSUARIO = string.Empty;
        private string xROL = string.Empty;
        private string xESTADO = string.Empty;

        // Constructor de la Clase
        public TBL_SESIONES() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string FECHA
        {
            get { return xFECHA; }
            set { xFECHA = value; }
        }

        public string USUARIO
        {
            get { return xUSUARIO; }
            set { xUSUARIO = value; }
        }

        public string ROL
        {
            get { return xROL; }
            set { xROL = value; }
        }

        public string ESTADO
        {
            get { return xESTADO; }
            set { xESTADO = value; }
        }

    }
}
