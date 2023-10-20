<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminProduct-list.aspx.cs" Inherits="AdminProduct_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-body">
			<div class="page-titles">
					<ol class="breadcrumb">
                        <li><h5 class="bc-title">Product</h5></li>
					</ol>
                </div>
            <div class="container-fluid mh-auto">
				
                <div class="row">

                      <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <div class="col-xl-2 col-md-4 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="new-arrival-product">
                                    <div class="new-arrivals-img-contnent">
                                        <img src="Uploads/<%# Eval("image1")%>" width="240px" height="180px" />
                                        
                                    </div>
                                  <div class="new-arrival-content text-center mt-3">
                                      <a href="Adminproduct-detail.aspx?id=<%# Eval("id")%>" class="figure-caption" ><h2><%#Eval("name") %></h2></a>
                                      
                                       <ul class="star-rating">
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa-solid fa-star-half-stroke"></i></li>
                                            <li><i class="fa-solid fa-star-half-stroke"></i></li>
                                        </ul><span class="price"><%#Eval("prices")%>.00$</span>
                                      </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     </ItemTemplate>
            </asp:Repeater>
                    </div>
                </div>
         </div>
</asp:Content>

