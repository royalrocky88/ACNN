<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="ResearchEquipment.aspx.cs" Inherits="ResearchEquipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
	<h1 class="span12">Research Equipment</h1>
	<div class="span12">
		<ul class="breadcrumb">
			<li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
			<li>Research <span class="divider">/</span></li>
			<li class="active">Research Equipment</li>
		</ul>
	</div>
	<div class="span12 acnn-herowrap"><section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">Research</span>
        <h2>Research Equipment</h2>
        <p>The equipment list of the Centre. See the <a href="ResearchLab.aspx" style="color:#fff;text-decoration:underline">Research Lab</a> page for pictures, serial-wise.</p>
    </section></div>
<section class="span12 acnn-pgsec">
		<div class="col-right">
			<div class="acnn-pdf" data-src="downloads/Equipment%20list.pdf" data-title="Research Equipment List">
	<div class="acnn-pdf-bar">
		<h3 class="acnn-pdf-name"><i class="icon-file-text"></i>Research Equipment List</h3>
		<div class="acnn-pdf-tools">
			<span class="acnn-pdf-meta"><span class="acnn-pdf-page"></span><button type="button" data-act="zoom-out" aria-label="Zoom out">&minus;</button><span class="acnn-pdf-zoom">100%</span><button type="button" data-act="zoom-in" aria-label="Zoom in">+</button></span>
			<a class="acnn-pdf-btn open" href="downloads/Equipment%20list.pdf" target="_blank" rel="noopener"><i class="icon-external-link"></i> Open</a>
			<a class="acnn-pdf-btn dl" href="downloads/Equipment%20list.pdf" download><i class="icon-download-alt"></i> Download PDF</a>
		</div>
	</div>
	<div class="acnn-pdf-body tall">
		<div class="acnn-pdf-status">Loading document&hellip;</div>
		<div class="acnn-pdf-nojs">Preview needs JavaScript. Please use the Download PDF button above.</div>
	</div>
</div>
		</div>
	</section>
</div>
</div>
<script src="js/acnn-profile.js"></script>
</asp:Content>
