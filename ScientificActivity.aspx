<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="ScientificActivity.aspx.cs" Inherits="socialactivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"><div class="row">
<h1 class="span12">Scientific Activities</h1>
<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li>Research <span class="divider">/</span></li>
      <li class="active">Scientific Activities</li>
    </ul>
</div>

<div class="span12 acnn-sapg">

    <section class="acnn-lab-hero">
        <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
        <span class="acnn-prof-role">Photo Gallery</span>
        <h2>Scientific Activities at the Centre</h2>
        <p>Lectures, visits, research, celebrations, awards and collaborations &mdash; click any picture to view it full size.</p>
    </section>

    <div class="acnn-sa-filter" role="tablist">
        <button type="button" class="on" data-f="all">All <b>24</b></button>
        <button type="button" data-f="evt">Events</button>
        <button type="button" data-f="lec">Lectures &amp; Visits</button>
        <button type="button" data-f="res">Research &amp; Academics</button>
        <button type="button" data-f="awd">Awards &amp; MoU</button>
    </div>

    <div class="acnn-sa-grid">
        <figure class="acnn-sa reveal" data-cat="res">
            <a class="acnn-sa-img" href="images/Scientific Activities/nanomaterials_products.jpg" title="Nanomaterials &amp; Related Products"><img src="images/Scientific Activities/nanomaterials_products.jpg" alt="Nanomaterials &amp; Related Products" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">01</span><span class="acnn-sa-cat">Research &amp; Academics</span><h3>Nanomaterials &amp; Related Products</h3><p>Poster showing the classes of nanomaterials worked on at the Centre: carbon nanotubes, nanodiamonds, nanoceramics, quantum dots, nanometals and fullerenes.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="res">
            <a class="acnn-sa-img" href="images/Scientific Activities/Nanoparticle%20synthesis.jpg" title="Nanoparticle Synthesis"><img src="images/Scientific Activities/Nanoparticle%20synthesis.jpg" alt="Nanoparticle Synthesis" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">02</span><span class="acnn-sa-cat">Research &amp; Academics</span><h3>Nanoparticle Synthesis</h3><p>Laboratory work on the synthesis of nanoparticles at the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="res">
            <a class="acnn-sa-img" href="images/Scientific Activities/Ph.D.%20Viva-Nanoscience.jpg" title="Ph.D. Viva-Voce"><img src="images/Scientific Activities/Ph.D.%20Viva-Nanoscience.jpg" alt="Ph.D. Viva-Voce" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">03</span><span class="acnn-sa-cat">Research &amp; Academics</span><h3>Ph.D. Viva-Voce</h3><p>Viva-voce of a Ph.D. research scholar of the Nanoscience Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="res">
            <a class="acnn-sa-img" href="images/Scientific Activities/Research%20scholar%20meet.JPG" title="Research Scholar Meet"><img src="images/Scientific Activities/Research%20scholar%20meet.JPG" alt="Research Scholar Meet" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">04</span><span class="acnn-sa-cat">Research &amp; Academics</span><h3>Research Scholar Meet</h3><p>Meeting of the research scholars of the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/Bihar%20Divas-2.jpg" title="Bihar Divas"><img src="images/Scientific Activities/Bihar%20Divas-2.jpg" alt="Bihar Divas" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">05</span><span class="acnn-sa-cat">Events</span><h3>Bihar Divas</h3><p>The Centre at the Bihar Divas celebrations.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/National%20Science%20Day.JPG" title="National Science Day"><img src="images/Scientific Activities/National%20Science%20Day.JPG" alt="National Science Day" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">06</span><span class="acnn-sa-cat">Events</span><h3>National Science Day</h3><p>Celebration of National Science Day at the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/Freshers%20Day.jpg" title="Freshers Day"><img src="images/Scientific Activities/Freshers%20Day.jpg" alt="Freshers Day" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">07</span><span class="acnn-sa-cat">Events</span><h3>Freshers Day</h3><p>Freshers Day celebration of the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/Human%20Chain-%20National%20Technology%20Day.jpg" title="Human Chain – National Technology Day"><img src="images/Scientific Activities/Human%20Chain-%20National%20Technology%20Day.jpg" alt="Human Chain – National Technology Day" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">08</span><span class="acnn-sa-cat">Events</span><h3>Human Chain &ndash; National Technology Day</h3><p>Human chain formed on National Technology Day.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/PHOTO-2022-05-10-22-04-26.jpg" title="Activity at the Centre"><img src="images/Scientific Activities/PHOTO-2022-05-10-22-04-26.jpg" alt="Activity at the Centre" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">09</span><span class="acnn-sa-cat">Events</span><h3>Activity at the Centre</h3><p>Moment from the Centre&rsquo;s activities, 10 May 2022.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/PHOTO-2022-08-23-21-49-27.jpg" title="Activity at the Centre"><img src="images/Scientific Activities/PHOTO-2022-08-23-21-49-27.jpg" alt="Activity at the Centre" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">10</span><span class="acnn-sa-cat">Events</span><h3>Activity at the Centre</h3><p>Moment from the Centre&rsquo;s activities, 23 August 2022.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/IMG-20200709-WA0042.jpg" title="Activity at the Centre"><img src="images/Scientific Activities/IMG-20200709-WA0042.jpg" alt="Activity at the Centre" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">11</span><span class="acnn-sa-cat">Events</span><h3>Activity at the Centre</h3><p>Moment from the Centre&rsquo;s activities, 9 July 2020.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="evt">
            <a class="acnn-sa-img" href="images/Scientific Activities/IMG-20200701-WA0008.jpg" title="Activity at the Centre"><img src="images/Scientific Activities/IMG-20200701-WA0008.jpg" alt="Activity at the Centre" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">12</span><span class="acnn-sa-cat">Events</span><h3>Activity at the Centre</h3><p>Moment from the Centre&rsquo;s activities, 1 July 2020.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/OpportunitiesinNanotechnology&amp;Cutting-edgeresearch.jpg" title="Opportunities in Nanotechnology &amp; Cutting-edge Research"><img src="images/Scientific Activities/OpportunitiesinNanotechnology&amp;Cutting-edgeresearch.jpg" alt="Opportunities in Nanotechnology &amp; Cutting-edge Research" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">13</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>Opportunities in Nanotechnology &amp; Cutting-edge Research</h3><p>Talk and awareness session on opportunities in nanotechnology and cutting-edge research.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/Dr.%20Kotnala%2C%20NPL%20delivered%20lecture.jpg" title="Lecture by Dr. Kotnala, NPL"><img src="images/Scientific Activities/Dr.%20Kotnala%2C%20NPL%20delivered%20lecture.jpg" alt="Lecture by Dr. Kotnala, NPL" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">14</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>Lecture by Dr. Kotnala, NPL</h3><p>Dr. Kotnala of the National Physical Laboratory (NPL) delivering a lecture at the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/Lecture%20on%20Nanotechnology%20for%20human%20devlopement%20by%20Dr.%20Rajesh%20Kr%2C%20IIT%20Indore.jpg" title="Nanotechnology for Human Development"><img src="images/Scientific Activities/Lecture%20on%20Nanotechnology%20for%20human%20devlopement%20by%20Dr.%20Rajesh%20Kr%2C%20IIT%20Indore.jpg" alt="Nanotechnology for Human Development" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">15</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>Nanotechnology for Human Development</h3><p>Lecture by Dr. Rajesh Kr., IIT Indore.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/Dr.%20R.J.Choudhary%2C%20visited%20Nanoscience%20center.jpg" title="Visit of Dr. R.J. Choudhary"><img src="images/Scientific Activities/Dr.%20R.J.Choudhary%2C%20visited%20Nanoscience%20center.jpg" alt="Visit of Dr. R.J. Choudhary" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">16</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>Visit of Dr. R.J. Choudhary</h3><p>Dr. R.J. Choudhary visited the Nanoscience Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/VTU-Tech%20university%20visit.jpg" title="VTU – Tech University Visit"><img src="images/Scientific Activities/VTU-Tech%20university%20visit.jpg" alt="VTU – Tech University Visit" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">17</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>VTU &ndash; Tech University Visit</h3><p>Visit of the VTU Tech University team to the Centre.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="lec">
            <a class="acnn-sa-img" href="images/Scientific Activities/SS%20Hospital%20students%20visited%20Nanotechnology%20lab.jpg" title="SS Hospital Students’ Lab Visit"><img src="images/Scientific Activities/SS%20Hospital%20students%20visited%20Nanotechnology%20lab.jpg" alt="SS Hospital Students’ Lab Visit" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">18</span><span class="acnn-sa-cat">Lectures &amp; Visits</span><h3>SS Hospital Students&rsquo; Lab Visit</h3><p>Students of SS Hospital visiting the Nanotechnology laboratory.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/MOU%20with%20Niti%20Ayog.jpg" title="MoU with NITI Aayog"><img src="images/Scientific Activities/MOU%20with%20Niti%20Ayog.jpg" alt="MoU with NITI Aayog" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">19</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>MoU with NITI Aayog</h3><p>Memorandum of Understanding signed with NITI Aayog.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/RELAINCE_FOUNDATION_PIC_1.jpg" title="Reliance Foundation – I"><img src="images/Scientific Activities/RELAINCE_FOUNDATION_PIC_1.jpg" alt="Reliance Foundation – I" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">20</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>Reliance Foundation &ndash; I</h3><p>Collaboration activity with Reliance Foundation.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/RELAINCE_FOUNDATION_PIC_2.jpg" title="Reliance Foundation – II"><img src="images/Scientific Activities/RELAINCE_FOUNDATION_PIC_2.jpg" alt="Reliance Foundation – II" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">21</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>Reliance Foundation &ndash; II</h3><p>Collaboration activity with Reliance Foundation.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/Award%20received%20at%20Rajbhawam%20by%20Nanoscience%20scholar.jpg" title="Award at Raj Bhawan"><img src="images/Scientific Activities/Award%20received%20at%20Rajbhawam%20by%20Nanoscience%20scholar.jpg" alt="Award at Raj Bhawan" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">22</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>Award at Raj Bhawan</h3><p>Award received at Raj Bhawan by a Nanoscience research scholar.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/Dr.%20Rakesh%2C%20Head%2C%20Nanotechnology%20center%2C%20feliciated%20by%20V.C%2C%20J.P.Univ.JPG" title="Dr. Rakesh Felicitated"><img src="images/Scientific Activities/Dr.%20Rakesh%2C%20Head%2C%20Nanotechnology%20center%2C%20feliciated%20by%20V.C%2C%20J.P.Univ.JPG" alt="Dr. Rakesh Felicitated" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">23</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>Dr. Rakesh Felicitated</h3><p>Dr. Rakesh, Head of the Nanotechnology Centre, felicitated by the Vice-Chancellor, J.P. University.</p></figcaption>
        </figure>
        <figure class="acnn-sa reveal" data-cat="awd">
            <a class="acnn-sa-img" href="images/Scientific Activities/Dr.%20Rakesh%2C%20Interaction%20meet%20with%20Hon&#x27;ble%20MHRD%20mnister%20and%20UGC%20chairman.png" title="Interaction with MHRD Minister &amp; UGC Chairman"><img src="images/Scientific Activities/Dr.%20Rakesh%2C%20Interaction%20meet%20with%20Hon&#x27;ble%20MHRD%20mnister%20and%20UGC%20chairman.png" alt="Interaction with MHRD Minister &amp; UGC Chairman" loading="lazy" /><span class="acnn-sa-zoom"><i class="icon-zoom-in"></i></span></a>
            <figcaption><span class="acnn-sa-no">24</span><span class="acnn-sa-cat">Awards &amp; MoU</span><h3>Interaction with MHRD Minister &amp; UGC Chairman</h3><p>Dr. Rakesh at an interaction meet with the Hon&rsquo;ble MHRD Minister and the UGC Chairman.</p></figcaption>
        </figure>
    </div>

</div>
</div></div>
<script src="js/acnn-profile.js"></script>
<script src="js/acnn-gallery.js"></script>
</asp:Content>
