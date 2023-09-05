using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class PROYECTOS_RPT
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_PERIODO = string.Empty;
        private string xDESC_PERIODO = string.Empty;
        private string xCOD_RUBRO = string.Empty;
        private string xDESC_RUBRO = string.Empty;
        private string xCOD = string.Empty;
        private string xNOMBRE = string.Empty;
        private string xDESC = string.Empty;
        private string yCOD = string.Empty;
        private string yNOMBRE = string.Empty;
        private string yDESC = string.Empty;
        private string xANYO = string.Empty;
        private string xCOMPONENTE = string.Empty;
        private string xEST = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;

        // Constructor de la Clase
        public PROYECTOS_RPT() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string ID_PERIODO
        {
            get { return xID_PERIODO; }
            set { xID_PERIODO = value; }
        }

        public string DESC_PERIODO
        {
            get { return xDESC_PERIODO; }
            set { xDESC_PERIODO = value; }
        }

        public string COD_RUBRO
        {
            get { return xCOD_RUBRO; }
            set { xCOD_RUBRO = value; }
        }

        public string DESC_RUBRO
        {
            get { return xDESC_RUBRO; }
            set { xDESC_RUBRO = value; }
        }

        public string CODIGO
        {
            get { return xCOD; }
            set { xCOD = value; }
        }

        public string NOMBRE
        {
            get { return xNOMBRE; }
            set { xNOMBRE = value; }
        }
                
        public string DESC
        {
            get { return xDESC; }
            set { xDESC = value; }
        }

        public string CODIGO_01
        {
            get { return yCOD; }
            set { yCOD = value; }
        }

        public string NOMBRE_01
        {
            get { return yNOMBRE; }
            set { yNOMBRE = value; }
        }

        public string DESC_01
        {
            get { return yDESC; }
            set { yDESC = value; }
        }
                
        public string ANYO
        {
            get { return xANYO; }
            set { xANYO = value; }
        }

        public string COMPONENTE
        {
            get { return xCOMPONENTE; }
            set { xCOMPONENTE = value; }
        }
                
        public string EST
        {
            get { return xEST; }
            set { xEST = value; }
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
