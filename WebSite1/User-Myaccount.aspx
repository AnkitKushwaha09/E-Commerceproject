<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-Myaccount.aspx.cs" Inherits="User_Myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .card1 {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border-radius: 4px;
}
    </style>
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
                        <h1 class="page-title">My Account</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>My Account</span></li>
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
                    <div class="card text-center">
                      <div class="card-header">
                        ******
                      </div>
                      <div class="card-body">
                          <h2 class="card-title">Hello,
                          <asp:Repeater ID="Repeater1" runat="server">
                                                  <ItemTemplate>
                        <%#Eval("firstnm")%>&nbsp;<%#Eval("lastnm")%>
                                </ItemTemplate>
                                         </asp:Repeater></h2>
                        <p class="card-text">From your account dashboard. you can easily check & view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                      </div>
                    </div>
                    <br />
                    <div class="row row-cols-2 row-cols-md-4 g-4">
                      <div class="col">
                         <div class="card1">
                              <a href="User-orders.aspx" class="btn">Your Orders</a>                             
                           </div>
                        </div>
                       <div class="col">
                          <div class="card1">
                              <a href="User-Shop.aspx" class="btn">Buy Again</a>                                                           
                          </div>
                       </div>
                       <div class="col">
                          <div class="card1">
                              <a href="User-account-detail.aspx" class="btn">Your Account</a>                                                           
                          </div>
                        </div>
                        <div class="col">
                           <div class="card1">
                              <a href="User-wishlist.aspx" class="btn">Your Lists</a>                                                           
                          </div>
                       </div>
                     </div>
                    <br />
                     <div class="row row-cols-1 row-cols-md-2 g-4">
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title"><a href="User-orders.aspx" >Your Orders</a></h2>
                            <p class="card-text">You have reached the end of your Orders.....</p>
                                     <div class="table-content table-responsive">
                                <table class="table table-style-2 wishlist-table text-center">
                                    <thead>
                                        <tr>
                                            <th class="text-start">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product</th>
                                            <th>Order Status</th>
                                            <th>Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>  
                                        <asp:Repeater ID="Repeater2" runat="server">
                                                  <ItemTemplate>
                                        <tr>
                                            <td class="product-name text-start wide-column">
                                                    <a href="Userproduct-detail.aspx?id=<%# Eval("productID")%>" class="figure-caption" ><h2><%#Eval("productname") %></h2></a>
                                            </td>
                                            <td class="product-stock">
                                                In Stock
                                            </td>
                                            <td class="product-price">
                                                <span class="product-price-wrapper">
                                                    <span class="money"><%#Eval("productprice")%></span>
                                                </span>
                                            <%--</td>
                                              
                                        </tr>--%>
                                             </ItemTemplate>
                                         </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            
                               <%--<a href="User-Shop.aspx" class="btn btn-size-md btn-shape-square btn-fullwidth" >Your Orders</a>--%>                              
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title"><a href="User-Shop.aspx" >Buy Again</a></h2>
                            <p class="card-text">See What others are reordering on Buy Again.....</p>
                               <a href="User-Shop.aspx" class="btn btn-size-md btn-shape-square btn-fullwidth" >Buy Again</a>    
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title"><a href="User-wishlist.aspx" >Your Lists</a></h2>
                            <p class="card-text">You haven't created any lists.....</p>
                               <a href="User-wishlist.aspx" class="btn btn-size-md btn-shape-square btn-fullwidth" >Your Lists</a>    
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title"><a href="User-account-detail.aspx" >Your Account</a></h2>
                            <p class="card-text">Personal Infermation.....</p>
                               <a href="User-account-detail.aspx" class="btn btn-size-md btn-shape-square btn-fullwidth" >Your Account</a>    
                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                </div>
             </div>
        <!-- Main Content Wrapper End -->
</asp:Content>

