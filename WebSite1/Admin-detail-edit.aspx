<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-detail-edit.aspx.cs" Inherits="Admin_detail_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title">Company Details Uploads</h5></li>
                    </ol>
			</div>
                     <div class="container-fluid">
                         <div class="row">
                            	<div class="col-xl-6 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                            <h4 class="card-title">Company Details</h4>
                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                       <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Address </label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa fa-map-marker fa-2x"></i></div>
                                             <asp:TextBox ID="TextBox1" class="form-control" placeholder="Company Address" runat="server"></asp:TextBox>
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Contact Number</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa fa-phone fa-2x"></i></div>
                                             <asp:TextBox ID="TextBox2" class="form-control" placeholder="Contact Number" runat="server" TextMode="Phone"></asp:TextBox>
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Number</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"> <i class="fa fa-fax fa-2x"></i></div>
                                             <asp:TextBox ID="TextBox3" class="form-control" placeholder="Company Number" runat="server" TextMode="Phone"></asp:TextBox>
                                             </div>
										</div></div>
                                             <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Logo</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-solid fa-image fa-2x"></i></div>
                                             <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" placeholder="Company Logo"/>
                                             </div>
										</div></div>
                                             <div class="mb-3 row">
                                            <div class="col-sm-10">
                                                <asp:Button ID="Button1" runat="server" Text="UPDETE" class="btn btn-primary" OnClick="Button1_Click" />
									</div>
                                    </div>
                                        </div>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
					</div></div></div></div>
</asp:Content>

