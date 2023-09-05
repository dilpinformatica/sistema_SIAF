using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_CONTACTOS_x_PROVEEDOR
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_SEXO = string.Empty;
        private string xDESC_SEXO = string.Empty;
        private string xID_TIPO = string.Empty;
        private string xDESC_TIPO = string.Empty;
        private string xCEDULA = string.Empty;
        private string xPRIMER_NOMBRE = string.Empty;
        private string xSEGUNDO_NOMBRE = string.Empty;
        private string xPRIMER_APELLIDO = string.Empty;
        private string xSEGUNDO_APELLIDO = string.Empty;
        private string xNOMBRE_COMPLETO = string.Empty;
        private string xDIR = string.Empty;
        private string xTEL = string.Empty;
        private string xCEL_T = string.Empty;
        private string xCEL_C = string.Empty;
        private string xEMAIL = string.Empty;
        private string xING = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;

        // Constructor de la Clase
        public TBL_CONTACTOS_x_PROVEEDOR() { }

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
                
        public string CEDULA
        {
            get { return xCEDULA; }
            set { xCEDULA = value; }
        }

        public string PRIMER_NOMBRE
        {
            get { return xPRIMER_NOMBRE; }
            set { xPRIMER_NOMBRE = value; }
        }

        public string SEGUNDO_NOMBRE
        {
            get { return xSEGUNDO_NOMBRE; }
            set { xSEGUNDO_NOMBRE = value; }
        }

        public string PRIMER_APELLIDO
        {
            get { return xPRIMER_APELLIDO; }
            set { xPRIMER_APELLIDO = value; }
        }

        public string SEGUNDO_APELLIDO
        {
            get { return xSEGUNDO_APELLIDO; }
            set { xSEGUNDO_APELLIDO = value; }
        }
                
        public string NOMBRE_COMPLETO
        {
            get { return xNOMBRE_COMPLETO; }
            set { xNOMBRE_COMPLETO = value; }
        }
                
        public string DIRECCION
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
