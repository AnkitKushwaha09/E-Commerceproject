<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-orders.aspx.cs" Inherits="User_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
         <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">Wishlist</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Wishlist</span></li>
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
                     <div class="row">
                        <div class="col-12">
                            <div class="table-content table-responsive">
                                <table class="table table-style-2 wishlist-table text-center">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th class="text-start">Product</th>
                                            <th>Stock Status</th>
                                            <th>Total Price</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>  
                                        <asp:Repeater ID="Repeater1" runat="server">
                                                  <ItemTemplate>
                                        <tr>
                                            
                                            <td></td>
                                            <td class="product-name text-start wide-column">
                                                    <a href="Userproduct-detail.aspx?id=<%# Eval("productID")%>" class="figure-caption" ><h2><%#Eval("productname") %></h2></a>
                                            </td>
                                            <td class="product-stock">
                                                In Stock
                                            </td>
                                            <td class="product-price">
                                                <span class="product-price-wrapper">
                                                    <span class="money"><%#Eval("prices")%></span>
                                                </span>
                                            </td>
                                            <td class="product-action-btn">
                                                <a href="User-Cart2.aspx?id=<%# Eval("orderID")%>" class="btn">Order Cancel</a>
                                            </td>  
                                        </tr>
                                             </ItemTemplate>
                                         </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
</asp:Content>

