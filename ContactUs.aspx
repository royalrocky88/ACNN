<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
    <h1 class="span12">Contact Us</h1>
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
            <li class="active">Contact Us</li>
        </ul>
    </div>

    <section class="span12 acnn-pgsec">

        <div class="acnn-ct-quick">
            <a class="acnn-ct-q" href="tel:+916122362270"><i class="icon-phone"></i><b>Call us</b><span>0612 236 2270</span></a>
            <a class="acnn-ct-q" href="mailto:info@acnn.akubihar.ac.in"><i class="icon-envelope"></i><b>Email us</b><span>info@acnn.akubihar.ac.in</span></a>
            <a class="acnn-ct-q" href="http://mail.acnn.akubihar.ac.in" target="_blank" rel="noopener"><i class="icon-inbox"></i><b>Web Mail</b><span>Sign in to your mailbox</span></a>
            <a class="acnn-ct-q" href="https://www.google.com/maps/dir/?api=1&amp;destination=Aryabhatta+Knowledge+University,+Mithapur,+Patna" target="_blank" rel="noopener"><i class="icon-map-marker"></i><b>Directions</b><span>Open in Google Maps</span></a>
        </div>

        <div class="acnn-ct-grid">
            <div class="acnn-ct-photo">
                <img src="img/acnn-contact.jpg" alt="School of Nanoscience &amp; Nanotechnology, Aryabhatta Centre for Nanoscience &amp; Nanotechnology" loading="lazy" />
            </div>
            <div class="acnn-ct-card">
                <span class="acnn-ct-tag">Get in touch</span>
                <h2>Aryabhatta Centre for Nanoscience &amp; Nanotechnology</h2>
                <p class="acnn-ct-sub">School of Nanoscience &amp; Nanotechnology, Aryabhatta Knowledge University, Patna</p>
                <ul class="acnn-ct-list">
                    <li><i class="icon-map-marker"></i><div><b>Address</b><span>1st Floor, Academic Block, Aryabhatta Knowledge University,<br />Mithapur, Patna &ndash; 800 001, Bihar</span></div></li>
                    <li><i class="icon-phone"></i><div><b>Telephone</b><span><a href="tel:+916122362270">0612 236 2270</a></span></div></li>
                    <li><i class="icon-print"></i><div><b>Fax</b><span>0612 236 2270</span></div></li>
                    <li><i class="icon-envelope"></i><div><b>Email</b><span><a href="mailto:info@acnn.akubihar.ac.in">info@acnn.akubihar.ac.in</a><br /><a href="mailto:akuacnn@gmail.com">akuacnn@gmail.com</a></span></div></li>
                    <li><i class="icon-inbox"></i><div><b>Web Mail</b><span><a href="http://mail.acnn.akubihar.ac.in" target="_blank" rel="noopener">mail.acnn.akubihar.ac.in</a></span></div></li>
                    <li><i class="icon-globe"></i><div><b>Website</b><span><a href="http://acnn.akubihar.ac.in">acnn.akubihar.ac.in</a></span></div></li>
                </ul>
                <div class="acnn-ct-btns">
                    <a class="acnn-btn acnn-btn-amber" href="tel:+916122362270"><i class="icon-phone"></i> Call Now</a>
                    <a class="acnn-ct-ghost" href="mailto:info@acnn.akubihar.ac.in"><i class="icon-envelope"></i> Send Email</a>
                    <a class="acnn-ct-ghost" href="http://mail.acnn.akubihar.ac.in" target="_blank" rel="noopener"><i class="icon-inbox"></i> Web Mail</a>
                </div>
            </div>
        </div>

        <div class="acnn-ct-map">
            <div class="acnn-ct-maphead">
                <div><span class="acnn-ct-tag">Find us</span><h2>Location on Map</h2></div>
                <a class="acnn-ct-ghost" href="https://www.google.com/maps/search/?api=1&amp;query=Aryabhatta+Knowledge+University,+Mithapur,+Patna" target="_blank" rel="noopener"><i class="icon-external-link"></i> Open in Google Maps</a>
            </div>
            <div class="acnn-ct-frame">
                <iframe title="Aryabhatta Knowledge University, Mithapur, Patna on Google Maps" loading="lazy" referrerpolicy="no-referrer-when-downgrade" allowfullscreen
                    src="https://www.google.com/maps?q=Aryabhatta+Knowledge+University,+Mithapur,+Patna&amp;output=embed"></iframe>
            </div>
        </div>

    </section>
</div>
</div>
</asp:Content>
