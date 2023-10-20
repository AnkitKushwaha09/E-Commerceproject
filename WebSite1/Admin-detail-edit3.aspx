<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-detail-edit3.aspx.cs" Inherits="Admin_detail_edit3" %>

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
                         	<div class="col-xl-6 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Company Social Media Icon</h4>
                            </div>
                            <div class="card-body">
								<div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Facebook </label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-brands fa-facebook fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                             <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>   
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Instagram</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-brands fa-instagram fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                              <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>      
                                             </div>
										</div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">WhatsApp</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-brands fa-whatsapp fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                               <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>                          
                                             </div>
										</div></div>
                                              <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Google Maps</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-sharp fa-solid fa-map-location-dot fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                              <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>                   
                                             </div>
										</div></div>
                                        <div class="mb-3 row">
                                            <div class="col-sm-10">
                                            <asp:Button ID="Button" class="btn btn-primary" runat="server" Text="UPDATE" Width="126px" OnClick="Button_Click" />

                                            </div>
                                        </div>
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
								</div>
                            </div>
                        </div>
					</div>

               </div>
    </div>

</asp:Content>

