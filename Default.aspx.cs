using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Optional Event_Group / Event_Date columns of Table_Event_Response.
    // Safe when the columns are not in the database yet (returns an empty string).
    protected string EventField(object dataItem, string column)
    {
        System.Data.DataRowView rv = dataItem as System.Data.DataRowView;
        if (rv == null || !rv.Row.Table.Columns.Contains(column)) { return ""; }
        object v = rv[column];
        if (v == null || v == DBNull.Value) { return ""; }
        if (v is DateTime) { return ((DateTime)v).ToString("yyyy-MM-dd"); }
        return HttpUtility.HtmlAttributeEncode(v.ToString().Trim());
    }
}