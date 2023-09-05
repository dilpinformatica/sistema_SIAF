using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_ASIGNACIONES_DET
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_ARTICULO = string.Empty;
        private string xCOD_ARTICULO = string.Empty;
        private string xSERIE_ARTICULO = string.Empty;
        private string xDESC_ARTICULO = string.Empty;
        private string xPROCEDENCIA_ARTICULO = string.Empty;
        private string xCLASE_ARTICULO = string.Empty;
        private string xMODELO_ARTICULO = string.Empty;
        private string xMARCA_ARTICULO = string.Empty;
        private string xCOLOR_ARTICULO = string.Empty;
        private string xCOSTO = string.Empty;
        private string xFECHA_COMPRA_ARTICULO = string.Empty;
        private string xOBSERVACIONES = string.Empty;
        

        // Constructor de la Clase
        public TBL_REG_ASIGNACIONES_DET() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string ID_ARTICULO
        {
            get { return xID_ARTICULO; }
            set { xID_ARTICULO = value; }
        }

        public string COD_ARTICULO
        {
            get { return xCOD_ARTICULO; }
            set { xCOD_ARTICULO = value; }
        }

        public string SERIE_ARTICULO
        {
            get { return xSERIE_ARTICULO; }
            set { xSERIE_ARTICULO = value; }
        }

        public string DESC_ARTICULO
        {
            get { return xDESC_ARTICULO; }
            set { xDESC_ARTICULO = value; }
        }

        public string PROCEDENCIA_ARTICULO
        {
            get { return xPROCEDENCIA_ARTICULO; }
            set { xPROCEDENCIA_ARTICULO = value; }
        }

        public string CLASE_ARTICULO
        {
            get { return xCLASE_ARTICULO; }
            set { xCLASE_ARTICULO = value; }
        }

        public string MODELO_ARTICULO
        {
            get { return xMODELO_ARTICULO; }
            set { xMODELO_ARTICULO = value; }
        }

        public string MARCA_ARTICULO
        {
            get { return xMARCA_ARTICULO; }
            set { xMARCA_ARTICULO = value; }
        }

        public string COLOR_ARTICULO
        {
            get { return xCOLOR_ARTICULO; }
            set { xCOLOR_ARTICULO = value; }
        }

        public string COSTO
        {
            get { return xCOSTO; }
            set { xCOSTO = value; }
        }
                
        public string FECHA_COMPRA_ARTICULO
        {
            get { return xFECHA_COMPRA_ARTICULO; }
            set { xFECHA_COMPRA_ARTICULO = value; }
        }

        public string OBSERVACIONES
        {
            get { return xOBSERVACIONES; }
            set { xOBSERVACIONES = value; }
        }

    }
}
