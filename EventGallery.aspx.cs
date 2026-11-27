using System;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;

public partial class EventGallery : System.Web.UI.Page
{
    private DataTable dtEventGallery;

    // Optional Event_Date column (DATETIME) of the picture table. Safe when the column is not in the database yet.
    protected string EventField(object dataItem, string column)
    {
        System.Data.DataRowView rv = dataItem as System.Data.DataRowView;
        if (rv == null || !rv.Row.Table.Columns.Contains(column)) { return ""; }
        object v = rv[column];
        if (v == null || v == DBNull.Value) { return ""; }
        if (v is DateTime) { return ((DateTime)v).ToString("yyyy-MM-dd"); }
        return HttpUtility.HtmlAttributeEncode(v.ToString().Trim());
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindEventGallery();
        }
    }

    private void BindEventGallery()
    {
        DataSet_ACNN_DBTableAdapters.Table_Event_GalleryTableAdapter adapter =
            new DataSet_ACNN_DBTableAdapters.Table_Event_GalleryTableAdapter();

        // Get ALL gallery images only once
        dtEventGallery = adapter.GetDataByLatest();

        // Create a table containing only unique Media_title values
        DataTable dtEvents = new DataTable();

        dtEvents.Columns.Add("Media_title");

        string previousTitle = "";

        foreach (DataRow row in dtEventGallery.Rows)
        {
            string mediaTitle = row["Media_title"].ToString();

            if (mediaTitle != previousTitle)
            {
                dtEvents.Rows.Add(mediaTitle);
                previousTitle = mediaTitle;
            }
        }

        // Bind unique events to outer Repeater
        RepeaterEvent.DataSource = dtEvents;
        RepeaterEvent.DataBind();
    }

    protected void RepeaterEvent_ItemDataBound(
        object sender,
        RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView row = (DataRowView)e.Item.DataItem;

            string mediaTitle = row["Media_title"].ToString();

            Repeater repeaterImages =
                (Repeater)e.Item.FindControl("RepeaterImages");

            // Create table for images of this event
            DataTable dtImages = dtEventGallery.Clone();

            foreach (DataRow imageRow in dtEventGallery.Rows)
            {
                if (imageRow["Media_title"].ToString() == mediaTitle)
                {
                    dtImages.ImportRow(imageRow);
                }
            }

            // Bind all images belonging to this event
            repeaterImages.DataSource = dtImages;
            repeaterImages.DataBind();
        }
    }
}