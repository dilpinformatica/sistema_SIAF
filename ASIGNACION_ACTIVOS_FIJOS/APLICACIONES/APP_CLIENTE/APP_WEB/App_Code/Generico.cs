﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Generico
/// </summary>
public static class Generico
{
    public static DataSet ToDataSet<T>(this List<T> oLista_Gen)
    {
        Type elementType = typeof(T); DataSet ds = new DataSet(); DataTable t = new DataTable(); ds.Tables.Add(t);

        //add a column to table for each public property on T
        foreach (var propInfo in elementType.GetProperties())
        {
            Type ColType = Nullable.GetUnderlyingType(propInfo.PropertyType) ?? propInfo.PropertyType;
            t.Columns.Add(propInfo.Name, ColType);
        }

        //go through each property on T and add each value to the table
        foreach (T item in oLista_Gen)
        {
            DataRow row = t.NewRow();
            foreach (var propInfo in elementType.GetProperties())
            {
                row[propInfo.Name] = propInfo.GetValue(item, null) ?? DBNull.Value;
            }
            t.Rows.Add(row);
        }
        return ds;
    }
}