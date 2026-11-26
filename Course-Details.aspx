<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Course-Details.aspx.cs" Inherits="Course_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
<h1 class="span12">Courses Offered</h1>
<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li>Academics <span class="divider">/</span></li>
      <li class="active">Course Details</li>
    </ul>
</div>

<div class="span12 acnn-pg">

    <section class="acnn-cd-sec">
        <div class="acnn-rdp-head reveal"><span class="acnn-about-tag">Academics</span><h2>Courses</h2></div>
        <div class="acnn-course-grid">
            <a class="acnn-course reveal" href="admission-procedure.aspx"><span class="acnn-course-ic"><i class="icon-cogs"></i></span><small>M.Tech.</small><h3>M.Tech. in Nano Science &amp; Technology</h3><span class="acnn-course-go">Admission details <i class="icon-arrow-right"></i></span></a>
            <a class="acnn-course reveal" href="admission-procedure.aspx"><span class="acnn-course-ic"><i class="icon-beaker"></i></span><small>M.Sc.</small><h3>M.Sc. in Nanosciences</h3><span class="acnn-course-go">Admission details <i class="icon-arrow-right"></i></span></a>
            <a class="acnn-course reveal" href="admission-procedure-PhD.aspx"><span class="acnn-course-ic"><i class="icon-certificate"></i></span><small>Ph.D.</small><h3>Ph.D. in Nano Science &amp; Technology</h3><span class="acnn-course-go">Admission details <i class="icon-arrow-right"></i></span></a>
        </div>
    </section>

    <section class="acnn-cd-sec">
        <div class="acnn-rdp-head reveal"><span class="acnn-about-tag alt">Research Focus</span><h2>Thrust Area</h2></div>
        <div class="acnn-cd-grid">
            <div class="acnn-cd reveal"><span class="acnn-cd-no">01</span><h3>Magnetic Nanomaterials</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">02</span><h3>Nanobiotechnology &amp; Biomedicine</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">03</span><h3>Ayurvedic Bhasma &amp; Nanomedicine</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">04</span><h3>Food Nanoparticles</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">05</span><h3>Ricehusk &amp; Silicon Nanoparticles</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">06</span><h3>Nanoelectronics</h3></div>
            <div class="acnn-cd reveal"><span class="acnn-cd-no">07</span><h3>Nanoceramics &amp; Nanocomposites</h3></div>
        </div>
    </section>
</div>

</div><!-- end row-->
</div> <!-- end container-->
<script src="js/acnn-profile.js"></script>
</asp:Content>
