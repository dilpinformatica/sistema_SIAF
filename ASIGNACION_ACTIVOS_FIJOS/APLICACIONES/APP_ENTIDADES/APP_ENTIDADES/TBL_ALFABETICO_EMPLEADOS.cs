using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class TBL_ALFABETICO_EMPLEADOS
    {
        // Campos de la Clase
        private string xCODIGO = string.Empty;
        private string xINSS = string.Empty;
        private string xNOMBRE_COMPLETO = string.Empty;
        private string xCEDULA = string.Empty;
        private string xTIPO_CONTRATO = string.Empty;
        private string xCARGO = string.Empty;
        private string xOFICINA = string.Empty;
        private string xSUELDO = string.Empty;
        private string xCUENTA = string.Empty;
        private string xINICIO = string.Empty;
        private string xFIN = string.Empty;
        private string xAGUI = string.Empty;
        private string xANTIG = string.Empty;
        private string xRET_INSS = string.Empty;
        private string xRET_IR = string.Empty;
        private string xESTADO = string.Empty;
        
        // Constructor de la Clase
        public TBL_ALFABETICO_EMPLEADOS() { }

        // Propiedades de la Clase
        public string CODIGO
        {
            get { return xCODIGO; }
            set { xCODIGO = value; }
        }

        public string INSS
        {
            get { return xINSS; }
            set { xINSS = value; }
        }

        public string NOMBRE_COMPLETO
        {
            get { return xNOMBRE_COMPLETO; }
            set { xNOMBRE_COMPLETO = value; }
        }

        public string CEDULA
        {
            get { return xCEDULA; }
            set { xCEDULA = value; }
        }
                
        public string TIPO_CONTRATO
        {
            get { return xTIPO_CONTRATO; }
            set { xTIPO_CONTRATO = value; }
        }

        public string CARGO
        {
            get { return xCARGO; }
            set { xCARGO = value; }
        }
                
        public string OFICINA
        {
            get { return xOFICINA; }
            set { xOFICINA = value; }
        }

        public string SUELDO
        {
            get { return xSUELDO; }
            set { xSUELDO = value; }
        }
        
        public string CUENTA
        {
            get { return xCUENTA; }
            set { xCUENTA = value; }
        }

        public string INICIO
        {
            get { return xINICIO; }
            set { xINICIO = value; }
        }

        public string FIN
        {
            get { return xFIN; }
            set { xFIN = value; }
        }

        public string AGUI
        {
            get { return xAGUI; }
            set { xAGUI = value; }
        }

        public string ANTIG
        {
            get { return xANTIG; }
            set { xANTIG = value; }
        }
        
        public string RET_INSS
        {
            get { return xRET_INSS; }
            set { xRET_INSS = value; }
        }

        public string RET_IR
        {
            get { return xRET_IR; }
            set { xRET_IR = value; }
        }

        public string ESTADO
        {
            get { return xESTADO; }
            set { xESTADO = value; }
        }
        
    }
}
