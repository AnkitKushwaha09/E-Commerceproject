<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-changepassword.aspx.cs" Inherits="Admin_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title">Change Password</h5></li>
                    </ol>
			</div>
          <div class="container-fluid">
               <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                        <div class="col-md-4">
                            <div class="form-group has-success">
                     <div>   
                       <asp:Label ID="Label1" runat="server" Text="Current password" Width="149px" Font-Bold="True" ForeColor="#996633"></asp:Label>  
                        <asp:TextBox ID="txt_cpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cpassword" ErrorMessage="Please enter Current password"></asp:RequiredFieldValidator>  
                        <br />  
                         <asp:Label ID="Label2" runat="server" Text="New password" Width="149px"   
                            Font-Bold="True" ForeColor="#996633"></asp:Label>  
                        <asp:TextBox ID="txt_npassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_npassword" ErrorMessage="Please enter New password"></asp:RequiredFieldValidator>  
                        <br />  
          
                         <asp:Label ID="Label3" runat="server" Text="Confirm password" Width="148px"   
                            Font-Bold="True" ForeColor="#996633"></asp:Label>  
  
                        <asp:TextBox ID="txt_ccpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>     
  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_ccpassword" ErrorMessage="Please enter Confirm  password"></asp:RequiredFieldValidator>  
  
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>      
                        </div>  
                        <asp:Button ID="btn_update" runat="server" Font-Bold="True" class="btn btn-primary mb-2" Text="Update" Width="350px" OnClick="btn_update_Click"/>  
                        <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />  
    
                       <div class="col-md-4"></div>
                         </div>
                    </div>
                </div>
</div></div></div>
              </div>
         

     </div>
</asp:Content>

