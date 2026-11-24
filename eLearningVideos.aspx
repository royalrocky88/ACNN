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
<div class="span12 acnn-herowrap"><section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">Academics</span>
        <h2>e-Learning Videos</h2>
        <p>Watch the lecture videos of the Centre.</p>
    </section></div>

<div class="span12 acnn-pgsec">
    <div class="acnn-vid-grid">
        <div class="acnn-vid reveal">
            <div class="acnn-vid-frame"><iframe src="https://www.youtube.com/embed/0-LByBJRXUw" title="e-Learning Video 1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="acnn-vid-cap"><span>01</span>e-Learning Video 1</div>
        </div>
        <div class="acnn-vid reveal">
            <div class="acnn-vid-frame"><iframe src="https://www.youtube.com/embed/c3jG09ZZ7y8" title="e-Learning Video 2" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="acnn-vid-cap"><span>02</span>e-Learning Video 2</div>
        </div>
        <div class="acnn-vid reveal">
            <div class="acnn-vid-frame"><iframe src="https://www.youtube.com/embed/HDj1-hsGmW4" title="e-Learning Video 3" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="acnn-vid-cap"><span>03</span>e-Learning Video 3</div>
        </div>
    </div>
</div>
</div><!-- end row-->
</div> <!-- end container-->
<script src="js/acnn-profile.js"></script>
</asp:Content>
