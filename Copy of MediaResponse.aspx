<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Copy of MediaResponse.aspx.cs" Inherits="MediaResponse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Gallery Specific Elements -->

<script src="Scripts/jquery-prettyPhoto.js" language="javascript" type="text/javascript"></script>
    <link href="styles/portfolio.css" rel="stylesheet" type="text/css" />    
    <link href="styles/gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/AjaxControls.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/lightbox.js" type="text/javascript"></script>

<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        $("a[rel^='prettyPhoto']").prettyPhoto({
            theme: 'dark_rounded',
            overlay_gallery: false
        });
    });
</script>

    
    <!-- End Gallery Specific Elements -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container">

<div class="row">
<h1 class="span12">Media Response</h1>

<div class="span12">
    <ul class="breadcrumb">
      <li><a href="Default.aspx">Home</a> <span class="divider">/</span></li>
      <li class="active">Media Response</li>
    </ul>
</div>

<section class="span12">
	<div class="col-right">
        <div class="widget borders widget-table">
					
					<div class="widget-header">
						<h5>In various Newspapers</h5>
					</div> <!-- .widget-header -->
					
					<div class="widget-content">						
						<div id="gallery" style="display:inline-block;">
    
    <%-- <ul>


            <li><a  href="Larger/3.jpg" rel="prettyPhoto[gallery1]" title="Nano Medicine from Bhasm"><img src="Smaller/3.jpg" alt="" /></a></li>
            <li><a  href="Larger/4.jpg" rel="prettyPhoto[gallery1]" title="Aryuvedic Bhasm as Nano Medicine"><img src="Smaller/4.jpg" alt="" /></a></li>
            <li><a  href="Larger/7.jpg" rel="prettyPhoto[gallery1]" title="Nanotechnology Course"><img src="Smaller/7.jpg" alt="" /></a></li>
            <li><a  href="Larger/Hindustan Times .jpg" rel="prettyPhoto[gallery1]" title="Iron Nano Materials"><img src="Smaller/Hindustan Times .jpg" alt="" /></a></li>
            <li><a  href="Larger/Nanotechnology for human devlopement ii.jpg" rel="prettyPhoto[gallery1]" title="IIT Indore Faculty Lecture"><img src="Smaller/Nanotechnology for human devlopement ii.jpg" alt="" /></a></li>
            <li><a  href="Larger/Prabhat khabar2.jpg" rel="prettyPhoto[gallery1]" title="Swedan Talk"><img src="Smaller/Prabhat khabar2.jpg" alt="" /></a></li>
            <li><a  href="Larger/R K Kotnala0001.jpg" rel="prettyPhoto[gallery1]" title="R K Kotnala, New Delhi"><img src="Smaller/R K Kotnala0001.jpg" alt="" /></a></li>


            <li><a href="Larger/IMG-20180512-WA0004.jpg" rel="prettyPhoto[gallery1]" title="Technology Day"><img src="Smaller/IMG-20180512-WA0004.jpg" alt="" /></a></li>
            <li><a href="Larger/Ethics-Lecture.jpg" rel="prettyPhoto[gallery1]" title="Ethics-Lecture"><img src="Smaller/Ethics-Lecture smaller.jpg" alt="" /></a></li>
            <li><a href="Larger/Nano lab.jpg" rel="prettyPhoto[gallery1]" title="Nano lab"><img src="Smaller/Nano lab.jpg" alt="" /></a></li>
            <li><a href="Larger/Tech. Day.jpg" rel="prettyPhoto[gallery1]" title="Tech. Day"><img src="Smaller/Tech. Day.jpg" alt="" /></a></li>
            <li><a href="Larger/Technology day-2.jpg" rel="prettyPhoto[gallery1]" title="Technology day-2"><img src="Smaller/Technology day-2.jpg" alt="" /></a></li>
            <li><a href="Larger/Technology day-3.jpg" rel="prettyPhoto[gallery1]" title="Technology day-3"><img src="Smaller/Technology day-3.jpg" alt="" /></a></li>
            <li><a href="Larger/Technology Day.jpg" rel="prettyPhoto[gallery1]" title="Technology Day"><img src="Smaller/Technology Day.jpg" alt="" /></a></li>

            <li><a  href="Larger/001_L.jpg" rel="prettyPhoto[gallery1]" title="8th Annual Day AKU, Patna"><img src="Smaller/001_S.jpg" alt="" /></a></li>
            <li><a  href="Larger/002_L.jpg" rel="prettyPhoto[gallery1]" title="Freshers Party"><img src="Smaller/002_S.jpg" alt="" /></a></li>
            <li><a  href="Larger/003_L.jpg" rel="prettyPhoto[gallery1]" title="Phassam Medicine Article"><img src="Smaller/003_S.jpg" alt="" /></a></li>
            <li><a  href="Larger/004_L.jpg" rel="prettyPhoto[gallery1]" title="Article Nano Powder"><img src="Smaller/004_S.jpg" alt="" /></a></li>
            <li><a  href="Larger/005_L.jpg" rel="prettyPhoto[gallery1]" title="New Universities in Bihar"><img src="Smaller/005_S.jpg" alt="" /></a></li>
            <li><a  href="Larger/006_L.jpeg" rel="prettyPhoto[gallery1]" title="हिंदी के वैज्ञानिक पहलू पर प्रकाश, अंतर्राष्ट्रीय मातृ दिवस "><img src="Smaller/006_S.jpg" alt="" /></a></li>

            <li><a href="Larger/007_L.jpeg" rel="prettyPhoto[gallery1]" title="टीबी के बैक्टीरिया को रोकने में मिली सफलता"><img src="Smaller/007_S.jpg" alt="" /></a></li>
            <li><a href="Larger/008_L.jpeg" rel="prettyPhoto[gallery1]" title="एकेयू में विशेष लेक्चर का आयोजन, आईआईटी इंदौर के फैकल्टी राकेश कुमार द्वारा"><img src="Smaller/008_S.jpg" alt="" /></a></li>
            <li><a href="Larger/009_L.jpeg" rel="prettyPhoto[gallery1]" title="रिसर्च एवं इनोवेशन के क्षेत्र में बच्चे दिखायेंगे टैलेंट"><img src="Smaller/009_S.jpg" alt="" /></a></li>
            <li><a href="Larger/010_L.jpeg" rel="prettyPhoto[gallery1]" title="Freshers Party, 2018 batch"><img src="Smaller/010_S.jpg" alt="" /></a></li>
            <li><a href="Larger/011_L.jpeg" rel="prettyPhoto[gallery1]" title="नए क्षेत्रों में रिसर्च करने वाली यूनिवर्सिटी बनी एकेयू"><img src="Smaller/011_S.jpg" alt="" /></a></li>
            <li><a href="Larger/012_L.jpeg" rel="prettyPhoto[gallery1]" title="हिंदी विज्ञान साहित्य परिषद द्वारा 29वी राष्ट्रीय विज्ञान संगोष्ठी का आयोजन"><img src="Smaller/012_S.jpg" alt="" /></a></li>

            <li><a href="Larger/013_L.jpg" rel="prettyPhoto[gallery1]" title="शंख भस्म के प्रयोग से अंडा उत्पादन बढाने में मिली मदद"><img src="Smaller/013_S.jpg" alt="" /></a></li>
            <li><a href="Larger/014_L.jpg" rel="prettyPhoto[gallery1]" title="Workshop on Molecular dynamics and quantum mechanical simulation"><img src="Smaller/014_S.jpg" alt="" /></a></li>            
            <li><a href="Larger/016_L.jpg" rel="prettyPhoto[gallery1]" title="SEM training for M.Tech. Students"><img src="Smaller/016_S.jpg" alt="" /></a></li>
            <li><a href="Larger/017_L.jpg" rel="prettyPhoto[gallery1]" title="Mica can be used for treatment of various diseases"><img src="Smaller/017_S.jpg" alt="" /></a></li>
            <li><a href="Larger/018_L.jpg" rel="prettyPhoto[gallery1]" title="नानो टेक्नोलॉजी की पढाई का हब बनेगा आर्यभट्ट ज्ञान विश्वविधालय"><img src="Smaller/018_S.jpg" alt="" /></a></li>
            <li><a href="Larger/019_L.jpg" rel="prettyPhoto[gallery1]" title="पटनाइट्स की लाइफलाइन बदल देगी नानोसाइंस"><img src="Smaller/019_S.jpg" alt="" /></a></li>
             <li><a href="Larger/020_L.jpg" rel="prettyPhoto[gallery1]" title="अकेयू व अटल इंक्यूबेसन सेंटर के बीच ऍमओयू साईन"><img src="Smaller/020_S.jpg" alt="" /></a></li>

             <li><a href="Larger/021_L.jpeg" rel="prettyPhoto[gallery1]" title="Study likely to help in treatment of fluoride-cantaminated water"><img src="Smaller/021_S.jpg" alt="" /></a></li>
             <li><a href="Larger/022_L.jpeg" rel="prettyPhoto[gallery1]" title="रिसर्च में किया गया दावा, अब पानी से आसानी से हट सकेगा फ्लोराइड"><img src="Smaller/022_S.jpg" alt="" /></a></li>
             <li><a href="Larger/023_L.jpg" rel="prettyPhoto[gallery1]" title="मुख्यमंत्री ने आर्यभट्ट की प्रतिमा का वीडियो कॉन्फ़्रेंसिंग के माध्यम से किया अनावरण"><img src="Smaller/023_S.jpg" alt="" /></a></li>
             <li><a href="Larger/024_L.jpg" rel="prettyPhoto[gallery1]" title="शोध का बड़ा केंर बने आर्यभट्ट विवि: नीतीश"><img src="Smaller/024_S.jpg" alt="" /></a></li>
             <li><a href="Larger/025_L.jpg" rel="prettyPhoto[gallery1]" title="नैनोसाइंस व नैनोटेक्नोलॉजी में एमटेक और पीएचडी कर पायें रोजगार के अवसर"><img src="Smaller/025_S.jpg" alt="" /></a></li>

             <li><a href="Larger/026_L.jpg" rel="prettyPhoto[gallery1]" title="जलकुम्भी के भस्म से हो सकेगा प्रोस्टेट कैंसर का बेहतर उपचार"><img src="Smaller/026_S.jpg" alt="" /></a></li>
             <li><a href="Larger/027_L.jpg" rel="prettyPhoto[gallery1]" title="New innovation in technology webinar organised by ACNN, Aryabhatta Knowledge University, Patna "><img src="Smaller/027_S.jpg" alt="" /></a></li>
             <li><a href="Larger/028_L.jpg" rel="prettyPhoto[gallery1]" title="Discussions and Talks on 'startup Stages & Eco System'"><img src="Smaller/028_S.jpg" alt="" /></a></li>
             <li><a href="Larger/029_L.jpg" rel="prettyPhoto[gallery1]" title="नेनों विज्ञान, प्रौद्योगिकी के सतत विकास विषय पर सेमिनार आयोजित "><img src="Smaller/029_S.jpg" alt="" /></a></li>
             <li><a href="Larger/030_L.jpg" rel="prettyPhoto[gallery1]" title="CHANCELLOR'S AWARD 2019-20"><img src="Smaller/030_S.jpg" alt="" /></a></li>
             <li><a href="Larger/031_L.jpg" rel="prettyPhoto[gallery1]" title="दालचीनी और अदरक के नानो फाइन पाउडर से कम होगा डायबिटीज़ एवं मोटापा"><img src="Smaller/031_S.jpg" alt="" /></a></li>

             <li><a href="Larger/032_L.jpg" rel="prettyPhoto[gallery1]" title="पहली बार हवन की राख पर किया शोध"><img src="Smaller/032_S.jpg" alt="" /></a></li>
             <li><a href="Larger/033_L.jpg" rel="prettyPhoto[gallery1]" title="पानी में मोजूद आर्सेनिक और फ्लोराइड हटाएगी 'भस्म'"><img src="Smaller/033_S.jpg" alt="" /></a></li>
             <li><a href="Larger/034_L.jpg" rel="prettyPhoto[gallery1]" title="नैनो टेक्नोलॉजी में 150 से ज्यादा शोध हुए, 100 पर अब भी है जारी"><img src="Smaller/034_S.jpg" alt="" /></a></li>
             <li><a href="Larger/035_L.jpg" rel="prettyPhoto[gallery1]" title="वेबिनर : नैनो तकनीक मानव जीवन के लिए बनेगी उपयोगी"><img src="Smaller/035_S.jpg" alt="" /></a></li>
             <li><a href="Larger/036_L.jpg" rel="prettyPhoto[gallery1]" title="आर्यभट्ट ज्ञान विवि में शिक्षकों को दी गयी शोध की जानकारी"><img src="Smaller/036_S.jpg" alt="" /></a></li>
              <li><a href="Larger/037_L.jpg" rel="prettyPhoto[gallery1]" title="नैनो टेक्नोलॉजी में 150 से ज्यादा शोध हुए, 100 पर अब भी है जारी - Article published in Dainik Bhaskar page no- 5, dated on 13/04/23"><img src="Smaller/037_S.jpg" alt="" /></a></li>

             <li><a href="Larger/038_L.jpg" rel="prettyPhoto[gallery1]" title="एकेयू के तीन को 22 लाख का पैकेज- प्रभात खबर"><img src="Smaller/038_S.jpg" alt="" /></a></li>
             <li><a href="Larger/039_L.jpg" rel="prettyPhoto[gallery1]" title="नैनोसाइंस के तीन छात्रों को 22 लाख का पैकेज- दैनिक जागरण"><img src="Smaller/039_S.jpg" alt="" /></a></li>
             <li><a href="Larger/040_L.jpg" rel="prettyPhoto[gallery1]" title="अंडे के छिलके के नैनो पाउडर से पानी होगा आर्सेनिक से मुक्त"><img src="Smaller/040_S.jpg" alt="" /></a></li>
             <li><a href="Larger/041_L.jpeg" rel="prettyPhoto[gallery1]" title=""><img src="Larger/041_L.jpeg" width="175px" height="130px" alt="" /></a></li>
             <li><a href="Larger/042_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/042_L.jpeg" width="175px" height="130px" alt="" /></a></li>
             <li><a href="Larger/043_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/043_L.jpeg" width="175px" height="130px" alt="" /></a></li>
             <li><a href="Larger/044_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/044_L.jpeg" width="175px" height="130px" alt="" /></a></li>
            <li><a href="Larger/045_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/045_L.jpeg" width="175px" height="130px" alt="" /></a></li>
             <li><a href="Larger/046_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/046_L.jpeg" width="175px" height="130px" alt="" /></a></li>
             <li><a href="Larger/047_L.jpeg" rel="prettyPhoto[gallery1]" title=" "><img src="Larger/047_L.jpeg" width="175px" height="130px" alt="" /></a></li>

            <li><a href="Larger/040_L.jpg" rel="prettyPhoto[gallery1]" title="वेबिनर : नैनो तकनीक मानव जीवन के लिए बनेगी उपयोगी"><img src="Smaller/040_S.jpg" alt="" /></a></li>
             <li><a href="Larger/041_L.jpg" rel="prettyPhoto[gallery1]" title="आर्यभट्ट ज्ञान विवि में शिक्षकों को दी गयी शोध की जानकारी"><img src="Smaller/041_S.jpg" alt="" /></a></li>
            </ul>--%>
            <asp:ObjectDataSource ID="ObjectDataSource_Media" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByLatest" 
                            TypeName="DataSet_ACNN_DBTableAdapters.Table_Media_ResponseTableAdapter">
                        </asp:ObjectDataSource>
                            <asp:HiddenField ID="HiddenField_Folder" runat="server" />
                            <asp:Repeater ID="Repeater2" runat="server"
                            DataSourceID="ObjectDataSource_Media">
                            <ItemTemplate>
                            <ul<>
                            <li><a href="<%# "Larger/" +Eval("Pic_L_path") %>" rel="prettyPhoto[gallery1]" title='<%# Eval("Media_title")%>'><img src="<%# "Larger/" +Eval("Pic_S_path") %>" width="175px" height="130px" alt="" /></a></li>
                            </ul>

                            <%--<div class="col-lg-3 col-md-3 col-3 my-0">
                                     <div class="image3">
                                                <a href="<%# "../" +Eval("ImagePath") %>" data-lightbox="ivrigallery"><img src="<%# "../" +Eval("ImagePath") %>" class="img-fluid" alt="" />
                                           <i style="text-align:center" ><%# Eval("EventDesc")%></i></a>
                                     </div>
                                </div>--%>
                            </ItemTemplate>
                            </asp:Repeater>
          
        

</div>
					    
						
					</div> <!-- .widget-content -->
					
		</div> <!-- /widget -->	
        
    
       
       
           
    </div><!-- end col right-->	
</section>
</div><!-- end row-->
</div> <!-- end container-->
</asp:Content>

