<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="all-courses.aspx.cs" Inherits="all_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
<h1 class="span12">Academic Programme</h1>
<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li class="active">All Programme</li>
    </ul>
</div>

<div class="span12 acnn-pg">
    <section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">Programmes</span>
        <h2>All Programmes</h2>
        <p>M.Sc., M.Tech. and Ph.D. programmes in Nano Science &amp; Technology.</p>
    </section>

    <div class="acnn-prog-grid">
        <article class="acnn-prog reveal">
            <span class="acnn-prog-no">01</span>
            <h3>M.Sc. in Nano Science &amp; Technology</h3>
            <p>An utinam reprimique duo, putant mandamus cu qui. Autem possim his cu, quodsi nominavi fabellas ut sit, mea ea ullum epicurei. Saepe tantas ocurreret duo ea, has facilisi vulputate an. Priaeque iuvaret nominati et, ad mea clita numquam. Maluisset dissentiunt et per, dico liber erroribus vis te. Dolor consul graecis nec ut, scripta eruditi scriptorem et nam.</p>
        </article>
        <article class="acnn-prog reveal">
            <span class="acnn-prog-no">02</span>
            <h3>M.Tech. in Nano Science &amp; Technology</h3>
            <p>An utinam reprimique duo, putant mandamus cu qui. Autem possim his cu, quodsi nominavi fabellas ut sit, mea ea ullum epicurei. Saepe tantas ocurreret duo ea, has facilisi vulputate an. Priaeque iuvaret nominati et, ad mea clita numquam. Maluisset dissentiunt et per, dico liber erroribus vis te. Dolor consul graecis nec ut, scripta eruditi scriptorem et nam.</p>
            <a class="acnn-prog-go" href="admission-procedure.aspx">Admission procedure <i class="icon-arrow-right"></i></a>
        </article>
        <article class="acnn-prog reveal">
            <span class="acnn-prog-no">03</span>
            <h3>Ph.D. in Nano Science &amp; Technology</h3>
            <p>An utinam reprimique duo, putant mandamus cu qui. Autem possim his cu, quodsi nominavi fabellas ut sit, mea ea ullum epicurei. Saepe tantas ocurreret duo ea, has facilisi vulputate an. Priaeque iuvaret nominati et, ad mea clita numquam. Maluisset dissentiunt et per, dico liber erroribus vis te. Dolor consul graecis nec ut, scripta eruditi scriptorem et nam.</p>
            <a class="acnn-prog-go" href="admission-procedure-PhD.aspx">Admission procedure <i class="icon-arrow-right"></i></a>
        </article>
    </div>
</div>

</div><!-- end row-->
</div> <!-- end container-->
<script src="js/acnn-profile.js"></script>
</asp:Content>
