using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class cEMPLEADOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_SEXO = string.Empty;
        private string xID_CARGO = string.Empty;
        private string xID_AREA = string.Empty;
        private string xCED = string.Empty;
        private string xINSS = string.Empty;
        private string xNOM_01 = string.Empty;
        private string xNOM_02 = string.Empty;
        private string xAPE_01 = string.Empty;
        private string xAPE_02 = string.Empty;
        private string xDIR = string.Empty;
        private string xTEL = string.Empty;
        private string xCEL_T = string.Empty;
        private string xCEL_C = string.Empty;
        private string xEMAIL = string.Empty;
        private string xUSER = string.Empty;
        private string xING = string.Empty;

        // Constructor de la Clase
        public cEMPLEADOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string ID_SEXO
        {
            get { return xID_SEXO; }
            set { xID_SEXO = value; }
        }

        public string ID_CARGO
        {
            get { return xID_CARGO; }
            set { xID_CARGO = value; }
        }

        public string ID_AREA
        {
            get { return xID_AREA; }
            set { xID_AREA = value; }
        }

        public string CEDULA
        {
            get { return xCED; }
            set { xCED = value; }
        }

        public string INSS
        {
            get { return xINSS; }
            set { xINSS = value; }
        }
                
        public string NOM_01
        {
            get { return xNOM_01; }
            set { xNOM_01 = value; }
        }

        public string NOM_02
        {
            get { return xNOM_02; }
            set { xNOM_02 = value; }
        }
        
        public string APE_01
        {
            get { return xAPE_01; }
            set { xAPE_01 = value; }
        }

        public string APE_02
        {
            get { return xAPE_02; }
            set { xAPE_02 = value; }
        }
                
        public string DIR
        {
            get { return xDIR; }
            set { xDIR = value; }
        }

        public string TEL
        {
            get { return xTEL; }
            set { xTEL = value; }
        }

        public string CEL_T
        {
            get { return xCEL_T; }
            set { xCEL_T = value; }
        }

        public string CEL_C
        {
            get { return xCEL_C; }
            set { xCEL_C = value; }
        }

        public string EMAIL
        {
            get { return xEMAIL; }
            set { xEMAIL = value; }
        }
          
        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }

        public string INGRESO
        {
            get { return xING; }
            set { xING = value; }
        }
    }
}
