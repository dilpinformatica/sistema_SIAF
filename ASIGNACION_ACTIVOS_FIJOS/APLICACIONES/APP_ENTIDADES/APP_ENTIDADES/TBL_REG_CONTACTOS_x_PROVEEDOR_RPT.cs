using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_CONTACTOS_x_PROVEEDOR_RPT
    {
        // Campos de la Clase
        private string xCOD = string.Empty;
        private string xIDENTIFICACION = string.Empty;
        private string xNOMBRE_COMPLETO = string.Empty;
        private string xCOD_CONTACTO = string.Empty;
        private string xIDENTIFICACION_CONTACTO = string.Empty;
        private string xNOMBRE_COMPLETO_CONTACTO = string.Empty;
        private string xTEL = string.Empty;
        private string xDESC_TIPO = string.Empty;
        private string xESTADO = string.Empty;
        private string xINGRESO = string.Empty;
        private string xINGRESO_CONTACTO = string.Empty;
        private string xBAJA = string.Empty;
        private string xEDIT = string.Empty;
        private string xEDIT_CONTACTO = string.Empty;


        // Constructor de la Clase
        public TBL_REG_CONTACTOS_x_PROVEEDOR_RPT() { }

        // Propiedades de la Clase
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

        public string NOMBRE_COMPLETO
        {
            get { return xNOMBRE_COMPLETO; }
            set { xNOMBRE_COMPLETO = value; }
        }

        public string CODIGO_CONTACTO
        {
            get { return xCOD_CONTACTO; }
            set { xCOD_CONTACTO = value; }
        }

        public string IDENTIFICACION_CONTACTO
        {
            get { return xIDENTIFICACION_CONTACTO; }
            set { xIDENTIFICACION_CONTACTO = value; }
        }

        public string NOMBRE_COMPLETO_CONTACTO
        {
            get { return xNOMBRE_COMPLETO_CONTACTO; }
            set { xNOMBRE_COMPLETO_CONTACTO = value; }
        }

        public string TELEFONOS
        {
            get { return xTEL; }
            set { xTEL = value; }
        }

        public string TIPO_CONTACTO
        {
            get { return xDESC_TIPO; }
            set { xDESC_TIPO = value; }
        }

        public string ESTADO
        {
            get { return xESTADO; }
            set { xESTADO = value; }
        }

        public string INGRESO
        {
            get { return xINGRESO; }
            set { xINGRESO = value; }
        }

        public string INGRESO_CONTACTO
        {
            get { return xINGRESO_CONTACTO; }
            set { xINGRESO_CONTACTO = value; }
        }

        public string BAJA
        {
            get { return xBAJA; }
            set { xBAJA = value; }
        }

        public string EDIT
        {
            get { return xEDIT; }
            set { xEDIT = value; }
        }

        public string EDIT_CONTACTO
        {
            get { return xEDIT_CONTACTO; }
            set { xEDIT_CONTACTO = value; }
        }

    }
}
