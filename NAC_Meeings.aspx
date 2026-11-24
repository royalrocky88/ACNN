<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="NAC_Meeings.aspx.cs" Inherits="NAC_Meeings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
	<h1 class="span12">National Advisory Committee of ACNN</h1>
	<div class="span12">
		<ul class="breadcrumb">
			<li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
			<li>About <span class="divider">/</span></li>
			<li class="active">National Advisory Committee of ACNN</li>
		</ul>
	</div>
	<!-- =========================Start Col left section ============================= -->   
	

<!-- =========================Start Col right section ============================= --> 
<div class="span12 acnn-herowrap"><section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">About</span>
        <h2>National Advisory Committee of ACNN</h2>
        <p>View the committee document below, or download the PDF.</p>
    </section></div>
<section class="span12 acnn-pgsec">
	<div class="col-right">
       
       <div class="acnn-pdf" data-src="downloads/National_Advisiory_Committee_ACNN.pdf" data-title="National Advisory Committee of ACNN">
	<div class="acnn-pdf-bar">
		<h3 class="acnn-pdf-name"><i class="icon-file-text"></i>National Advisory Committee of ACNN</h3>
		<div class="acnn-pdf-tools">
			<span class="acnn-pdf-meta"><span class="acnn-pdf-page"></span><button type="button" data-act="zoom-out" aria-label="Zoom out">&minus;</button><span class="acnn-pdf-zoom">100%</span><button type="button" data-act="zoom-in" aria-label="Zoom in">+</button></span>
			<a class="acnn-pdf-btn open" href="downloads/National_Advisiory_Committee_ACNN.pdf" target="_blank" rel="noopener"><i class="icon-external-link"></i> Open</a>
			<a class="acnn-pdf-btn dl" href="downloads/National_Advisiory_Committee_ACNN.pdf" download><i class="icon-download-alt"></i> Download PDF</a>
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

