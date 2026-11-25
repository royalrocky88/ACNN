<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master"
    AutoEventWireup="true" CodeFile="EventGallery.aspx.cs"
    Inherits="EventGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="styles/portfolio.css" rel="stylesheet" type="text/css" />
    <link href="styles/gallery.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/jquery-prettyPhoto.js"
        language="javascript"
        type="text/javascript"></script>

    <script type="text/javascript">

        $(document).ready(function () {

            $("a[rel^='prettyPhoto']").prettyPhoto({
                theme: 'dark_rounded',
                overlay_gallery: false
            });

        });

    </script>

    <style type="text/css">

        /* Event gallery layout now lives in css/acnn-theme.css */
        .event-images li {
            margin: 0;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    Runat="Server">

    <div class="container">

        <div class="row">

            <h1 class="span12">Event Gallery</h1>

            <div class="span12">

                <ul class="breadcrumb">

                    <li>
                        <a href="Default.aspx">Home</a>
                        <span class="divider">/</span>
                    </li>

                    <li class="active">
                        Event Gallery
                    </li>

                </ul>

            </div>


            <div class="span12 acnn-eventpg">

            <div class="event-gallery">

                <!-- EVENT TITLES -->
                <asp:ObjectDataSource
                    ID="ObjectDataSource_Event"
                    runat="server"
                    OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetDataByLatest"
                    TypeName="DataSet_ACNN_DBTableAdapters.Table_Event_GalleryTableAdapter">
                </asp:ObjectDataSource>


                <!-- EVENT REPEATER -->
                <asp:Repeater
    ID="RepeaterEvent"
    runat="server"
    OnItemDataBound="RepeaterEvent_ItemDataBound">

    <ItemTemplate>

        <div class="event-group">

            <div class="event-heading">
                <%# Eval("Media_title") %>
            </div>

            <div class="event-images">

                <ul>

                    <asp:Repeater
                        ID="RepeaterImages"
                        runat="server">

                        <ItemTemplate>

                            <li>

                                <a href='<%# "Larger/" + Eval("Pic_L_path") %>'
                                   rel='<%# "prettyPhoto[eventgallery_" + Eval("Media_title") + "]" %>'
                                   title='<%# Eval("Media_title") %>'>

                                    <img src='<%# "Smaller/" + Eval("Pic_S_Path") %>'
                                         class="thumbnail"
                                         alt='<%# Eval("Media_title") %>' /><span class="acnn-zoom"><i class="icon-zoom-in"></i></span>

                                </a>

                            </li>

                        </ItemTemplate>

                    </asp:Repeater>

                </ul>

            </div>

        </div>

    </ItemTemplate>

</asp:Repeater>

            </div>

        </div>

    </div>

</div>

<script src="js/acnn-date.js"></script>
</asp:Content>
