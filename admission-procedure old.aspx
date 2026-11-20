<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="admission-procedure old.aspx.cs" Inherits="admission_procedure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <h3>Procedure</h3>
            
            <!--  Tabs -->   
            <ul class="nav nav-tabs">
                <li ><a href="#home" data-toggle="tab">No. of Seats</a></li>
                <li><a href="#profile" data-toggle="tab">Eligibility Criteria</a></li>
                <li><a href="#messages" data-toggle="tab">Application Fee</a></li>
                <li class="active"><a href="#settings" data-toggle="tab">Entrance Test & Interview</a></li>
            </ul>
            
            <div class="tab-content">
                <div class="tab-pane" id="home">
                    Notify time-to-time (includes reservation as per Government of Bihar norms).
                </div>
              <div class="tab-pane" id="profile">
                    The applicant should possess following to pursue research in the broad fields of nanoscience and nanotechnology(see the Thrust Area of Research):<br><br><strong>Ph. D</strong> <br>
                    <strong>M.Sc.</strong> (Nanoscience/Nanotechnology/Physics/Chemistry/Biotechnology or <br /><strong>M.Tech./M.E./M.S. </strong> (Electrical/Electronics/Mechanical/Civil) degree with a minimum of 55% marks. – For Nanoscience & Nanotechnology Research<br>
                    <!--<strong>(b)</strong>	M.Sc.(in Nanoscience/Nanotechnology) or an equivalent degreein any branch of &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Physical/Chemical/Biological/Agricultural sciences with a minimum of 55% marks.-->
					<br><br><strong>M.Tech</strong> <br>
					<strong>(a)</strong>	B.Tech. in EE/EEE, ECE, ME, Chemical Engineering, Bioprocess Engineering, Biochemical Engineering or an equivalent degree with a minimum of 55% marks.<br/>
                    <strong>(b)</strong>	M.Sc.(in Physics/Chemistry/Materials Science/Electronics/ Nanoscience/ Nanotechnology) or an equivalent degree in any branch of 55% marks.
              </div>
                <div class="tab-pane" id="messages">
                    <div align="left">
                    <%--To be Notified later ...--%>
                    A demand draft of <strong>Rs. 1000/-(One Thousand Only) & Rs. 500/- (Five hundred Only) for SC/ST candidates only </strong> from any nationalized bank should be submitted in favour of <strong>AKU, REGISTRATION AND EXAMINATION FUND</strong> payable at Patna.   <br> 
                      <br/>
                      <strong>Offline Application Form</strong> <br/>                     Each applicant should submit, in addition to his or her degree certificates, grade/mark sheets and other documents mentioned in the application, incomplete application form will be rejected. The completed application form (Offline) along with all the documents and required Demand Draft should reach to the following address before  16.09.2019.<br>
                      <br/>
THE CONTROLLER OF EXAMINATIONS, <br>
Aryabhatta Knowledge University<br>
Mithapur, Patna – 800001<br />
<%--<br />please visit for apply in M.Tech. & Ph.D. Programme : <a href="http://akuexam.net/">www.akuexam.net</a>--%>
                    </div>
              </div>
              <div class="tab-pane active" id="settings">
              <b>M.Tech. (NS & NT) INTERVIEW AND ADMISSION NOTIFICATION :<a  target="_blank" href="downloads/MTechNSNTInterviewListandAdmissionNotification2019.pdf">Download Notification</a></b><br /><br />
              <%--<a href="downloads/20180706-2908.pdf"  target="_blank">Notification for Admission Test, 2018 [Extension Dates]</a><br /><br />--%>
              <%--<a href="downloads/MTechPhD_Admission_Notice.pdf"  target="_blank">Notification for Admission Test, 2018</a><br /><br />--%>
              <a href="downloads/20190830-3434.pdf"  target="_blank">Notification of Extension Dates for M.Tech. University Admission Test, 2019 [Session 2019-21]</a><br /><br />
              <%--<a href="downloads/20190805-3125.pdf"  target="_blank">Notification of Extension Dates for M.Tech. University Admission Test, 2019 [Session 2019-21]<img src="img/newresulticon.gif" /></a><br /><br />--%>
              <a href="downloads/20190717-2840-NotificationofMTechSession2019-21.pdf"  target="_blank">Notification for M.Tech. University Admission Test, 2019 [Session 2019-21]</a><br /><br />
                    The applications will be screened and the selected applicants will be called for Admission Test followed by personal interview.<%-- However the candidates having fellowships like UGC/CSIR-NET JRF, DBT-JRF, ICMR-JRF, INSPIRE, etc.are exempted from PRT.--%><br>
                    <a href="downloads/Ordinace(Reg. M.Tech. Admission Criteria).pdf" target="_blank">Ordinance for Admission to M.Tech. (Nano Science & Technology) programme in the School of Engineering & Technology</a><br /><br />
                    <a href="downloads/Ordinace(Reg. Ph.D. Admission Criteria).pdf" target="_blank">Ordinance for Admission to Ph.D. (Nano Science & Technology) program in the School of Engineering & Technology</a><br /><br />
                    <a href="downloads/Mtech_form_2019.pdf" target="_blank">Download Offline Application Form</a><br /><br />
                    Entrance Test Date : 20/09/2019<br />
                   <%--<br />please visit for apply in M.Tech. & Ph.D. Programme Online : <a href="http://akuexam.net/">www.akuexam.net</a>--%>
                   <br />Please Click here to download M.Tech. Admission Test ADMIT CARD :<a  target="_blank" href="downloads/MTechNSNTAdmitCard-2019.pdf">Download</a>
                   <br />
                   <%--<br />Download M.Tech. & Ph.D. Admission Test - RESULTS :<a  target="_blank" href="http://akuexam.net/RESULTS">www.akuexam.net</a>--%>
                   
                   <%--<br />M.Tech. & Ph.D. <I>EXTENSION INTERVIEW NOTICE</I> :<a  target="_blank" href="downloads/20180817-ExtensionofInterview.pdf">Download Interview Notice</a>
                   <br />--%>
                   <br /><B>M.Tech. & Ph.D. INTERVIEW RESULT & ADMISSION DATES</B> :<a  target="_blank" href="downloads/MTechNSNTAdmissionNotificationFinalAdmissionFormMeritList2019.pdf">Download Merit List and Admission Notice  <img src="img/newresulticon.gif" />  </a>
                   <br />
                   <br />  <B>Fee Details</B> :<a  target="_blank" href="downloads/FeeDeatils_PAT_MAT18.pdf">Download</a>
                   <br />
                   <br /> <a href="downloads/syllabus_PAT_MAT18.pdf" target="_blank">Syllabus for Entrance Test</a><br /><br />
                   </div>
            </div>
            
        </div><!--  End span7 --> 
    </div> <!--  End row --> 
   
          
      
     
</div>
</section>

  </div><!-- end row-->
  </div> <!-- end container-->
</asp:Content>

