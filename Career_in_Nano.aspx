<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Career_in_Nano.aspx.cs" Inherits="MediaResponse" %>

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
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 250px;
  height:230px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 5px;
  text-align: center;
}
</style>

    
    <!-- End Gallery Specific Elements -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
<h1 class="span12">Careers in Nano</h1>
<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li>Academics <span class="divider">/</span></li>
      <li class="active">Careers in Nano</li>
    </ul>
</div>

<div class="span12 acnn-pg">
    <section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">Careers</span>
        <h2>Career / Job / Atmanirbhar Bharat Plan</h2>
        <p>Career / Job /Atmanirbhar Bharat Plan in the field of Nano science and nanotechnology</p>
    </section>

    <div class="acnn-career reveal">
        <asp:ObjectDataSource ID="ObjectDataSource_Careers" runat="server" OldValuesParameterFormatString="original_{0}" 
                            SelectMethod="GetDataBySlNo" 
                            
            TypeName="DataSet_ACNN_DBTableAdapters.Table_CareersinNanotechnologyTableAdapter">
                        </asp:ObjectDataSource>
        <br />
       <asp:GridView ID="GridView_Careers" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="ObjectDataSource_Careers" 
            EnableModelValidation="True" GridLines="Vertical" 
            Width="100%">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="SlNo" SortExpression="SlNo">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Positions_Job_Start-up_area" 
                    HeaderText="Positions/ Job/ Start-up area" 
                    SortExpression="Positions_Job_Start-up_area" />
                <asp:BoundField DataField="Sector_Field" HeaderText="Sector/Field" 
                    SortExpression="Sector_Field" />
                <asp:TemplateField>
                                <HeaderTemplate>
                                    Details<br />
Please Click
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink_Download" runat="server" 
                                        NavigateUrl=<%# "~/downloads/Careers_in_Nano/"+Eval("Details") %> Target="_blank"><asp:Image ID="Image_Download" ImageUrl="~/img/pdf-download.png" width="60px" runat="server"></asp:Image></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="75px" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    <div class="acnn-career-more">
        <a href="downloads/Nanotechlogy-Prospectus-3May24.pdf" target="_blank"><i class="icon-download-alt"></i> More details ... please click here</a>
    </div>
</div>

</div><!-- end row-->
</div> <!-- end container-->
<script src="js/acnn-profile.js"></script>
</asp:Content>
