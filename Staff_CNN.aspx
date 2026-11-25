<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true"
    CodeFile="Staff_CNN.aspx.cs" Inherits="Staff_CNN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <h1 class="span12">
                Our Team</h1>
            <div class="span12">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
                    <li>About <span class="divider">/</span></li>
                    <li class="active">Our Team</li>
                </ul>
            </div>
        </div>
        <div class="mu-our-teacher-area acnn-head-wrap">
            <div class="mu-title">
                <h2>
                    Team Head</h2>
            </div>
            <a class="acnn-head-card" href="DrRakeshKrSingh.aspx" title="View the full profile of Dr. Rakesh Kr. Singh">
                <span class="orb o1"></span><span class="orb o2"></span><span class="orb o3"></span>
                <span class="acnn-head-photo">
                    <img src="img/DrRakeshSirN.jpg" alt="Dr. Rakesh Kr. Singh" /></span> <span class="acnn-head-info">
                        <span class="acnn-head-role">Head of the Centre</span> <strong class="acnn-head-name">
                            Dr. Rakesh Kr. Singh</strong> <span class="acnn-head-qual">Ph.D. (Nanoscience) &middot;
                                Aryabhatta Knowledge University, Patna</span> <span class="acnn-head-chips"><span>14
                                    Ph.D. &amp; 46 M.Tech students guided</span> <span>Research cited in 50+ countries</span>
                                    <span>200+ conferences organised</span> </span><span class="acnn-head-go">View Full
                                        Profile <i class="icon-arrow-right"></i></span></span>
            </a>
        </div>
        <div>
            <!-- ================= TEACHING & RESEARCH STAFF ================= -->
            <div class="mu-our-teacher-area acnn-teaching-area">
                <div class="mu-title">
                    <h2>
                        Teaching &amp; Research Staff</h2>
                    <p>
                        Meet our distinguished teaching and research faculty</p>
                </div>
                <div class="acnn-staff-grid">
                    <!-- Staff 2 -->
                    <div class="acnn-staff-card">
                        <a href="DrVijayRavi.aspx" title="View profile of Dr. Vijay Kumar Ravi" class="acnn-staff-link"><img src="img/fac6.png" alt="Dr. Vijay Kumar Ravi" class="acnn-staff-photo" /></a>
                        <h3 class="acnn-staff-name">
                            <a href="DrVijayRavi.aspx" class="acnn-staff-link">Dr. Vijay Kumar Ravi</a></h3>
                        <span class="acnn-staff-qual">Ph.D. (Biotechnology)</span> <span class="acnn-staff-role">
                            Teaching Faculty</span>
                    </div>
                    <!-- Staff 3 -->
                    <div class="acnn-staff-card">
                        <img src="img/fac7.png" alt="Dr. Abhay Kr Aman" class="acnn-staff-photo" />
                        <h3 class="acnn-staff-name">
                            Dr. Abhay Kr Aman</h3>
                        <span class="acnn-staff-qual">Ph.D. (Nanoscience and Nanotechnology) </span><span
                            class="acnn-staff-role">Teaching Faculty</span>
                    </div>
                    <!-- Staff 4 -->
                    <div class="acnn-staff-card">
                        <img src="img/fac8.jpg" alt="Dr. Bibhuti Bikramaditya" class="acnn-staff-photo" />
                        <h3 class="acnn-staff-name">
                            Dr. Bibhuti Bikramaditya</h3>
                        <span class="acnn-staff-qual">Ph.D. (Nanoscience and Nanotechnology) </span><span
                            class="acnn-staff-role">Teaching Faculty</span>
                    </div>
                    <!-- Staff 5 -->
                    <div class="acnn-staff-card">
                        <img src="img/TechStaff/Dr_Manisha_Kumari.jpeg" alt="Dr. Manisha Kumari" class="acnn-staff-photo" />
                        <h3 class="acnn-staff-name">
                            Dr. Manisha Kumari</h3>
                        <span class="acnn-staff-qual">Ph.D. (Nanoscience and Nanotechnology) </span><span
                            class="acnn-staff-role">Guest Faculty</span>
                    </div>
                </div>
            </div>
            <!-- ================= END TEACHING & RESEARCH STAFF ================= -->
            <!-- ================= OUR TECHNICAL TEAM ================= -->
            <div class="mu-our-teacher-area">
                <!-- begain title -->
                <div class="mu-title">
                    <h2>
                        Our Technical Team</h2>
                </div>
                <!-- end title -->
                <!-- begain our teacher content -->
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByActiveDesc"
                    TypeName="DataSet_ACNN_DBTableAdapters.Table_StaffTableAdapter" InsertMethod="Insert"
                    UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_Slno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Qualification" Type="String" />
                        <asp:Parameter Name="BriefNote" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="ContactNo" Type="String" />
                        <asp:Parameter Name="PhotoPath" Type="String" />
                        <asp:Parameter Name="Active" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Qualification" Type="String" />
                        <asp:Parameter Name="BriefNote" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="ContactNo" Type="String" />
                        <asp:Parameter Name="PhotoPath" Type="String" />
                        <asp:Parameter Name="Active" Type="Boolean" />
                        <asp:Parameter Name="Original_SlNo" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True"
                    DataKeyNames="SlNo">
                    <EmptyDataTemplate>
                        <p class="acnn-staff-empty">
                            Details will be updated soon.</p>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="acnn-staff-card">
                            <img src='<%# Eval("PhotoPath")%>' alt='<%# Eval("StaffName") %>' class="acnn-staff-photo" />
                            <h3 class="acnn-staff-name">
                                <asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' /></h3>
                            <asp:Label ID="DesignationLabel" runat="server" CssClass="acnn-staff-role" Text='<%# Eval("Designation") %>' />
                            <asp:Label ID="QualificationLabel" runat="server" CssClass="acnn-staff-qual" Text='<%# Eval("Qualification") %>' />
                            <asp:Label ID="BriefNoteLabel" runat="server" CssClass="acnn-staff-note" Text='<%# Eval("BriefNote") %>' />
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div class="acnn-staff-grid">
                            <div id="itemPlaceholder" runat="server">
                            </div>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <!-- End our teacher content -->
            </div>
        </div>
        <div>
            <div class="mu-our-teacher-area">
                <!-- begain title -->
                <div class="mu-title">
                    <h2>
                        Our Support Team</h2>
                </div>
                <!-- end title -->
                <!-- begain our teacher content -->
                <asp:ObjectDataSource ID="ObjectDataSource_supportStaff" runat="server" DeleteMethod="Delete"
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSet_ACNN_DBTableAdapters.Table_Staff_SupportTableAdapter"
                    InsertMethod="Insert" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_Slno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="PhotoPath" Type="String" />
                        <asp:Parameter Name="Active" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="PhotoPath" Type="String" />
                        <asp:Parameter Name="Active" Type="Boolean" />
                        <asp:Parameter Name="Original_SlNo" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ListView ID="ListView2" runat="server" DataSourceID="ObjectDataSource_supportStaff"
                    EnableModelValidation="True" DataKeyNames="SlNo">
                    <EmptyDataTemplate>
                        <p class="acnn-staff-empty">
                            Details will be updated soon.</p>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="acnn-staff-card">
                            <img src='<%# Eval("PhotoPath")%>' alt='<%# Eval("StaffName") %>' class="acnn-staff-photo" />
                            <h3 class="acnn-staff-name">
                                <asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' /></h3>
                            <asp:Label ID="DesignationLabel" runat="server" CssClass="acnn-staff-role" Text='<%# Eval("Designation") %>' />
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div class="acnn-staff-grid">
                            <div id="itemPlaceholder" runat="server">
                            </div>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <!-- End our teacher content -->
            </div>
        </div>
    </div>
</asp:Content>
