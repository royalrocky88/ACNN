<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="eLearningVideos.aspx.cs" Inherits="MediaResponse" %>

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
<h1 class="span12">e-Learning Videos</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li>Academics <span class="divider">/</span></li>
      <li class="active">e-Learning Videos</li>
    </ul>
</div>

<section class="span12">
	<div class="col-right">
        <div class="widget borders widget-table">
					
					<div class="widget-header">
						<h5></h5>
					</div> <!-- .widget-header -->
					<div id="gallery" style="display:inline-block;vertical-align:middle;">
    
    <ul>


            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/0-LByBJRXUw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/c3jG09ZZ7y8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            <li><iframe width="678" height="215" src="https://www.youtube.com/embed/HDj1-hsGmW4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
            
          
        </ul>

</div>
					<div class="widget-content">						
						
					    
						
					</div> <!-- .widget-content -->
					
		</div> <!-- /widget -->	
        
    
       
       
           
    </div><!-- end col right-->	
</section>
</div><!-- end row-->
</div> <!-- end container-->
</asp:Content>

