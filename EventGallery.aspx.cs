using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class EventGallery : System.Web.UI.Page
{
    private DataTable dtEventGallery;

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