<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="False" AutoEventWireup="true" CodeFile="Admin-product-uploads.aspx.cs" Inherits="Admin_product_uploads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title">Product Uploads</h5></li>
                    </ol>
			</div>
          <div class="container-fluid">

                 <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Product Detail</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-validation">
                                    <form class="needs-validation" novalidate >
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Product Name
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox1"  class="form-control" placeholder="Enter a Product Name.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a username.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Mini Description
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6"> 
                                                        <asp:TextBox ID="TextBox2"  class="form-control h-50" rows="5" runat="server" placeholder="Enter a Description.." TextMode="MultiLine"   ></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a Description.
														</div>
                                                    </div>
                                                </div>
                                                   <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Full Description
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6"> 
                                                        <asp:TextBox ID="TextBox10"  class="form-control h-50" rows="15" runat="server" placeholder="Enter a Description.." TextMode="MultiLine"   ></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a Description.
														</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Prices
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox3" class="form-control" placeholder="Enter a Prices $.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please select a one.
														</div>
                                                    </div>
                                                </div>   <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Weight
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox7" class="form-control" placeholder="Enter a Weight 00 kg.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please select a one.
														</div>
                                                    </div>
                                                </div>   <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Dimensions
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox8" class="form-control" placeholder="Enter a Dimensions 00×00×00 cm.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please select a one.
														</div>
                                                    </div>
                                                </div>   <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Color
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox9" class="form-control" placeholder="Enter a Color Black,Gray,Red,Violet,Yellow.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please select a one.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label" >Size
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox4" class="form-control" placeholder="Enter a Size Number.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a Currency.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label">Quantity
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:TextBox ID="TextBox5" class="form-control" placeholder="Enter a Quantity Number.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a url.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label">Category
                                                        <span class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></p>
                                                        <asp:TextBox ID="TextBox6" class="form-control" placeholder="Enter a Category Name.." runat="server"></asp:TextBox>
														<div class="invalid-feedback">
															Please enter a phone no.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <label class="col-lg-4 col-form-label">Image <span
                                                            class="text-danger"></span>
                                                    </label>
                                                    <div class="col-lg-6">
                                                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
														<div class="invalid-feedback">
															Please enter a digits.
														</div>
                                                    </div>
                                                </div>
                                                <div class="mb-3 row">
                                                    <div class="col-lg-8 ms-auto">
                                                        <asp:Button ID="Button" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
         </div>
</asp:Content>

