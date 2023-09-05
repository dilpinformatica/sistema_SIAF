using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class cPROVEEDORES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_SEXO = string.Empty;
        private string xID_TIPO = string.Empty;
        private string xIDENTIFICACION = string.Empty;
        private string xRAZON_SOCIAL = string.Empty;
        private string xNOM_01 = string.Empty;
        private string xNOM_02 = string.Empty;
        private string xAPE_01 = string.Empty;
        private string xAPE_02 = string.Empty;
        private string xDIR = string.Empty;
        private string xEMAIL = string.Empty;
        private string xTEL = string.Empty;
        private string xCEL_T = string.Empty;
        private string xCEL_C = string.Empty;
        private string xING = string.Empty;
        private string xUSER = string.Empty;
        

        // Constructor de la Clase
        public cPROVEEDORES() { }

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
                
        public string ID_TIPO
        {
            get { return xID_TIPO; }
            set { xID_TIPO = value; }
        }
                
        public string IDENTIFICACION
        {
            get { return xIDENTIFICACION; }
            set { xIDENTIFICACION = value; }
        }

        public string RAZON_SOCIAL
        {
            get { return xRAZON_SOCIAL; }
            set { xRAZON_SOCIAL = value; }
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
                
        public string EMAIL
        {
            get { return xEMAIL; }
            set { xEMAIL = value; }
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

        public string INGRESO
        {
            get { return xING; }
            set { xING = value; }
        }

        public string USER
        {
            get { return xUSER; }
            set { xUSER = value; }
        }
    }
}
