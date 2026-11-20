<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Staff_CNN.aspx.cs" Inherits="Staff_CNN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
      
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
                  EnableModelValidation="True" DataKeyNames="SlNo" GroupItemCount="4">
               <%--</asp:Repeater>--%>
                  
                  
                  
                  
                  <GroupTemplate>
                      <tr ID="itemPlaceholderContainer" runat="server">
                          <td ID="itemPlaceholder" runat="server">
                          </td>
                      </tr>
                  </GroupTemplate>
                  
                  <ItemTemplate>
                      <td runat="server" style="text-align:center;vertical-align: text-top;">
                          
                         <img src='<%# Eval("PhotoPath")%>' alt="Staffs img" class="thumbnail2"> 
                          <br />
                          Name:
                          <asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' />
                          <br />
                          Designation:
                          <asp:Label ID="DesignationLabel" runat="server" 
                              Text='<%# Eval("Designation") %>' />
                          <br />
                          Qualification:
                          <asp:Label ID="QualificationLabel" runat="server" 
                              Text='<%# Eval("Qualification") %>' />
                          <br />
                          BriefNote:
                          <asp:Label ID="BriefNoteLabel" runat="server" Text='<%# Eval("BriefNote") %>' />
                        
                      </td>
                  </ItemTemplate>
                  <LayoutTemplate>
                  
                  
             
                      <table runat="server" style="height:100%">
                          <tr runat="server">
                              <td runat="server">
                                  <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                      <tr ID="groupPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style="">
                              </td>
                          </tr>
                      </table>
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
                  EnableModelValidation="True" DataKeyNames="SlNo" GroupItemCount="4">
               <%--</asp:Repeater>--%>
                  
                  
                  
                  
                  <GroupTemplate>
                      <tr ID="itemPlaceholderContainer" runat="server">
                          <td ID="itemPlaceholder" runat="server">
                          </td>
                      </tr>
                  </GroupTemplate>
                  
                  <ItemTemplate>
                      <td id="Td1" runat="server" style="text-align:center;vertical-align: text-top;">
                          
                         <img src='<%# Eval("PhotoPath")%>' alt="Staffs img" class="thumbnail2"> 
                          <br />
                          Name:
                          <asp:Label ID="StaffNameLabel" runat="server" Text='<%# Eval("StaffName") %>' />
                          <br />
                          Designation:
                          <asp:Label ID="DesignationLabel" runat="server" 
                              Text='<%# Eval("Designation") %>' />
                                          
                          
                      </td>
                  </ItemTemplate>
                  <LayoutTemplate>
                  
                  
             
                      <table id="Table1" runat="server" style="height:100%">
                          <tr id="Tr1" runat="server">
                              <td id="Td2" runat="server">
                                  <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                      <tr ID="groupPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr id="Tr2" runat="server">
                              <td id="Td3" runat="server" style="">
                              </td>
                          </tr>
                      </table>
                  </LayoutTemplate>
                  
              </asp:ListView>

                  
           
            <!-- End our teacher content -->       
            </div>
        </div>
      


    </div>
</asp:Content>

