<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="eContents.aspx.cs" Inherits="MediaResponse" %>

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

    
    <!-- End Gallery Specific Elements -->

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container">

<div class="row">
<h1 class="span12">
    
    e-Contents</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li>Academics <span class="divider">/</span></li>
      <li class="active">e-Contents</li>
    </ul>
</div>

<section class="span12">
	<div class="col-right">
        <div class="widget borders widget-table">
					
					<div class="widget-header">
						<h5></h5>
					</div> <!-- .widget-header -->
					<div id="gallery" style="display:inline-block;vertical-align:middle;">

                    <asp:Panel ID="Panel1" runat="server">
                    <asp:ObjectDataSource ID="ObjectDataSourceeContentsPDFs" runat="server" OldValuesParameterFormatString="original_{0}" 
                            SelectMethod="GetDataByActive" 
                            TypeName="DataSet_ACNN_DBTableAdapters.Table_eContentsPDFsTableAdapter">
                        </asp:ObjectDataSource>
                    <asp:GridView ID="GridView_eContentsPDFs" runat="server" 
                    DataSourceID="ObjectDataSourceeContentsPDFs" EnableModelValidation="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">
                        <Columns>
                        <asp:TemplateField HeaderText="Sl. No." HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            (<%# Container.DataItemIndex + 1 %>)
                        </ItemTemplate>
                    </asp:TemplateField>
                           <%-- <asp:BoundField DataField="SlNo" HeaderText="Sl. No." SortExpression="SlNo">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>--%>
                            <asp:BoundField DataField="UploadDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString = "{0:dd/MM/yyyy}"
                                HeaderText="Upload Date" SortExpression="UploadDate">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderStyle-HorizontalAlign="Center" 
                                HeaderText="Lecture Title (Subject Code)" SortExpression="Description">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                             <asp:BoundField DataField="FacultyName" HeaderStyle-HorizontalAlign="Center" 
                                HeaderText="Faculty Name" SortExpression="FacultyName">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Download
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink_Download" runat="server" 
                                        NavigateUrl='<%# Eval("Path") %>' Target="_blank"><asp:Image ID="Image_Download" ImageUrl='<%# "~/img/"+Eval("Image_Path") %>' width="60px" runat="server"></asp:Image></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="DownloadFile" HeaderText="Download Proceedings" 
                            SortExpression="DownloadFile" />--%>
                        </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                    </asp:Panel>
<%--<table class="style2" align="center" border="1">
        <tr>
            <td class="style4" style="font-weight: 700">
                <span class="style5">Sl No.</td>
            <td class="style3" style="font-weight: 700; text-align: center">
                Topic</span></td>
            <td class="style6" style="font-weight: 700; font-size: large">
                Download</td>
        </tr>
        <tr>
            <td class="text-center">
                1.</td>
            <td>
                Porous Materials and their importance in various area of Science, Engineering 
                and Technology</td>
            <td class="text-center">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/downloads/eContents/Porous Materials.pdf" Target="_blank" runat="server"><img src="img/pdf-download.png" width="50px" /></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                2.&nbsp;</td>
            <td>
                Book - Nano Spectroscopy&nbsp;</td>
            <td class="text-center">

                    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/downloads/eContents/Book- Nano spectroscopy.pdf" Target="_blank" runat="server"><img src="img/pdf-download.png" width="50px" /></asp:HyperLink>
                    </td>
        </tr>
        <tr>
            <td class="text-center">
                3.&nbsp;</td>
            <td>
                Nano Thermodynamics&nbsp;</td>
            <td class="text-center">
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/downloads/eContents/Nano_Thermodynamics.pdf" Target="_blank" runat="server"><img src="img/pdf-download.png" width="50px" /></asp:HyperLink></td>
        </tr>
        <tr>
            <td class="text-center">
                4.&nbsp;</td>
            <td>
                Reinste Nano Material Catalog&nbsp;</td>
            <td class="text-center">
                <asp:HyperLink ID="HyperLink4" NavigateUrl="~/downloads/eContents/Reinste Nano Material Catalog.pdf" Target="_blank" runat="server"><img src="img/pdf-download.png" width="50px" /></asp:HyperLink></td>
        </tr>
        <tr>
            <td class="text-center">
                5.&nbsp;</td>
            <td>
                Nd Ba HeFerrite Nanomaterials&nbsp;</td>
            <td class="text-center">
                <asp:HyperLink ID="HyperLink5" NavigateUrl="~/downloads/eContents/Nd Ba HeFerrite Nanomaterials.pdf" Target="_blank" runat="server"><img src="img/pdf-download.png" width="50px" /></asp:HyperLink></td>
        </tr>
        
    </table>--%>
    
    <%--<ul>


            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/0-LByBJRXUw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/c3jG09ZZ7y8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/HDj1-hsGmW4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            
          
        </ul>--%>

</div>
					<div class="widget-content">						
						
					    
						
					</div> <!-- .widget-content -->
					
		</div> <!-- /widget -->	
        
    
       
       
           
    </div><!-- end col right-->	
</section>
</div><!-- end row-->
</div> <!-- end container-->
</asp:Content>

