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
			<li class="active">Research Equipment</li>
		</ul>
	</div>
	<section class="span12">
		<div class="col-right">
			<iframe scrolling="auto" width="100%" height="1040px" src="downloads/Equipment list.pdf" frameborder="0"></iframe>
		</div>
	</section>
</div>
</div>
</asp:Content>
