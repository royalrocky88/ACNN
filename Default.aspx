<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/jquery-prettyPhoto.js" language="javascript" type="text/javascript"></script>
    <link href="styles/portfolio.css" rel="stylesheet" type="text/css" />
    <link href="styles/gallery2.css" rel="stylesheet" type="text/css" />
    <link href="styles/AjaxControls.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" type="text/jscript"></script>
    <script src="js/JScript_gal.js" type="text/javascript"></script>
    <style>
    /* Popup Background */
    #popupOverlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0,0,0,0.7);
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 9999;
    }

    /* Popup Box */
    #popupBox {
        position: relative;
        width: 500px;
        max-width: 90%;
        background: #fff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 0 15px rgba(0,0,0,0.4);
        animation: popupFade 0.3s ease;
    }

    /* Popup Image */
    #popupBox img {
        width: 100%;
        display: block;
    }

    /* Close Button */
    #closeBtn {
        position: absolute;
        top: 10px;
        right: 10px;
        width: 30px;
        height: 30px;
        border: none;
        border-radius: 50%;
        background: red;
        color: white;
        font-size: 18px;
        cursor: pointer;
        font-weight: bold;
    }

    /* Bottom Button */
    .popup-footer {
        text-align: center;
        padding: 15px;
        background: #f5f5f5;
    }

    .popup-footer a {
        display: inline-block;
        padding: 10px 25px;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
    }

    .popup-footer a:hover {
        background: #0056b3;
    }

    @keyframes popupFade {
        from {
            transform: scale(0.8);
            opacity: 0;
        }
        to {
            transform: scale(1);
            opacity: 1;
        }
    }
</style>
    <!-- Popup -->
 <%--   <div id="popupOverlay">
        <div id="popupBox">
            <!-- Close Button -->
            <button id="closeBtn" onclick="closePopup()">
                &#215;</button>
            <!-- Image -->
            <img src="img/banner_snn.jpeg" alt="Admission Banner" />
            <!-- Footer Button -->
            <div class="popup-footer">
                <a href="https://adms.akubihar.ac.in/acnn.aspx" target="_blank">Apply Now </a>
                <p>
                    Date extended till <b>15 October 2026</b> for M. Tech in Nanoscience & Nanotechnogy.
                    Great opportunity for M.Sc(Science) B.E/B.Tech for Spot Admission in M. Tech for
                    Viksit Bihar. World class vocal for local based scientific activities and research
                    infrastructure can be seen http://acnn.akubihar.ac.in
                </p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function closePopup() {
            document.getElementById("popupOverlay").style.display = "none";
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Star slider-->
    <section class="slider">
       <div class="fullwidthbanner-container">
					<div class="fullwidthbanner">
						<ul>


                        <!-- THE Newspaper SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/Edu_Minister2024visit.jpg" alt="">
                                        <div class="caption very_small_white lfl stl"
											 data-x="center"
											 data-y="350"
											 data-speed="300"
											 data-start="1200"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">Hon&#8217;ble Education Minister Sri Sunil Kumar Ji, Hon&#8217;ble Secretary Sri Baidyanath Yadav,<br />Director Higher Education Prof. Rekha Kumari and some other Government officers <br />visited the Center's Lab on 22-08-2024</div>
								</li>

                         <!-- THE CM-1 SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/001.jpg" alt="">
                                         <div class="caption big_white lfl stl"
											 data-x="30"
											 data-y="300"
											 data-speed="300"
											 data-start="800"
											 data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine">An MoU between AKU, Patna, and the National Institute of Ayurveda, Jaipur, <br />aims to merge modern science with traditional Ayurvedic practices in Nanotechnology.</div>
								</li>
                                <!-- THE CM-2 SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/002.jpg" alt="">
                                        <div class="caption big_white lfl stl"
											 data-x="30"
											 data-y="300"
											 data-speed="300"
											 data-start="800"
											 data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine">Professor of Ayurvedic Science Prof Prabhat Kr Dwevedi <br />Awarded Ph.D. In Nanotechnogy in Ayurvedic Science</div>
								</li>


                        <!-- THE CM-1 SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/CM-6.jpg" alt="">
                                         <div class="caption very_small_white lfl stl"
											 data-x="right"
											 data-y="350"
											 data-speed="300"
											 data-start="1000"
											  data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">Hon'ble CM of Bihar, Shri Nitish Kumar going through the developments of Centre</div>
								</li>
                                <!-- THE CM-2 SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/CM-7.jpg" alt="">
                                        <div class="caption very_small_white lfl stl"
											 data-x="center"
											 data-y="350"
											 data-speed="300"
											 data-start="1200"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine"  >Hon'ble CM of Bihar, Shri Nitish Kumar with the officials of the Centre</div>
								</li>

                                <!-- THE Newspaper SLIDE
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/Newspaper.jpg" alt="">
                                        <div class="caption very_small_white lfl stl"
											 data-x="center"
											 data-y="350"
											 data-speed="300"
											 data-start="1200"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">Jobs in Nanoscience & Nanotechnology</div>
								</li> -->
							<!-- THE FIRST SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/MainFlash/Bihar_Divas-2022.jpg" alt="">
                                        <div class="caption very_small_white lfl stl"
											 data-x="center"
											 data-y="550"
											 data-speed="300"
											 data-start="1200"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">Bihar Divas</div>
								</li>
                                <!-- THE SECOND SLIDE -->
                         		<li data-transition="3dcurtain-horizontal" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                <img src="images/MainFlash/007.png" alt="">    
                                <div class="caption very_big_white lfl stl"
											 data-x="left"
											 data-y="350"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">ADVANCE EQUIPMENTS</div>                
                                          
                                </li>
                                <!-- THE THIRD SLIDE -->
                                <li data-transition="3dcurtain-horizontal" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/MainFlash/PhDstudents.jpg" alt="">
                                    
                                     <div class="caption very_big_white lfl stl"
											 data-x="right"
											 data-y="350"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">FACULTIES & SCHOLARS</div>
                                             
                                   <div class="caption lfb stl"
											 data-x="right"
											 data-y="400"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine" ><a href="about-us.aspx" class="button_large">Read more</a></div>
                                </li>
                                <!-- THE FOURTH SLIDE -->
                                <li data-transition="cube" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/MainFlash/005.png" alt="">
                                    
                                     <div class="caption very_big_white lfl stl"
											 data-x="right"
											 data-y="350"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">DIFFERENT COURSES AVAILABLE</div>
                                             
                                   <div class="caption lfr stl"
											 data-x="right"
											 data-y="400"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine" ><a href="all-courses.aspx" class="button_large">Read more</a></div>
                                </li>
                                <!-- THE FIFTH SLIDE 
                                <li data-transition="slideleft" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/MainFlash/006.jpg" alt="">
                                    <div class="caption very_big_white lfl stl"
											 data-x="30"
											 data-y="180"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">IMPROVE YOUR SKILLS</div>

										<div class="caption big_white lfl stl"
											 data-x="30"
											 data-y="250"
											 data-speed="300"
											 data-start="800"
											 data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine">with expert teachers</div>
                                </li>-->
                                
						</ul>

						<div class="tp-bannertimer tp-bottom"></div>
					</div>
				</div>
</section>
    <!--End slider-->

    <!-- Info strip -->
    <div class="container">
        <div class="acnn-strip">
            <div class="acnn-strip-inner">
                <div class="acnn-strip-item">
                    <span class="ico"><i class="icon-time"></i></span>
                    <div><h4>Office Hours</h4><p>Mon - Sat, 10:00 AM - 5:00 PM</p></div>
                </div>
                <div class="acnn-strip-item">
                    <span class="ico"><i class="icon-map-marker"></i></span>
                    <div><h4>Our Address</h4><p>Academic Block, Mithapur, Patna - 800 001</p></div>
                </div>
                <div class="acnn-strip-item">
                    <span class="ico"><i class="icon-phone"></i></span>
                    <div><h4>Call Us</h4><p>0612 236 2270 &nbsp;|&nbsp; +91 810 292 6986</p></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Programmes / equipment / admission -->
    <section class="acnn-section">
        <div class="container">
            <div class="acnn-heading">
                <span class="eyebrow">Study &amp; Research</span>
                <h2>Learn, Discover and Innovate at Nanoscale</h2>
                <p>Programmes, world-class instruments and open admissions for the 2026 academic session.</p>
            </div>
            <div class="acnn-cards">
                <div class="acnn-card">
                    <span class="ico"><i class="icon-book"></i></span>
                    <h3>Courses</h3>
                    <ul>
                        <li>M.Tech. in Nano Science &amp; Technology</li>
                        <li>M.Sc. in Nanosciences</li>
                        <li>Ph.D. in Nano Science &amp; Technology</li>
                    </ul>
                    <a class="more" href="Course-Details.aspx" title="All Courses">View all courses &rarr;</a>
                </div>
                <div class="acnn-card navy">
                    <span class="ico"><i class="icon-beaker"></i></span>
                    <h3>Research Equipment</h3>
                    <ul>
                        <li>Nanoscience</li>
                        <li>Nanotechnology</li>
                    </ul>
                    <a class="more" href="ResearchEquipment.aspx" title="Research Equipment">Explore instruments &rarr;</a>
                </div>
                <div class="acnn-card amber">
                    <span class="ico"><i class="icon-edit"></i></span>
                    <h3>Admission @ ACNN</h3>
                    <ul>
                        <li>Apply now for M.Tech. (NS&amp;NT) - Academic Session 2026</li>
                        <li><a href="admission-procedure-PhD.aspx" target="_blank" title="Admission Section">Ph.D. Admission Procedure</a></li>
                    </ul>
                    <a class="acnn-btn acnn-btn-amber" href="http://adms.akubihar.ac.in" target="_blank">Apply Online</a>
                </div>
            </div>

            <div class="acnn-banner">
                <div>
                    <h2>Admissions Open - Academic Session 2026</h2>
                    <p>Be part of Bihar's first cutting-edge nanoscience research centre, equipped with more than 20 high-end research instruments.</p>
                </div>
                <div class="acts">
                    <a class="acnn-btn acnn-btn-amber" href="http://adms.akubihar.ac.in" target="_blank">Admission Now</a>
                    <a class="acnn-btn acnn-btn-ghost" style="color:#fff;border-color:#fff" href="Course-Details.aspx">View Courses</a>
                </div>
            </div>
        </div>
    </section>

    <!-- People -->
    <section class="acnn-section">
        <div class="container">
            <div class="acnn-heading">
                <span class="eyebrow">Our Team</span>
                <h2>Faculty &amp; Staff</h2>
                <p>Faculty, scholars and support staff driving research and teaching at the Centre.</p>
            </div>
            <div class="acnn-team">
                <div class="acnn-team-head">
                <div class="acnn-person">
                    <img src="img/DrRakeshSirN.jpg" alt="faculty" />
                    <h4>Dr. Rakesh Kr. Singh</h4>
                    <div class="role">Head of the Centre</div>
                    <p>Ph.D.(Nanoscience)<br /><a href="http://drrakeshsingh.com">www.drrakeshsingh.com</a></p>
                </div>
                </div>
                <div class="acnn-marquee" aria-label="Faculty and staff of the Centre">
                    <div class="acnn-track">
                <div class="acnn-person">
                    <img src="img/fac6.png" alt="faculty" />
                    <h4>Dr. Vijay Kumar Ravi</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D. (Biotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/fac7.png" alt="faculty" />
                    <h4>Dr. Abhay Kr Aman</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/fac8.jpg" alt="faculty" />
                    <h4>Dr. Bibhuti Bikramaditya</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/Dr_Manisha_Kumari.jpeg" alt="faculty" />
                    <h4>Dr. Manisha Kumari</h4>
                    <div class="role">Guest Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/NishantKr.jpg" alt="staff" />
                    <h4>Mr. Nishant Kumar</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/Monalisa.jpg" alt="staff" />
                    <h4>Miss Monalisa</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/AnuradhaMuskan.jpg" alt="staff" />
                    <h4>Miss Anuradha Muskan</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/PrinceKumar.jpg" alt="staff" />
                    <h4>Mr. Prince Kumar</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/dollyghosh.jpg" alt="staff" />
                    <h4>Mrs. Dolly Ghosh</h4>
                    <div class="role">Library Assistant</div>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/kryashupal.jpg" alt="staff" />
                    <h4>Mr. Kumar Yashupal</h4>
                    <div class="role">Clerk cum Computer Typist</div>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/kumarvijay.jpg" alt="staff" />
                    <h4>Mr. Kumar Vijay</h4>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/Shashiranjankumar.jpeg" alt="staff" />
                    <h4>Mr. Shashi Ranjan Kumar</h4>
                    <div class="role">Assistant</div>
                </div>
                <div class="acnn-person">
                    <img src="img/TechStaff/dilipkr.jpg" alt="staff" />
                    <h4>Mr. Dilip Kumar Choudhary</h4>
                    <div class="role">Attendant</div>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/fac6.png" alt="faculty" />
                    <h4>Dr. Vijay Kumar Ravi</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D. (Biotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/fac7.png" alt="faculty" />
                    <h4>Dr. Abhay Kr Aman</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/fac8.jpg" alt="faculty" />
                    <h4>Dr. Bibhuti Bikramaditya</h4>
                    <div class="role">Teaching Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/Dr_Manisha_Kumari.jpeg" alt="faculty" />
                    <h4>Dr. Manisha Kumari</h4>
                    <div class="role">Guest Faculty</div>
                    <p>Ph.D.(Nanoscience and Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/NishantKr.jpg" alt="staff" />
                    <h4>Mr. Nishant Kumar</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/Monalisa.jpg" alt="staff" />
                    <h4>Miss Monalisa</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/AnuradhaMuskan.jpg" alt="staff" />
                    <h4>Miss Anuradha Muskan</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/PrinceKumar.jpg" alt="staff" />
                    <h4>Mr. Prince Kumar</h4>
                    <div class="role">Technical Assistant</div>
                    <p>M.Tech (Nanoscience &amp; Nanotechnology)</p>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/dollyghosh.jpg" alt="staff" />
                    <h4>Mrs. Dolly Ghosh</h4>
                    <div class="role">Library Assistant</div>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/kryashupal.jpg" alt="staff" />
                    <h4>Mr. Kumar Yashupal</h4>
                    <div class="role">Clerk cum Computer Typist</div>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/kumarvijay.jpg" alt="staff" />
                    <h4>Mr. Kumar Vijay</h4>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/Shashiranjankumar.jpeg" alt="staff" />
                    <h4>Mr. Shashi Ranjan Kumar</h4>
                    <div class="role">Assistant</div>
                </div>
                <div class="acnn-person" aria-hidden="true">
                    <img src="img/TechStaff/dilipkr.jpg" alt="staff" />
                    <h4>Mr. Dilip Kumar Choudhary</h4>
                    <div class="role">Attendant</div>
                </div>
                    </div>
                </div>
            </div>
            <p style="text-align:center;margin-top:26px"><a class="acnn-btn acnn-btn-teal" href="Staff_CNN.aspx">View All Staff</a></p>
        </div>
    </section>

    <!-- Mission, goals, objectives, scenario -->
    <section class="acnn-section alt">
        <div class="container">
            <div class="acnn-heading">
                <span class="eyebrow">Why Choose ACNN</span>
                <h2>Mission, Goals and Objectives</h2>
            </div>
            <div class="acnn-about">
                <div class="block wide">
                    <h3 id="section1">Mission and Vision</h3>
                    <p>A future in which the ability to understand and control matter at the nanoscale leads to on-going revolutions in 21st century of technology and industry for its multifunctional applications in society. A world-leading research centre creating cutting-edge solutions to societal challenges. Our mission and our aims to contribute to the all about understanding and improving the human knowledge and skill with the tools of Nanoscience and Nanotechnology- A Science of small system.</p>
                </div>
                <div class="block">
                    <h3 id="section2">Goals</h3>
                    <ul>
                        <li>To conduct Research &amp;Development activities to acquire frontiers knowledge in nanoscience and nanotechnology at international level and built awareness to society. </li>
                        <li>To drive national strategies and policies for nanoscience and nanotechnology in ways that yield concrete and sustainable results.</li>
                        <li>To transfer the knowledge and know-how in nanoscience and nanotechnology to the industrial sector while disseminating accurate information to the public,</li>
                        <li>To undertake capacity building of human resource development in nanoscience and nanotechnology development,</li>
                        <li>To develop infrastructure that would facilitate nanoscience and nanotechnology development.</li>
                    </ul>
                </div>
                <div class="block">
                    <h3 id="section3">Objectives</h3>
                    <ul>
                        <li>Organizing State, National, and international level seminars and conferences related to nanoscience and Nanotechnology.</li>
                        <li>Encouraging innovative and challenging technology/product/research based scientific projects.</li>
                        <li>Publish scientific papers of in peer reviewed/Indexed journals.</li>
                        <li>Generating patents/Protype in Nano Science and Technology</li>
                        <li>Setting up of incubators for translational research (from laboratory to industry)</li>
                        <li>Sensitizing public and media about the advantages, new finding and safeguards in Nano Science and Technology</li>
                    </ul>
                </div>
                <div class="block wide">
                    <h3 id="section4">Current scenario</h3>
                    <ul>
                        <li>To prepare new functional nanomaterial using green approach, waste resources and other Physical &amp; Chemical methods, studying their new science, new properties at nanoscale for its possible applications in industries, energy &amp; environment, and performance of human knowledge.</li>
                        <li>To ensure all the major research areas of Nanoscience with major focus on agriculture, Magnetic materials, and purification of water, green energy source, Bio- nanomaterial for its applications in better health, energy &amp; environment sustainability.</li>
                        <li>To focus on ancient Indian traditional Nano medicine and their different properties measurement as evidence-based medicine for it global acceptance.</li>
                        <li>To dissemination of frontiers knowledge and inventions related to Nanoscience and nanotechnology in society/ academic institutions.</li>
                        <li>To correlate and collaborate with different scientific research occurring in India and across the world.</li>
                        <li>Support the development of Nanotechnology from discovery to production by start-ups, prototype and patent etc.</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Events and galleries -->
    <section class="acnn-section">
        <div class="container">
            <div class="acnn-heading">
                <span class="eyebrow">Events</span>
                <h2>Seminars, Conclaves and Activities</h2>
            </div>

            <div class="widget borders widget-table" style="margin-bottom:26px">
                <div class="widget-header">
                    <h5>Activities and Report of International Seminars</h5>
                </div>
                <div class="widget-content">
                    <div id="gallery" class="gallery acnn-gallery-grid">
                        <ul>
                            <li><a href="downloads/Startup Bihar Conference.pdf" rel="prettyPhoto[gallery1]" target="_blank" title='Startup Bihar Conference'><img src="Event_Pics/Startup Bihar Conference.jpg" class="thumbnail" alt="Startup Bihar Conference" /></a></li>
                            <li><a href="downloads/WorldScientist_RankingUniversity2023.pdf" rel="prettyPhoto[gallery1]" target="_blank" title='World Scientist & University Ranking 2023'><img src="Event_Pics/WorldScientist_RankingUniversity2023.jpg" class="thumbnail" alt="World Scientist and University Ranking 2023" /></a></li>
                            <li><a href="downloads/International_Seminar_TransMaterialScience.pdf" rel="prettyPhoto[gallery1]" target="_blank" title='International Seminar on Translational Materials Science Research and Emerging Technologies for Self-Reliant Society'><img src="Event_Pics/ISMT-211224.jpg" class="thumbnail" alt="International Seminar on Translational Materials Science" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="widget borders widget-table">
                <div class="widget-header">
                    <h5>Academia-Industry Conclave Hydroelectric Cell - Nanotechnology Revelutionizing Engergy Generation</h5>
                </div>
                <div class="widget-content">
                    <div id="gallery" class="gallery acnn-gallery-grid">

                        <asp:ObjectDataSource ID="ObjectDataSource_Events" runat="server"
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
                            TypeName="DataSet_ACNN_DBTableAdapters.Table_Event_ResponseTableAdapter"
                                InsertMethod="Insert">
                            <InsertParameters>
                                <asp:Parameter Name="SlNo" Type="Double" />
                                <asp:Parameter Name="Pic_L_path" Type="String" />
                                <asp:Parameter Name="Pic_S_Path" Type="String" />
                                <asp:Parameter Name="Media_title" Type="String" />
                                <asp:Parameter Name="Active" Type="Boolean" />
                            </InsertParameters>
                        </asp:ObjectDataSource>

                        <asp:Repeater ID="Repeater2" runat="server"
                            DataSourceID="ObjectDataSource_Events">
                            <ItemTemplate>

                            <ul>

                            <li><a href="<%# "Event_Pics/" +Eval("Pic_L_path") %>" rel="prettyPhoto[gallery1]" title='<%# Eval("Media_title")%>'><img src="<%# "Event_Pics/" +Eval("Pic_S_path") %>" class="thumbnail" alt="" /></a></li>
                            </ul>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Awards and video -->
    <section class="acnn-section alt">
        <div class="container">
            <div class="acnn-heading">
                <span class="eyebrow">Recognition</span>
                <h2>Nanoscience Faculty Awarded &amp; in Events</h2>
            </div>
            <div class="row">
                <div class="span6">
                    <div class="acnn-panel">
                        <div class="acnn-video">
                            <iframe loading="lazy" src="https://www.youtube.com/embed/ELUBCLkVlIc?si=EQig2bDj3T2NX5JR"
                                title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="acnn-panel">
                        <div class="acnn-video">
                            <iframe loading="lazy" src="https://www.youtube.com/embed/lTmga6Ikt7o"
                                title="Nanotechnology  faculty  awarded  Chancellor  award for best Young teacher  with contributions in modern field of  nanoscience"
                                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </div>
                        <h4>Dr. Rakesh Kr. Singh</h4>
                        <p>Chancellor award for best Young teacher with research contributions in modern field of science Nano science. <a href="Larger/030_L.jpg" target="_blank">Read more...</a></p>
                        <p><b>Chancellor (Governor) Award for Best Young Teacher with contributions in modern field of Nanoscience</b></p>
                        <p>Nanotechnology faculty awarded Chancellor award for best Young teacher with contributions in modern field of nanoscience</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Introduction -->
    <section class="acnn-section">
        <div class="container">
            <div class="acnn-panel">
                <h2>Introduction</h2>
                <p align="justify">Aryabhatta School of Nanoscience & Technology(SNN) is non-traditional, super specialized, frontier areas of subject of 21st century&  first cutting edge Research Centre of university of Bihar, equipped with 20 high-end research instruments such as  Scanning Electron Microscope, Multiferroic system, Vibrating Sample magnetometer, High energy ball mill etc. This is only one such frontiers related academic center in universities of Bihar. The Nanoscience and nanotechnology center of Aryabhatta Knowledge University was Established by the founder Vice Chancellor Prof. S N Guha with whole hearted support and encouragement from Honorable Chief minister Sri Nitish Kumar Ji. The first academic session of M.Tech and Ph.D. started from academic from year 2013. The academic and research activities of this Center visited/appreciated by Hon&#8217;ble Governor cum Chancellor Universities of Bihar, Hon&#8217;ble Chief minister Sri Nitish Kumar Ji, Education ministers ,various Govt. officers and eminent academicians of national/International repute.</p>
                <div class="acnn-intro-photos">
                    <img alt="" src="images/Home/1.jpg" />
                    <img alt="" src="images/Home/2.jpg" />
                    <img alt="" src="images/Home/3.jpg" />
                    <img alt="" src="images/Home/4.jpg" />
                </div>
                <p align="justify">Different affairs of academic, research &development programme are being carried out under the leadership of Dr. Rakesh Kumar Singh, head of the Nanoscience center(i/c) , who have been also awarded &#8220;
                <strong><b>Best Young Teacher with Contributions in modern field of Nanoscience</b></strong>&#8221; by Hon&#8217;ble Chancellor of university of Bihar cum Governor for his outstanding performance .  In the last 10 year more than 1000 eminent academicians/Scholars from different parts of world/country/state visited Nanoscience center of Aryabhatta Knowledge University. About more than 200 research papers published/ final progress in SCI/Scopus/WoS/Peer reviewed Journals by Nanotechnology center in multidisciplinary area of Science, Engineering & technology including Engineering Science, Agriculture, Electronics, Medicine, Food, and Ayurveda and Basic Sciences. 2 patents and 2 prototype have been filed/developed in the field of low cost LED, Agriculture and purification of water.
                <b><br />Scientists/Academicians of About More than 100 countries of the world including China, USA, UK, Germany, others cited/appreciated/read the frontiers research activities of the nanoscience center. The International level research activities and world class scientific infrastructure can be seen- http://acnn.akubihar.ac.in. </b></p>
            </div>
        </div>
    </section>
</asp:Content>
