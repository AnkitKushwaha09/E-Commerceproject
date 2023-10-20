<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-ContactUS.aspx.cs" Inherits="Admin_ContactUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .d1{
            width: 450px;
            height: auto;
            /*border: 1px solid red;*/
        }
    </style>
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
                                             <h2><asp:Literal ID="Literal1" runat="server" ></asp:Literal>  </h2>    
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Contact Number</label>
                                             <div class="input-group mb-2">
                                                <h2> <asp:Literal ID="Literal2" runat="server"></asp:Literal></h2>   
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Number</label>
                                             <div class="input-group mb-2">
                                                <h2> <asp:Literal ID="Literal3" runat="server"></asp:Literal> </h2>                
                                             </div>
										</div></div>
                                             <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Company Logo</label>
                                             <div class="input-group mb-2">
                                                 <img class="img img-fluid rounded " src="<asp:Literal ID="Literal4" runat="server"></asp:Literal>" height="50px" </img>            
                                             </div>
										</div></div>
                                             <div class="mb-3 row">
                                            <div class="col-sm-10">
                                            <button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal1">Edit</button>
                                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                            </div>
                                        </div>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
					</div>
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
                                              <h2>   <asp:Literal ID="Literal9" runat="server"></asp:Literal></h2>   
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Instagram</label>
                                             <div class="input-group mb-2">
                                               <h2>  <asp:Literal ID="Literal10" runat="server"></asp:Literal>  </h2>                    
                                             </div>
										</div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">WhatsApp</label>
                                             <div class="input-group mb-2">
                                               <h2>  <asp:Literal ID="Literal11" runat="server"></asp:Literal>      </h2>                            
                                             </div>
										</div></div>
                                              <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Google Maps</label>
                                             <div class="input-group mb-2">
                                              <div class="d1"><h2><asp:Literal ID="Literal12" runat="server"></asp:Literal></h2></div>                            
                                             </div>
										</div></div>
                                        <div class="mb-3 row">
                                            <div class="col-sm-10">
										<button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal2">Edit</button>
                                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                            </div>
                                        </div>
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
								</div>
                            </div>
                        </div>
					</div>
              </div>
                          	<div class="col-xl-6 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Company Social Media Link</h4>
                            </div>
                            <div class="card-body">
								<div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Facebook </label>
                                             <div class="input-group mb-2">
                                                <h2> <asp:Literal ID="Literal5" runat="server"></asp:Literal> </h2>                          
                                             </div>
										</div></div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Instagram</label>
                                             <div class="input-group mb-2">
                                               <h2>  <asp:Literal ID="Literal6" runat="server"></asp:Literal>    </h2>            
                                             </div>
										</div>
                                        <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">WhatsApp</label>
                                             <div class="input-group mb-2">
                                                <h2> <asp:Literal ID="Literal7" runat="server"></asp:Literal> </h2>                        
                                             </div>
										</div></div>
                                              <div class="mb-3">
                                             <div class="example">
                                             <label class="col-sm-3 col-form-label">Google Maps</label>
                                             <div class="input-group mb-2">
                                              <div class="d1"><h2><asp:Literal ID="Literal8" runat="server"></asp:Literal></h2></div>                            
                                             </div>
										</div></div>
                                        <div class="mb-3 row">
                                            <div class="col-sm-10">
										<button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal3">Edit</button>
                                                <asp:HiddenField ID="HiddenField3" runat="server" />                                                
                                            </div>
                                        </div>
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
								</div>
                            </div>
                        </div>
					</div>  	
                     </div></div>



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

                       <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
		              <div class="modal-dialog modal-dialog-center">
			            <div class="modal-content">
			              <div class="modal-header">
				            <h1 class="modal-title fs-5" id="exampleModalLabel2">Invite Employee</h1>
				            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			              </div>
			              <div class="modal-body">
					            <div class="row">
						            <div class="col-xl-12">
							            <label class="form-label">Email ID<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
							            <label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                                        <label class="form-label">Email ID<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
							            <label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
						            </div>
					            </div>
					
			      </div>
			      <div class="modal-footer">
				    <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                      <asp:Button ID="Button2" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="Button2_Click"/>
			      </div>
			</div>
		  </div>
		</div>
    
                       <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
		              <div class="modal-dialog modal-dialog-center">
			            <div class="modal-content">
			              <div class="modal-header">
				            <h1 class="modal-title fs-5" id="exampleModalLabel3">Invite Employee</h1>
				            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			              </div>
			              <div class="modal-body">
					            <div class="row">
						            <div class="col-xl-12">
							            <label class="form-label">Email ID<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
							            <label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
                                        <label class="form-label">Email ID<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
							            <label class="form-label mt-3">Employment date<span class="text-danger">*</span></label>
                                        <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
						            </div>
					            </div>
					
			      </div>
			      <div class="modal-footer">
				    <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                      <asp:Button ID="Button3" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="Button3_Click"/>
			      </div>
			</div>
		  </div>
		</div>

</asp:Content>

