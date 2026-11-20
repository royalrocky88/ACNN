<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="admission-procedure old1.aspx.cs" Inherits="admission_procedure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            border-collapse: collapse;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            border: 1.0pt solid windowtext;
        }
        .style2
        {
            font-size: large;
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
                    Online fee of <strong>Rs. 1,500/-(One Thousand Five Hundred Only) & Rs. 500/- (Five hundred Only) for SC/ST candidates only </strong> 
                      <br/>
                      
<br />please visit for details & apply in M.Tech. & Ph.D. Programme : <a href="http://akuexam.net/">www.akuexam.net</a>
                    </div>
              </div>
              <div class="tab-pane active" id="settings">
              
              <a href="downloads/admission Notice NSNT.pdf"  target="_blank">Notification for M.Tech. & Ph.D. Admission, 2021</a><br /><br />
              <%--<a href="downloads/20220112-79-NotificationofDateExtend-PhD_MTech_MScCourses_ACNN_CGS.pdf" target="_blank">EXTENDED DATE OF FORM FILLING NOTICE DATED 12.01.2022</a><br /><br />--%>
              

              <a href="downloads/20220203-258-Notification of M.Tech & Ph.D. Nano Science-2021.pdf" target="_blank">Regarding Notification of M.Tech & Ph.D (Nano Science & Technology) 2021 IMPORTANT !</a><br /><br />
              <a href="downloads/20220217-C-0123-Notification_PhDNonoscience.pdf" target="_blank">Regarding Ph.D (Nanoscience & Technology) Examination 2021 [New Exam Date] !</a><br /><br />
              <%--<a href="downloads/20201106-3680-MTechNanaScience_ACNN.pdf"  target="_blank">Revised Notification for M.Tech. University Admission Test, 2020 [Session 2020-22]</a><img src="img/newresulticon.gif" /><br /><br />
              <a href="downloads/General_Instruction_ACNN.pdf"  target="_blank">Reg. Publication of General Instruction for New Student seeking admission in M.Tech (NS&T) Session 2020-22</a><img src="img/newresulticon.gif" /><br /><br />
              <a href="downloads/MTechAdmTestNSNT_RESULTS.pdf"  target="_blank">Results of M.Tech. University Admission Test, 2020 [Session 2020-22] published date: 21.12.2020 </a><img src="img/newresulticon.gif" /><br /><br />
              <a href="downloads/20201212-4016.pdf"  target="_blank">Revised Notification for M.Tech. University Admission Test, 2020 [Session 2020-22] dated 12.12.2020 </a><br /><br />--%>

                    The applications will be screened and the selected applicants will be called for Admission Test followed by personal interview.<%-- However the candidates having fellowships like UGC/CSIR-NET JRF, DBT-JRF, ICMR-JRF, INSPIRE, etc.are exempted from PRT.--%><br>
                    <a href="downloads/Ordinace(Reg. M.Tech. Admission Criteria).pdf" target="_blank">Ordinance for Admission to M.Tech. (Nano Science & Technology) programme in the School of Engineering & Technology</a><br /><br />
                    <a href="downloads/Ordinace(Reg. Ph.D. Admission Criteria).pdf" target="_blank">Ordinance for Admission to Ph.D. (Nano Science & Technology) program in the School of Engineering & Technology</a><br /><br />
                    <%--<a href="downloads/Mtech_form_2019.pdf" target="_blank">Download Offline Application Form</a><br /><br />--%>
                    
                    <a href="https://akuexam.net/ACNN_CGS_Exams2021_I/EntranceTestNotice.aspx" target="_blank">Click here to apply in ONLINE Application mode</a><br /><br />
                    <br />
                    
                  <table border="1" cellpadding="0" cellspacing="0" class="style1" 
                      style="mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt">
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">1<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Admit Cards available on website<o:p></o:p></span></p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">15-02-2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">2<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Date of Entrance Test<span>&nbsp; </span><o:p></o:p></span>
                              </p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">18.02.2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">3<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Date of Interview<o:p></o:p></span></p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">21.02.2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">4<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Declaration of result<o:p></o:p></span></p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>24.02.2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">5<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Admission<o:p></o:p></span></p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                  25-26.02.2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                      <tr>
                          <td width="37">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US">6<o:p></o:p></span></p>
                          </td>
                          <td width="324">
                              <p class="MsoNormal">
                                  <span lang="EN-US">Date of induction meet<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  </span><o:p></o:p></span>
                              </p>
                          </td>
                          <td width="252">
                              <p align="center" class="MsoNormal">
                                  <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>28.02.2022<o:p></o:p></span></p>
                          </td>
                      </tr>
                  </table>
                  <br />
                  <strong><span class="style2"><span class="style3">
                  <a href="downloads/ADMISSION_NOTICE_MTECH_ACNN_2021.pdf"  target="_blank">RESULTS & ADMISSION NOTICE M.Tech. (Nano Science & Technology); dated 15.03.2022</a></span><a href="downloads/admission Notice NSNT.pdf"  target="_blank"></a><br class="style3" />
                      <br /><a href="downloads/868 M.Tech. (2021).pdf" target="_blank">EXTENDED DATE OF ADMISSION NOTICE (M.Tech.); DATED 29.03.2022</a><br /><br />
                  <a href="downloads/869 PhD(2021).pdf"  target="_blank">INTERVIEW NOTICE Ph.D. (Nano Science & Technology); dated 29.03.2022</a><a href="downloads/admission Notice NSNT.pdf"  target="_blank"></a><br class="style3" />
                  <br />
                  <span class="style3"><a href="downloads/ADMISSION_NOTICE_PhD_ACNN_2021.pdf"  target="_blank">FINAL RESULT & ADMISSION NOTICE Ph.D. in Nano Science & Technology; dated 09.04.2022<img src="img/newresulticon.gif" /></a></span><a href="downloads/admission Notice NSNT.pdf"  target="_blank"></a><br class="style3" />
                  </span></strong><br />

                   
                   <br />  <B>Fee Details</B> :<a  target="_blank" href="downloads/FeeDeatils_PAT_MAT18.pdf">Download</a>
                   <br />
                   <br /> <a href="downloads/syllabus_PAT_MAT18.pdf" target="_blank">Syllabus for Entrance Test</a><br />
                    <br /> <a href="downloads/Syllabus_Phd_Entrance_NSNT.pdf" target="_blank">Syllabus for Entrance Test- Subject: M.Tech. (Nano Science & Technology)</a><br /><br />
                   </div>
            </div>
            
        </div><!--  End span7 --> 
    </div> <!--  End row --> 
   
          
      
     
</div>
</section>

  </div><!-- end row-->
  </div> <!-- end container-->
</asp:Content>

