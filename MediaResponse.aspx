<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="MediaResponse.aspx.cs" Inherits="MediaResponse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Gallery Specific Elements -->

<script src="Scripts/jquery-prettyPhoto.js" language="javascript" type="text/javascript"></script>
    <link href="styles/portfolio.css" rel="stylesheet" type="text/css" />    
    <link href="styles/gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/AjaxControls.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/JScript_gal.js" type="text/javascript"></script>

<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        $("a[rel^='prettyPhoto']").prettyPhoto({
            theme: 'dark_rounded',
            overlay_gallery: false
        });
    });
</script>

    
    <!-- End Gallery Specific Elements -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container">

<div class="row">
<h1 class="span12">Media Response</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li class="active">Media Response</li>
    </ul>
</div>

<section class="span12">
	<div class="col-right">
        <div class="widget borders widget-table">
					
					<div class="widget-header">
						<h5>In various Newspapers</h5>
					</div> <!-- .widget-header -->
					
					<div class="widget-content">						
						<div id="gallery" class="gallery acnn-clip-grid">
    
    
            <asp:ObjectDataSource ID="ObjectDataSource_Media" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByLatest" 
                            TypeName="DataSet_ACNN_DBTableAdapters.Table_Media_ResponseTableAdapter">
                        </asp:ObjectDataSource>
                           
                            
                            
                         
                           <asp:Repeater ID="Repeater2" runat="server"
                            DataSourceID="ObjectDataSource_Media">
                            <ItemTemplate>
                            
                            <ul>
                           
                            <li><a href="<%# "Larger/" +Eval("Pic_L_path") %>" rel="prettyPhoto[gallery1]" title='<%# Eval("Media_title")%>'><img src="<%# "Smaller/" +Eval("Pic_S_path") %>" class="thumbnail" alt='<%# Eval("Media_title")%>' /></a></li>
                            </ul>
 
            
                            </ItemTemplate>
                            </asp:Repeater>
         
        

</div>
					    
						
					</div> <!-- .widget-content -->
					
		</div> <!-- /widget -->	
        
    
       
       
           
    </div><!-- end col right-->	
</section>
</div><!-- end row-->
</div> <!-- end container-->
</asp:Content>

