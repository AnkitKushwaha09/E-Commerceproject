<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AdminCategory.aspx.cs" Inherits="AdminCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title">Category</h5></li>
                    </ol>
			</div>
          <div class="container-fluid">
         
                   <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Main Category</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-xl-4 col-lg-6 mb-3">
                                        <div class="example">
                                            <p class="mb-1">Category Name</p>
                                              <asp:TextBox ID="TextBox1" class="form-control mb-2 mr-sm-2" placeholder="Category Name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-6 mb-3">
                                        <div class="example">
                                            <p class="mb-1">Image</p>
                                            <asp:FileUpload ID="Fileupload1" runat="server" CssClass="login_input2" />
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-6 mb-3"></br>
                                        <div class="example">
                                              <asp:Button ID="Button1" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button1_Click" />
                                        </div>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                               <div class="col-xl-6 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Sub Category</h5>
								</div>
								<div class="card-body">
									
										<div class="mb-3">
                                             <div class="example">
                                              <p class="mb-1">Main ID
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px"></asp:DropDownList></p>
                                              <asp:TextBox ID="TextBox2" class="form-control" placeholder="Main ID" runat="server"></asp:TextBox>
                                                 </div>
										</div>
										<div class="mb-3">
                                             <div class="example">
                                              <p class="mb-1">Category Name</p>
                                             <asp:TextBox ID="TextBox3" class="form-control" placeholder="Category Name" runat="server"></asp:TextBox>
                                             </div>
										</div>
										<div class="mb-3">
                                             <div class="example">
											<p class="mb-1">Image</p>
                                            <asp:FileUpload ID="Fileupload2" runat="server" CssClass="login_input2" />
										</div>
                                            </div>
                                        <div class="mb-3">
										 <div class="example">
										 <asp:Button ID="Button2" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button2_Click" />
									</div>
                                            </div>
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
								</div>
							</div>
						</div>
                            </div>
                    
       



</asp:Content>

