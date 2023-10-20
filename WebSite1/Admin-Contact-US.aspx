<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-Contact-US.aspx.cs" Inherits="Admin_Contact_US" %>

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
                                             <div class="input-group-text"><i class="fa fa-map-marker fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                                <h2> <asp:Literal ID="Literal1" runat="server"></asp:Literal></h2>
                                             <%--<asp:TextBox ID="TextBox1" class="form-control" placeholder="Company Address" runat="server"></asp:TextBox>--%>
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Contact Number</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa fa-phone fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                                 <h2><asp:Literal ID="Literal2" runat="server"></asp:Literal></h2>
                                             <%--<asp:TextBox ID="TextBox2" class="form-control" placeholder="Contact Number" runat="server" TextMode="Phone"></asp:TextBox>--%>
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Number</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"> <i class="fa fa-fax fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                                 <h2><asp:Literal ID="Literal3" runat="server"></asp:Literal></h2>
                                             <%--<asp:TextBox ID="TextBox3" class="form-control" placeholder="Company Number" runat="server" TextMode="Phone"></asp:TextBox>--%>
                                             </div>
										</div></div>
                                             <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Logo</label>
                                             <div class="input-group mb-2">
                                             <div class="input-group-text"><i class="fa-solid fa-image fa-2x"></i></div>&nbsp;&nbsp;&nbsp;
                                                <h2> <asp:Literal ID="Literal4" runat="server"></asp:Literal></h2>
                                             <%--<img class="img img-fluid rounded " src="<asp:Literal ID="Literal4" runat="server"></asp:Literal>" </img>--%>
                                             <%--<asp:FileUpload ID="FileUpload1" runat="server" class="form-control" placeholder="Company Logo"/>--%>
                                             </div>
										</div></div>
                                             <div class="mb-3 row">
                                            <div class="col-sm-10">
                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                                <div>
										<button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal1">Edit
										</button>
									</div>
                                    </div>
                                        </div>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
					</div></div></div></div>

    	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-center">
			<div class="modal-content">
			  <div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel1">Invite Employee</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			  </div>
			  <div class="modal-body">
					<div class="row">
						<div class="col-xl-12">
							<label class="form-label">Email ID<span class="text-danger">*</span></label>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
							<label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                            <label class="form-label">Email ID<span class="text-danger">*</span></label>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
							<label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>						
						</div>
					</div>
					
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                  <asp:Button ID="Button1" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="Button1_Click"/>
			  </div>
			</div>
		  </div>
		</div>
</asp:Content>

