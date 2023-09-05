using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_ACCESOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCOD = string.Empty;
        private string xCOD_01 = string.Empty;
        private string xCOD_02 = string.Empty;
        private string xDESC = string.Empty;
        private bool xEJEC = false;
        private bool xVIS = false;
        private bool xIMP = false;
        private bool xDEL = false;
        private bool xINS = false;
        private bool xACT = false;
        private string xEST = string.Empty;
        private string xDESC_EST = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xUSER = string.Empty;
        private string xROL = string.Empty;
        private string xEDIT = string.Empty;


        // Constructor de la Clase
        public TBL_ACCESOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string CODIGO
        {
            get { return xCOD; }
            set { xCOD = value; }
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

        public string DESC
        {
            get { return xDESC; }
            set { xDESC = value; }
        }

        public bool EJEC
        {
            get { return xEJEC; }
            set { xEJEC = value; }
        }

        public bool VIS
        {
            get { return xVIS; }
            set { xVIS = value; }
        }

        public bool IMP
        {
            get { return xIMP; }
            set { xIMP = value; }
        }

        public bool DEL
        {
            get { return xDEL; }
            set { xDEL = value; }
        }

        public bool INS
        {
            get { return xINS; }
            set { xINS = value; }
        }

        public bool ACT
        {
            get { return xACT; }
            set { xACT = value; }
        }

        public string ID_ESTADO
        {
            get { return xEST; }
            set { xEST = value; }
        }

        public string ESTADO
        {
            get { return xDESC_EST; }
            set { xDESC_EST = value; }
        }

        public string BAJA
        {
            get { return xBAJA; }
            set { xBAJA = value; }
        }

        public string DESC_BAJA
        {
            get { return xDESC_BAJA; }
            set { xDESC_BAJA = value; }
        }

        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }

        public string ROL
        {
            get { return xROL; }
            set { xROL = value; }
        }

        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }

    }
}
