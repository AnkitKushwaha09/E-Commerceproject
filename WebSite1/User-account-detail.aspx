<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-account-detail.aspx.cs" Inherits="User_account_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
     <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">Change Account Detail</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Change Account Detail</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60">
                <div class="container">
                    <div class="row row-cols-1 row-cols-md-3 g-4">
                      <div class="col">
                        <div class="card h-100">
                          <div class="card-body">
                            <h2 class="card-title">Change Password</h2>
                            <div>   
                            <asp:Label ID="Label1" runat="server" Text="Current password" Width="149px" Font-Bold="True" ForeColor="#996633"></asp:Label>  
                            <asp:TextBox ID="txt_cpassword" runat="server" class="form-control" placeholder="Current Password" TextMode="Password" Height="38px" Width="360px"></asp:TextBox>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cpassword" ErrorMessage="Please enter Current password"></asp:RequiredFieldValidator>  
                            <br />  
                             <asp:Label ID="Label2" runat="server" Text="New password" Width="149px"   
                                Font-Bold="True" ForeColor="#996633"></asp:Label>  
                            <asp:TextBox ID="txt_npassword" runat="server" class="form-control" placeholder="New Password" TextMode="Password" Height="38px" Width="360px"></asp:TextBox>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_npassword" ErrorMessage="Please enter New password"></asp:RequiredFieldValidator>  
                            <br />  
                             <asp:Label ID="Label3" runat="server" Text="Confirm password" Width="148px"   
                                Font-Bold="True" ForeColor="#996633"></asp:Label>  
  
                            <asp:TextBox ID="txt_ccpassword" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password" Height="38px" Width="360px"></asp:TextBox>     
  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_ccpassword" ErrorMessage="Please enter Confirm  password"></asp:RequiredFieldValidator>  
  
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>      
                            </div>  
                            <asp:Button ID="btn_update" runat="server" Font-Bold="True" class="btn mb-2" Text="Update" Width="360px" OnClick="btn_update_Click"/>  
                            <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />  
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card h-100">
                          <div class="card-body">
                            <h2 class="card-title">Edit Detail</h2>
                              <div class="mb-3">
                                <div class="example">
                                  <p class="mb-1" style="color: #996633; font-weight: bold">Name</p>
                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="First Name" runat="server" Height="38px" Width="360px"></asp:TextBox>
                                </div>
							  </div>
						      <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold"></p>
                                   <asp:TextBox ID="TextBox2" class="form-control" placeholder="Last Name" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                              <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold">Phone Number</p>
                                   <asp:TextBox ID="TextBox3" class="form-control" placeholder="Phone Number" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                              <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold">Email Address</p>
                                   <asp:TextBox ID="TextBox4" class="form-control" placeholder="Email Address" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" class="btn mb-2" Text="Update" Width="360px" OnClick="Button2_Click"/>  
                            <asp:Label ID="Label4" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />  
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card h-100">
                          <div class="card-body">
                            <h2 class="card-title">Edit Address</h2>
                                <div class="mb-3">
                                <div class="example">
                                  <p class="mb-1" style="color: #996633; font-weight: bold">Address</p>
                                    <asp:TextBox ID="TextBox5" class="form-control"  placeholder="House number and street name" runat="server" Height="38px" Width="360px"></asp:TextBox>
                                </div>
							  </div>
						      <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold"></p>
                                   <asp:TextBox ID="TextBox6" class="form-control" placeholder="Apartment, suite, unit etc. (optional)" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                              <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold">Landmark</p>
                                   <asp:TextBox ID="TextBox7" class="form-control" placeholder="E.g. near apollo hospital" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                              <div class="mb-3">
                               <div class="example">
								 <p class="mb-1" style="color: #996633; font-weight: bold">Pin Code</p>
                                   <asp:TextBox ID="TextBox8" class="form-control" placeholder="Pin Code" runat="server" Height="38px" Width="360px"></asp:TextBox>
							  </div>
                            </div>
                                <asp:Button ID="Button3" runat="server" Font-Bold="True" class="btn mb-2" Text="Update" Width="360px"/>  
                            <asp:Label ID="Label5" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />  
                          </div>
                        </div>
                      </div>
                    </div>
                 </div>
              </div>
        </div>
</asp:Content>

