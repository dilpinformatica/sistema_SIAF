using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_OPCIONES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCOD = string.Empty;
        private string xCOD_01 = string.Empty;
        private string xCOD_02 = string.Empty;
        private string xDESC = string.Empty;
        private string xID_NIVEL = string.Empty;
        private string xDESC_NIVEL = string.Empty;
        private string xTIPO = string.Empty;
        private string xRAYA = string.Empty;
        private string xORDEN = string.Empty;
        private string xEST = string.Empty;
        private string xDESC_EST = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;


        // Constructor de la Clase
        public TBL_OPCIONES() { }

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
                
        public string DESCRIPCION
        {
            get { return xDESC; }
            set { xDESC = value; }
        }

        public string ID_NIVEL
        {
            get { return xID_NIVEL; }
            set { xID_NIVEL = value; }
        }

        public string DESC_NIVEL
        {
            get { return xDESC_NIVEL; }
            set { xDESC_NIVEL = value; }
        }
                
        public string RAYA
        {
            get { return xRAYA; }
            set { xRAYA = value; }
        }

        public string ORDEN
        {
            get { return xORDEN; }
            set { xORDEN = value; }
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

        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }
    }
}
