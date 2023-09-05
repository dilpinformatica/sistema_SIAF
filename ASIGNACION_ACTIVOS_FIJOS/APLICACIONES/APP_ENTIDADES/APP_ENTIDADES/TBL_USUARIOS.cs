using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TBL_USUARIOS
/// </summary>

namespace APP_ENTIDADES {
    public class TBL_USUARIOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCOD = string.Empty;
        private string xDESC = string.Empty;
        private string xUID = string.Empty;
        private string xPWD = string.Empty;
        private string xID_ROL = string.Empty;
        private string xDESC_ROL = string.Empty;
        private string xEST = string.Empty;
        private string xDESC_EST = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xEDIT = string.Empty;


        // Constructor de la Clase
        public TBL_USUARIOS() { }

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

        public string DESCRIPCION
        {
            get { return xDESC; }
            set { xDESC = value; }
        }

        public string UID
        {
            get { return xUID; }
            set { xUID = value; }
        }

        public string PWD
        {
            get { return xPWD; }
            set { xPWD = value; }
        }
                
        public string ID_ROL
        {
            get { return xID_ROL; }
            set { xID_ROL = value; }
        }

        public string DESC_ROL
        {
            get { return xDESC_ROL; }
            set { xDESC_ROL = value; }
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
                
        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }

    }
}
