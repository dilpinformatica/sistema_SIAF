using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_CATALOGO_ARTICULOS
    {
        // Campos de la Clase
        private string xCOD = string.Empty;
        private string xDESCRIPCION = string.Empty;
        private string xCLASE = string.Empty;
        private string xMODELO = string.Empty;
        private string xMARCA = string.Empty;
        private string xCOLOR = string.Empty;
        private string xINGRESO = string.Empty;
        private string xESTADO = string.Empty;
        private string xBAJA = string.Empty;

        // Constructor de la Clase
        public TBL_REG_CATALOGO_ARTICULOS() { }

        // Propiedades de la Clase
        public string CODIGO
        {
            get { return xCOD; }
            set { xCOD = value; }
        }

        public string DESCRIPCION
        {
            get { return xDESCRIPCION; }
            set { xDESCRIPCION = value; }
        }
                
        public string CLASE
        {
            get { return xCLASE; }
            set { xCLASE = value; }
        }

        public string MODELO
        {
            get { return xMODELO; }
            set { xMODELO = value; }
        }

        public string MARCA
        {
            get { return xMARCA; }
            set { xMARCA = value; }
        }

        public string COLOR
        {
            get { return xCOLOR; }
            set { xCOLOR = value; }
        }

        public string INGRESO
        {
            get { return xINGRESO; }
            set { xINGRESO = value; }
        }

        public string ESTADO
        {
            get { return xESTADO; }
            set { xESTADO = value; }
        }

        public string BAJA
        {
            get { return xBAJA; }
            set { xBAJA = value; }
        }
    }
}
