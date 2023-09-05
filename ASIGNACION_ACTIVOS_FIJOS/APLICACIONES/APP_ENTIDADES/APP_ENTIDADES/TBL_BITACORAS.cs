using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APP_ENTIDADES
{
    public class TBL_BITACORAS
    {
        // Campos de la Clase
    private string xID = string.Empty;
    private string xHORA = string.Empty;
    private string xVENTANA = string.Empty;
    private string xANTES = string.Empty;
    private string xDESPUES = string.Empty;

    // Constructor de la Clase
    public TBL_BITACORAS() { }

    // Propiedades de la Clase
    public string ID
    {
        get { return xID; }
        set { xID = value; }
    }

    public string HORA
    {
        get { return xHORA; }
        set { xHORA = value; }
    }

    public string VENTANA
    {
        get { return xVENTANA; }
        set { xVENTANA = value; }
    }

    public string ANTES
    {
        get { return xANTES; }
        set { xANTES = value; }
    }

    public string DESPUES
    {
        get { return xDESPUES; }
        set { xDESPUES = value; }
    }
    }
}
