using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_PROVEEDORES
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xCOD = string.Empty;
        private string xIDENTIFICACION = string.Empty;
        private string xNOM_01 = string.Empty;
        private string xNOM_02 = string.Empty;
        private string xAPE_01 = string.Empty;
        private string xAPE_02 = string.Empty;
        private string xNOMBRE_COMPLETO = string.Empty;
        private string xRAZON_SOCIAL = string.Empty;
        private string xDIR = string.Empty;
        private string xEMAIL = string.Empty;
        private string xTEL = string.Empty;
        private string xCEL_T = string.Empty;
        private string xCEL_C = string.Empty;
        private string xID_SEXO = string.Empty;
        private string xDESC_SEXO = string.Empty;
        private string xID_TIPO = string.Empty;
        private string xDESC_TIPO = string.Empty;
        private string xEST = string.Empty;
        private string xDESC_EST = string.Empty;
        private string xBAJA = string.Empty;
        private string xDESC_BAJA = string.Empty;
        private string xING = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;
        
        // Constructor de la Clase
        public TBL_PROVEEDORES() { }

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

        public string IDENTIFICACION
        {
            get { return xIDENTIFICACION; }
            set { xIDENTIFICACION = value; }
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

        public string NOMBRE_COMPLETO
        {
            get { return xNOMBRE_COMPLETO; }
            set { xNOMBRE_COMPLETO = value; }
        }

        public string RAZON_SOCIAL
        {
            get { return xRAZON_SOCIAL; }
            set { xRAZON_SOCIAL = value; }
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

        public string ID_SEXO
        {
            get { return xID_SEXO; }
            set { xID_SEXO = value; }
        }

        public string DESC_SEXO
        {
            get { return xDESC_SEXO; }
            set { xDESC_SEXO = value; }
        }

        public string ID_TIPO
        {
            get { return xID_TIPO; }
            set { xID_TIPO = value; }
        }

        public string DESC_TIPO
        {
            get { return xDESC_TIPO; }
            set { xDESC_TIPO = value; }
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

        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }
    }
}
