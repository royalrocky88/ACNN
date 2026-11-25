<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="socialactivity.aspx.cs" Inherits="socialactivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
<h1 class="span12">Social Activities</h1>
<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li class="active">Social Activities</li>
    </ul>
</div>

<div class="span12 acnn-pgsec">
    <div class="acnn-sa-grid">
        <figure class="acnn-sa reveal" data-cat="all">
            <a class="acnn-sa-img" href="images/slides/20.jpg" title="Social activity 1"><img src="images/slides/20.jpg" alt="Social activity 1" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">01</span><span class="acnn-sa-cat">Social Activity</span><h3>Social Activity 1</h3></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="all">
            <a class="acnn-sa-img" href="images/slides/21.jpg" title="Social activity 2"><img src="images/slides/21.jpg" alt="Social activity 2" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">02</span><span class="acnn-sa-cat">Social Activity</span><h3>Social Activity 2</h3></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="all">
            <a class="acnn-sa-img" href="images/slides/22.jpg" title="Social activity 3"><img src="images/slides/22.jpg" alt="Social activity 3" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">03</span><span class="acnn-sa-cat">Social Activity</span><h3>Social Activity 3</h3></figcaption>
        </figure>
    </div>
</div>
</div><!-- end row-->
</div> <!-- end container-->
<script src="js/acnn-profile.js"></script>
<script src="js/acnn-gallery.js"></script>
</asp:Content>
