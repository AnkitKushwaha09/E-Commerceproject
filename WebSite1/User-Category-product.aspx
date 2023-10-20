<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-Category-product.aspx.cs" Inherits="User_Category_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    </br>
    </br>
    </br>
    </br>
    </br>
    <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal></h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span><asp:Literal ID="Literal2" runat="server"></asp:Literal></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
     <div  class="main-content-wrapper">
            <div class="shop-page-wrapper ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="shop-products">
                                <div class="row">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                      <ItemTemplate>
                                    <div class="col-xl-3 col-md-4 col-sm-6 mb--50">
                                        <div class="payne-product">
                                            <div class="product__inner">
                                                <div class="product__image">
                                                    <figure class="product__image--holder">
                                                       <img src="Uploads/<%# Eval("image1")%>" alt="Product" height="250px"/>
                                                    </figure>
                                                         <a href="Userproduct-detail.aspx?id=<%# Eval("id")%>" class="product__overlay"></a>
                                                    <div class="product__action">
                                                    </div>
                                                </div>
                                                <div class="product__info">
                                                    <div class="product__info--left">
                                                        <h3 class="product__title">
                                                         <a href="Userproduct-detail.aspx?id=<%# Eval("id")%>" class="figure-caption" ><h2><%#Eval("name") %></h2></a>
                                                        </h3>
                                                        <div class="product__price">
                                                            <span class="money"><%#Eval("prices")%></span>
                                                            <span class="sign">$</span>
                                                        </div>
                                                    </div>
                                                    <div class="product__info--right">
                                                        <span class="product__rating">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </span>
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
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

