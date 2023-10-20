<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-UserIndex-page.aspx.cs" Inherits="Admin_UserIndex_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title">Manage User Index Page</h5></li>
                    </ol>
			</div>
            <div class="container-fluid">
                 <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Slider-1</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox1"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox2"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Description</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox3" class="form-control h-50" rows="5" runat="server" placeholder="Enter a Description.." TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload1"  class="form-control mb-2 mr-sm-2" placeholder="Upload a Product Images..." runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button1" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Slider-2</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox4"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox5"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Description</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox6" class="form-control h-50" rows="5" runat="server" placeholder="Enter a Description.." TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload2"  class="form-control mb-2 mr-sm-2" runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button2" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button2_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Featured Product Area-1 </h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox7"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox8"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload3"  class="form-control mb-2 mr-sm-2" runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6"></div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button3" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button3_Click1" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Featured Product Area-2</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox9"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox10"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload4"  class="form-control mb-2 mr-sm-2" runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6"></div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button4" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button4_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Countdown Product Area</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Product name</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox11"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Price </label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox12" class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Price..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                     <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Product Tagline </label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox13" class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Tagline..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                     <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Product Countdown Time </label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox14"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Countdown Time..." runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Description</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox15" class="form-control h-50" rows="5" runat="server" placeholder="Enter a Description.." TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div> 
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload5"  class="form-control mb-2 mr-sm-2" runat="server" AllowMultiple="True" />
                                            </div>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                   </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button5" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button5_Click1"/>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Featured Product Area-3</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox16"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox17"  class="form-control mb-2 mr-sm-2" placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Offer</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox18" class="form-control mb-2 mr-sm-2" runat="server" placeholder="Enter a Product Offer.."></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload6"  class="form-control mb-2 mr-sm-2" placeholder="Upload a Product Images..." runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button6" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button6_Click"/>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Featured Product Area-4</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-1</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox19"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Type..." runat="server"></asp:TextBox>
                                        </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Heading-2 (Product name)</label>
                                        <div class="input-group">
                                        <asp:TextBox ID="TextBox20"  class="form-control mb-2 mr-sm-2"  placeholder="Enter a Product Name..." runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6 mb-3">
                                        <label class="form-label">Offer</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBox21" class="form-control mb-2 mr-sm-2" rows="5" runat="server" placeholder="Enter a Product Offer.." ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                        <label class="form-label">Image</label>
                                        <div class="input-group">
                                            <asp:FileUpload ID="FileUpload7"  class="form-control mb-2 mr-sm-2" runat="server" />
                                            </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3 col-xxl-6">
                                         <div class="example">
                                              <asp:Button ID="Button7" class="btn btn-primary mb-2" runat="server" Text="Upload" OnClick="Button7_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
     </asp:Content>

