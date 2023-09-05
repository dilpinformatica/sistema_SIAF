using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APP_ENTIDADES
{
    public class TBL_FIRMAS_DOCUMENTOS
    {
        // Campos de la Clase
        private string xNOMBRE_01 = string.Empty;
        private string xCARGO_01 = string.Empty;
        private string xNOMBRE_02 = string.Empty;
        private string xCARGO_02 = string.Empty;
        private string xNOMBRE_03 = string.Empty;
        private string xCARGO_03 = string.Empty;
        private string xNOMBRE_04 = string.Empty;
        private string xCARGO_04 = string.Empty;
        private string xNOMBRE_05 = string.Empty;
        private string xCARGO_05 = string.Empty;

        // Constructor de la Clase
        public TBL_FIRMAS_DOCUMENTOS() { }

        // Propiedades de la Clase
        public string NOMBRE_01
        {
            get { return xNOMBRE_01; }
            set { xNOMBRE_01 = value; }
        }

        public string CARGO_01
        {
            get { return xCARGO_01; }
            set { xCARGO_01 = value; }
        }

        public string NOMBRE_02
        {
            get { return xNOMBRE_02; }
            set { xNOMBRE_02 = value; }
        }

        public string CARGO_02
        {
            get { return xCARGO_02; }
            set { xCARGO_02 = value; }
        }

        public string NOMBRE_03
        {
            get { return xNOMBRE_03; }
            set { xNOMBRE_03 = value; }
        }

        public string CARGO_03
        {
            get { return xCARGO_03; }
            set { xCARGO_03 = value; }
        }

        public string NOMBRE_04
        {
            get { return xNOMBRE_04; }
            set { xNOMBRE_04 = value; }
        }

        public string CARGO_04
        {
            get { return xCARGO_04; }
            set { xCARGO_04 = value; }
        }

        public string NOMBRE_05
        {
            get { return xNOMBRE_05; }
            set { xNOMBRE_05 = value; }
        }

        public string CARGO_05
        {
            get { return xCARGO_05; }
            set { xCARGO_05 = value; }
        }
    }
}
