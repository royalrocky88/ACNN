<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Staff_CNN.aspx.cs" Inherits="Staff_CNN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
	<h1 class="span12">Our Team</h1>
	<div class="span12">
		<ul class="breadcrumb">
			<li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
			<li class="active">Our Team</li>
		</ul>
	</div>
</div>
       <div>
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
              <h2>Our Technical Team</h2>
              
            </div>
            <!-- end title -->
            <!-- begain our teacher content -->
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
                  SelectMethod="GetDataByActiveDesc" 
                  TypeName="DataSet_ACNN_DBTableAdapters.Table_StaffTableAdapter" 
                  InsertMethod="Insert" UpdateMethod="Update">
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
              <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" 
                  EnableModelValidation="True" DataKeyNames="SlNo">
                  <EmptyDataTemplate>
                      <p class="acnn-staff-empty">Details will be updated soon.</p>
                  </EmptyDataTemplate>
                  <ItemTemplate>
                      <div class="acnn-staff-card">
                          <img src='<%# Eval("PhotoPath")%>' alt='<%# Eval("StaffName") %>' class="acnn-staff-photo" />
                          <h3 class="acnn-staff-name"><asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' /></h3>
                          <asp:Label ID="DesignationLabel" runat="server" CssClass="acnn-staff-role" Text='<%# Eval("Designation") %>' />
                          <asp:Label ID="QualificationLabel" runat="server" CssClass="acnn-staff-qual" Text='<%# Eval("Qualification") %>' />
                          <asp:Label ID="BriefNoteLabel" runat="server" CssClass="acnn-staff-note" Text='<%# Eval("BriefNote") %>' />
                      </div>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <div class="acnn-staff-grid">
                          <div id="itemPlaceholder" runat="server"></div>
                      </div>
                  </LayoutTemplate>
              </asp:ListView>
            <!-- End our teacher content -->    
            
                
          </div>
        </div>
     


      
       <div >
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
              <h2>Our Support Team</h2>
              
            </div>
            <!-- end title -->
            <!-- begain our teacher content -->
            <asp:ObjectDataSource ID="ObjectDataSource_supportStaff" runat="server" 
                  DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
                  SelectMethod="GetData" 
                  TypeName="DataSet_ACNN_DBTableAdapters.Table_Staff_SupportTableAdapter" 
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
                      <p class="acnn-staff-empty">Details will be updated soon.</p>
                  </EmptyDataTemplate>
                  <ItemTemplate>
                      <div class="acnn-staff-card">
                          <img src='<%# Eval("PhotoPath")%>' alt='<%# Eval("StaffName") %>' class="acnn-staff-photo" />
                          <h3 class="acnn-staff-name"><asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' /></h3>
                          <asp:Label ID="DesignationLabel" runat="server" CssClass="acnn-staff-role" Text='<%# Eval("Designation") %>' />
                      </div>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <div class="acnn-staff-grid">
                          <div id="itemPlaceholder" runat="server"></div>
                      </div>
                  </LayoutTemplate>
              </asp:ListView>

                  
           
            <!-- End our teacher content -->       
            </div>
        </div>
      


    </div>
</asp:Content>

