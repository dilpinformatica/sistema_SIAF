using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_REG_ARTICULOS
    {
        // Campos de la Clase
        private string xID = string.Empty;
        private string xID_CLASE = string.Empty;
        private string xDESC_CLASE = string.Empty;
        private string xCOD = string.Empty;
        private string xCODIGO = string.Empty;
        private string xSERIE = string.Empty;
        private string xID_MODELO = string.Empty;
        private string xDESC_MODELO = string.Empty;
        private string xID_MARCA = string.Empty;
        private string xDESC_MARCA = string.Empty;
        private string xID_COLOR = string.Empty;
        private string xDESC_COLOR = string.Empty;
        private string xID_PROCEDENCIA = string.Empty;
        private string xDESC_PROCEDENCIA = string.Empty;
        private string xDESCRIPCION = string.Empty;
        private string xOBSERVACIONES = string.Empty;
        private string xCOSTO = string.Empty;
        private string xFECHA_COMPRA = string.Empty;        
        private string xINGRESO = string.Empty;
        private string xBAJA = string.Empty;
        private string xID_ESTADO = string.Empty;
        private string xDESC_ESTADO = string.Empty;
        private string xUSER = string.Empty;
        private string xEDIT = string.Empty;
        private bool xSELECCION = false;

        // Constructor de la Clase
        public TBL_REG_ARTICULOS() { }

        // Propiedades de la Clase
        public string ID
        {
            get { return xID; }
            set { xID = value; }
        }

        public string ID_CLASE 
        {
            get { return xID_CLASE; }
            set { xID_CLASE = value; }
        }

        public string DESC_CLASE 
        {
            get { return xDESC_CLASE; }
            set { xDESC_CLASE = value; }
        }

        public string COD
        {
            get { return xCOD; }
            set { xCOD = value; }
        }

        public string CODIGO
        {
            get { return xCODIGO; }
            set { xCODIGO = value; }
        }

        public string SERIE
        {
            get { return xSERIE; }
            set { xSERIE = value; }
        }

        public string ID_MODELO
        {
            get { return xID_MODELO; }
            set { xID_MODELO = value; }
        }

        public string DESC_MODELO
        {
            get { return xDESC_MODELO; }
            set { xDESC_MODELO = value; }
        }

        public string ID_MARCA
        {
            get { return xID_MARCA; }
            set { xID_MARCA = value; }
        }

        public string DESC_MARCA
        {
            get { return xDESC_MARCA; }
            set { xDESC_MARCA = value; }
        }

        public string ID_COLOR
        {
            get { return xID_COLOR; }
            set { xID_COLOR = value; }
        }

        public string DESC_COLOR
        {
            get { return xDESC_COLOR; }
            set { xDESC_COLOR = value; }
        }

        public string ID_PROCEDENCIA
        {
            get { return xID_PROCEDENCIA; }
            set { xID_PROCEDENCIA = value; }
        }

        public string DESC_PROCEDENCIA
        {
            get { return xDESC_PROCEDENCIA; }
            set { xDESC_PROCEDENCIA = value; }
        }

        public string DESCRIPCION
        {
            get { return xDESCRIPCION; }
            set { xDESCRIPCION = value; }
        }

        public string OBSERVACIONES
        {
            get { return xOBSERVACIONES; }
            set { xOBSERVACIONES = value; }
        }

        public string COSTO
        {
            get { return xCOSTO; }
            set { xCOSTO = value; }
        }

        public string FECHA_COMPRA
        {
            get { return xFECHA_COMPRA; }
            set { xFECHA_COMPRA = value; }
        }

        public string INGRESO
        {
            get { return xINGRESO; }
            set { xINGRESO = value; }
        }
        
        public string BAJA
        {
            get { return xBAJA; }
            set { xBAJA = value; }
        }

        public string ID_ESTADO
        {
            get { return xID_ESTADO; }
            set { xID_ESTADO = value; }
        }

        public string DESC_ESTADO
        {
            get { return xDESC_ESTADO; }
            set { xDESC_ESTADO = value; }
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

        public bool SELECCION
        {
            get { return xSELECCION; }
            set { xSELECCION = value; }
        }
    }
}
