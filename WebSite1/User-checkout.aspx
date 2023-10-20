<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-checkout.aspx.cs" Inherits="User_checkout" EnableEventValidation="False" %>

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
                        <h1 class="page-title">Checkout</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Checkout</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
 
        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--80 pt-md--60 pb--72 pb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- User Action Start -->
                        <%--    <div class="user-actions user-actions__coupon">
                                <div class="message-box mb--30">
                                    <p><i class="fa fa-exclamation-circle"></i> Have A Coupon? <a class="expand-btn" href="#coupon_info"> Click Here To Enter Your Code.</a></p>
                                </div>
                                <div id="coupon_info" class="user-actions__form hide-in-default">
                                    <form action="#" class="form">
                                        <p>If you have a coupon code, please apply it below.</p>
                                        <div class="form__group d-sm-flex">
                                            <input type="text" name="coupon" id="coupon" class="form__input mr--20 mr-xs--0" placeholder="Coupon Code">
                                            <button type="submit" class="btn btn-size-sm">Apply Coupon</button>
                                        </div>
                                    </form>
                                </div>
                            </div>--%>
                            <!-- User Action End -->
                        </div>
                    </div> 
                    <div class="row">
                        <!-- Checkout Area Start -->  
                        <div class="col-lg-6">
                            <div class="checkout-title mt--10">
                                <h2>Billing Details</h2>
                            </div>
                            <div class="checkout-form">
                                <form action="#" class="form form--checkout">
                                    <div class="row mb--20">
                                        <div class="form__group col-md-6 mb-sm--30">
                                            <label for="billing_fname" class="form__label">First Name  <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox1" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                        <div class="form__group col-md-6">
                                            <label for="billing_lname" class="form__label">Last Name  <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox2" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_streetAddress" class="form__label">Street Address <span class="required">*</span></label>
                                            
                                            <asp:TextBox ID="TextBox10" runat="server" class="form__input mb--30" placeholder="House number and street name"></asp:TextBox>

                                            <asp:TextBox ID="TextBox3" runat="server" class="form__input" placeholder="Apartment, suite, unit etc. (optional)"></asp:TextBox>
                                        </div>
                                    </div>
                                            <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_company" class="form__label">Landmark</label>
                                            <asp:TextBox ID="TextBox4" runat="server" class="form__input" placeholder="E.g. near apollo hospital"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_company" class="form__label">PinCode</label>
                                            <asp:TextBox ID="TextBox5" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                            </div>
                                    <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_city" class="form__label">Town / City <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox6" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_state" class="form__label">State / County <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox7" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_phone" class="form__label">Phone <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox8" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_email" class="form__label">Email Address  <span class="required">*</span></label>
                                            <asp:TextBox ID="TextBox9" runat="server" class="form__input"></asp:TextBox>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md--40">
                            <div class="order-details">
                                <div class="checkout-title mt--10">
                                    <h2>Your Order</h2>
                                </div>
                                <div class="table-content table-responsive mb--30">
                                    <table class="table order-table order-table-2">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th class="text-end">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal></th>
                                                <td class="text-end"><asp:Literal ID="Literal2" runat="server"></asp:Literal></td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td class="text-end"><asp:Literal ID="Literal3" runat="server"></asp:Literal></td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>Shipping</th>
                                                <td class="text-end">
                                                    <span>Flat Rate; $00.00</span>
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Order Total</th>
                                                <td class="text-end"><span class="order-total-ammount"><asp:Literal ID="Literal4" runat="server"></asp:Literal></span></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                    <div class="form-check form-switch">
                                      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                                      <label class="form-check-label" for="flexSwitchCheckChecked"> CASH ON DELIVERY</label>
                                        <p>Pay with cash upon delivery.</p>
                                    </div>
                                    <div class="form-check form-switch">
                                      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDisabled" disabled>
                                      <label class="form-check-label" for="flexSwitchCheckDisabled">CHEQUE PAYMENTS</label>
                                    </div>
                                    <div class="form-check form-switch">
                                      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckCheckedDisabled" disabled>
                                      <label class="form-check-label" for="flexSwitchCheckCheckedDisabled"> DIRECT BANK TRANSFER</label>
                                    </div>
                                <br />
                                 <asp:Button ID="Button1" runat="server" class="btn btn-size-md btn-fullwidth" Text="Place Order" OnClick="Button1_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <!-- Checkout Area End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

</asp:Content>

