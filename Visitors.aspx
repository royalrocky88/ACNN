<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Visitors.aspx.cs" Inherits="MediaResponse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Gallery Specific Elements -->

<script src="Scripts/jquery-prettyPhoto.js" language="javascript" type="text/javascript"></script>
    <link href="styles/portfolio.css" rel="stylesheet" type="text/css" />    
    <link href="styles/gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/AjaxControls.css" rel="stylesheet" type="text/css" />    

<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        $("a[rel^='prettyPhoto']").prettyPhoto({
            theme: 'dark_rounded',
            overlay_gallery: false
        });
    });
</script>

<style>
/* Visitor cards: responsive grid (overrides legacy float layout) */
div.gallery { float: none; width: auto; margin: 8px; border: 1px solid #dbe6ec; border-radius: 14px; overflow: hidden; background: #fff; box-shadow: 0 4px 14px rgba(10,37,64,.08); }
div.gallery:hover { border-color: #1fc8d8; box-shadow: 0 10px 30px rgba(10,37,64,.12); }
div.gallery img { width: 100%; height: 190px; object-fit: cover; display: block; }
</style>

    
    <!-- End Gallery Specific Elements -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container">

<div class="row">
<h1 class="span12">Administration</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li class="active">Visitors of Center</li>
    </ul>
</div>

<section class="span12">
	<div class="col-right">
        
        
     <asp:ObjectDataSource ID="ObjectDataSource_Visitors" runat="server" DeleteMethod="Delete" 
                            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                            SelectMethod="GetDataBySlnoDesc" 
                            TypeName="DataSet_ACNN_DBTableAdapters.Table_VisitorsTableAdapter" 
                            UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_SlNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Path_Larger" Type="String" />
            <asp:Parameter Name="Path_Smaller" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Path_Larger" Type="String" />
            <asp:Parameter Name="Path_Smaller" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
            <asp:Parameter Name="Original_SlNo" Type="Int32" />
        </UpdateParameters>
                        </asp:ObjectDataSource>
<asp:DataList ID="DataList_Visitors" runat="server" DataKeyField="SlNo" 
                            DataSourceID="ObjectDataSource_Visitors" RepeatColumns="4" 
            RepeatDirection="Horizontal">
    <ItemTemplate>
        <div class="gallery">

  <a target="_blank" href='<%# "Larger-Visitor/"+Eval("Path_Larger") %>' title='<%# Eval("Description") %>'>
    <img src='<%# "Smaller-Visitor/"+Eval("Path_Smaller") %>' alt='<%# Eval("Description") %>' width="600" height="400">
  </a>
  &nbsp;<div class="desc"><%# Eval("Description") %></div>
</div>
    </ItemTemplate>
                        </asp:DataList>
</div><!-- end col-right-->
</section>
</div><!-- end row-->
</div> <!-- end container-->
</asp:Content>

