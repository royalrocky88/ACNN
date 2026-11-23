<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="socialactivity.aspx.cs" Inherits="socialactivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Star slider-->
    <section class="slider">
       <div class="fullwidthbanner-container">
					<div class="fullwidthbanner">
						<ul>
							<!-- THE FIRST SLIDE -->
							<li data-transition="flyin" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb1.jpg" data-delay="4000" >
										<img src="images/slides/21.jpg" alt="">
                                        <div class="caption randomrotate"
											 data-x="center"
											 data-y="120"
											 data-speed="300"
											 data-start="1200"
											 data-easing="easeOutExpo"  ></div>
								</li>
                                <!-- THE SECOND SLIDE -->
                         		<li data-transition="3dcurtain-horizontal" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                <img src="images/slides/20.jpg" alt="">
                        
                                           <div class="caption randomrotate"
											 data-x="center"
											 data-y="90"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo"  ></div>

										<div class="caption randomrotate"
											 data-x="150"
											 data-y="80"
											 data-speed="300"
											 data-start="2000"
											 data-easing="easeOutExpo"  ></div>

										<div class="caption randomrotate"
											 data-x="180"
											 data-y="300"
											 data-speed="300"
											 data-start="21000"
											 data-easing="easeOutExpo"  ></div>

										<div class="caption randomrotate"
											 data-x="620"
											 data-y="80"
											 data-speed="300"
											 data-start="3000"
											 data-easing="easeOutExpo"  ></div>

										<div class="caption randomrotate"
											 data-x="605"
											 data-y="300"
											 data-speed="300"
											 data-start="31000"
											 data-easing="easeOutExpo"  ></div>
                                </li>
                                <!-- THE THIRD SLIDE -->
                                <li data-transition="3dcurtain-horizontal" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/slides/21.jpg" alt="">
                                    
                                     <div class="caption very_big_white lfl stl"
											 data-x="right"
											 data-y="180"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine"></div>
                                             
                                   <div class="caption lfb stl"
											 data-x="right"
											 data-y="250"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine" ></div>
                                </li>
                                <!-- THE FOURTH SLIDE -->
                                <li data-transition="cube" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/slides/22.jpg" alt="">
                                    
                                     <div class="caption very_big_white lfl stl"
											 data-x="right"
											 data-y="180"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine"></div>
                                             
                                   <div class="caption lfr stl"
											 data-x="right"
											 data-y="250"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine" ></div>
                                </li>
                                <!-- THE FIFTH SLIDE -->
                                <li data-transition="slideleft" data-slotamount="1" data-masterspeed="300"  data-thumb="images/thumbs/thumb2.jpg">
                                	<img src="images/slides/22.jpg" alt="">
                                    <div class="caption very_big_white lfl stl"
											 data-x="30"
											 data-y="180"
											 data-speed="300"
											 data-start="1000"
											 data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine"></div>

										<div class="caption big_white lfl stl"
											 data-x="30"
											 data-y="250"
											 data-speed="300"
											 data-start="800"
											 data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine"></div>
                                </li>
                                
						</ul>

						<div class="tp-bannertimer tp-bottom"></div>
					</div>
				</div>
</section><!--End slider-->


<div class="container">

  <div class="row" id="main-boxes"></div>
</div> <!-- end container-->




<div class="container">
<div class="row">

<section class="span8"></section>
  </div>
   </div><!-- end container-->
</asp:Content>

