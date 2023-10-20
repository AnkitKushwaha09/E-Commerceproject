<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-Cart2.aspx.cs" Inherits="User_Cart2" EnableEventValidation="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
         function CalculateTotals() {
             var gv = document.getElementById("<%= myGridView.ClientID %>");
            var rows = gv.getElementsByTagName("tr");
            var grandTotal = 0;
            for (var i = 0; i < rows.length; i++) {
                var tds = rows[i].getElementsByTagName("td");
                if (rows[i].getElementsByTagName("td").length > 0) {
                    var price = rows[i].getElementsByTagName("span")[2].innerHTML;
                    var quantity = rows[i].getElementsByTagName("input")[0].value;
                    var total = parseFloat(price) * parseFloat(quantity);
                    rows[i].getElementsByTagName("span")[3].innerHTML = isNaN(total) ? 0 : total;
                    grandTotal += isNaN(total) ? 0 : total;
                }
            }
            document.getElementById("<%=lblSumTotal.ClientID%>").innerHTML = grandTotal;
            document.getElementById("<%= lblSumaTotal.ClientID %>").innerHTML = grandTotal;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="wrapper">
     <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">Cart</h1>
                        <ul class="breadcrumb">
                            <li><a href="User-index.aspx">Home</a></li>
                            <li class="current"><span>Cart</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 pt-md--40 pb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mb-md--50">
                            <form class="cart-form" action="#">
                                <div class="row g-0">
                                    <div class="col-12">
                                        <div class="table-content table-responsive">
                                           <asp:GridView ID="myGridView" runat="server" AutoGenerateColumns="False" Height="202px" Width="780px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Delete">
                                                        <ItemTemplate>
                                                            <asp:Label ID="delete" runat="server"><a href="User-cart-delete.aspx?id=<%# Eval("productname")%>" <i class="flaticon-cross"></i></a></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Width="10px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ProductName">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblProductID" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Height="60px" Width="60px"  />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ProductImages">
                                                        <ItemTemplate>
                                                            <img src="Uploads/<%# Eval("productimg")%>" width="100px" height="80px" />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Height="80px" Width="100px"  />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Price">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("prices") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Width="49px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Quantity">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtQty" runat="server" onkeyup="CalculateTotals();" ToolTip="Please Enter Quantity" TextMode="Number"></asp:TextBox>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="69px" />
                                                        <FooterStyle Width="69px" />
                                                        <HeaderStyle HorizontalAlign="Left" Width="69px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Total">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>
                                    </div>
                                </div>
                                </div>
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                <asp:HiddenField ID="HiddenField3" runat="server" />
                                <asp:HiddenField ID="HiddenField4" runat="server" />
                                        <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>                  
                                <div class="row g-0 border-top pt--20 mt--20">
                                    <div class="col-sm-6">
                                        <div class="coupon">
                                            <input type="text" id="coupon" name="coupon" class="cart-form__input" placeholder="Coupon Code">
                                            <asp:Button ID="Button1" runat="server" class="cart-form__btn" Text="Apply Coupon" />
                                        </div>
                                    </div>
                                    <div class="col-sm-6 text-sm-end">
                                        <a href="User-all-cartproduct-delete.aspx?id=<asp:Literal ID="Literal1" runat="server"></asp:Literal>" class="cart-form__btn">Clear Cart </a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="User-index.aspx" class="cart-form__btn">Update Cart</a>
                                        <br />
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-4">
                            <div class="cart-collaterals">
                                <div class="cart-totals">
                                    <h5 class="font-size-14 font-bold mb--15">Cart totals</h5>
                                    <div class="cart-calculator">
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>Subtotal</span>
                                            </div>
                                            <div class="cart-calculator__item--value">

<%-------------------------------------------%>

                                                <asp:Label ID="lblSumTotal" runat="server"></asp:Label>



                                            </div>
                                        </div>
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>Shipping</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>Flat rate: $00.00</span>
                                                <div class="shipping-calculator-wrap">
                                                    <a href="#shipping_calculator" class="expand-btn">Calculate Shipping</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item order-total">
                                            <div class="cart-calculator__item--head">
                                                <span>Total</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span class="product-price-wrapper">
                                                    <asp:Label ID="lblSumaTotal" runat="server" Text="$">$</asp:Label>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:Button ID="Button2"  class="btn btn-size-md btn-shape-square btn-fullwidth" runat="server" Text="Proceed To Checkout" OnClick="Button2_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->
        </div>

</asp:Content>

