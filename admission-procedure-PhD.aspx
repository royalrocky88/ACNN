<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="admission-procedure-PhD.aspx.cs" Inherits="admission_procedure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: 12px;
        }
        .style3
        {
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">

<div class="row">
<h1 class="span12">Admission Procedure</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="#">Home</a> <span class="divider">/</span></li>
      <li class="active">Admission Procedure</li>
    </ul>
</div>
<!-- =========================Start Col left section ============================= -->
<aside  class="span4 ">
	<div class="col-left">
    	<h3>Admission Procedures</h3>
		<p align="justify">Candidates have to choose any one of the following papers for admission to Ph.D. programme depending upon their choice.</p>
            <ul class="submenu-col">
                <li><a href="#">Physical sciences</a></li>
                <li><a href="#">Chemical sciences</a></li>
                <li><a href="#">Biological sciences</a></li>
				<li><a href="#">Engineering streams</a></li>
            </ul>
            
    </div>
</aside>
 
 <!-- =========================Start Col right section ============================= -->
<section class="span8  ">
	<div  class="col-right">
    
    <div class="row">
        <div class="span7">
            <h3>Procedure for Ph.D. Admission</h3>
            
            <!--  Tabs -->   
            <ul class="nav nav-tabs">
                <li ><a href="#home" data-toggle="tab">No. of Seats</a></li>
                <li><a href="#profile" data-toggle="tab">Eligibility Criteria</a></li>
                <li><a href="#messages" data-toggle="tab">Application Fee</a></li>
                <li class="active"><a href="#settings" data-toggle="tab">Entrance Test & Interview</a></li>
            </ul>
            
            <div class="tab-content">
                <div class="tab-pane" id="home">
                    Notify time-to-time as per UGC Regulations (includes reservation as per Government of Bihar norms).
                </div>
              <div class="tab-pane" id="profile">
                    The applicant should possess following to pursue research in the broad fields of nanoscience and nanotechnology(see the Thrust Area of Research):<br><br><strong>Ph. D</strong> <br>
                    <strong>M.Sc.</strong> (Nanoscience/Nanotechnology/Physics/Chemistry/Biotechnology or <br /><strong>M.Tech./M.E./M.S. </strong> (Electrical/Electronics/Mechanical/Civil) degree with a minimum of 55% marks. – For Nanoscience & Nanotechnology Research<br>
                    <!--<strong>(b)</strong>	M.Sc.(in Nanoscience/Nanotechnology) or an equivalent degreein any branch of &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Physical/Chemical/Biological/Agricultural sciences with a minimum of 55% marks.
					<br><br><strong>M.Tech</strong> <br>
					<strong>(a)</strong>	B.Tech. in EE/EEE, ECE, ME, Chemical Engineering, Bioprocess Engineering, Biochemical Engineering or an equivalent degree with a minimum of 55% marks.<br/>
                    <strong>(b)</strong>	M.Sc.(in Physics/Chemistry/Materials Science/Electronics/ Nanoscience/ Nanotechnology) or an equivalent degree in any branch of 55% marks.-->
              </div>
                <div class="tab-pane" id="messages">
                    <div align="left">
                    <%--To be Notified later ...--%>
                    Online fee of <strong>Rs. 1,500/-(One Thousand Five Hundred Only) & Rs. 500/- (Five hundred Only) for SC/ST candidates only</strong> 
                      <br/>
                      
<br />please visit for details : <a href="https://akubihar.ac.in/" target="_blank">www.akubihar.ac.in</a>
                    </div>
              </div>
              <div class="tab-pane active" id="settings">
              
              <a href="#"  target="_blank">Notification for Ph.D. Admission-To be Notified later</a><br /><br />
              
                    The applications will be screened and the selected applicants will be called for Admission Test followed by personal interview.<br/>
                    <a href="downloads/OrdinanceM-Tech_PhDNanoscience _Technology.pdf" target="_blank">Ordinance for Admission to Ph.D. programme in the School of Engineering & Technology</a><br /><br />
                    
                    <%--<a href="http://online.akubihar.ac.in/Centres_Adm_Exams2023_I/EntranceTestNotice.aspx" target="_blank">Click here to apply in ONLINE Application mode</a>
                    <br />
                    <br />
                        Last date of ONLINE submission of Application&nbsp;:&nbsp;<span class="style3">05.08.2023</span>
                        <br />--%>
                    <br />
                      <b>Fee Details</b> :<a  target="_blank" href="downloads/PhD_Fee_Structure.pdf">Download</a>
                   <br />
                    <br /> <a href="downloads/syllabus_PAT_MAT18.pdf" target="_blank">Syllabus for Ph.D. Admission Test (PAT)</a><br /><br />
                   
                   </div>
            </div>
            
        </div><!--  End span7 --> 
    </div> <!--  End row --> 
   
          
      
     
</div>
</section>

  </div><!-- end row-->
  </div> <!-- end container-->
</asp:Content>

