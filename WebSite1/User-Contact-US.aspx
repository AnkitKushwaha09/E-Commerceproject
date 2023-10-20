<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="User-Contact-US.aspx.cs" Inherits="User_Contact_US" %>

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
                        <h1 class="page-title">Contact Us</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Contact Us</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <div class="page-content-inner pt--75 pt-md--55">
                <!-- Contact Area Start -->
                <section class="contact-area mb--75 mb-md--55">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-5 mb-sm--30">
                                <div class="heading mb--32">
                                    <h2>Get In Touch</h2>
                                    <hr class="delimeter">
                                </div>
                                <div class="contact-info mb--20">
                                    <p>
                                        <i class="fa fa-map-marker"></i>
                                        <span><asp:Literal ID="Literal10" runat="server"></asp:Literal></span>
                                    </p>
                                    <p>
                                        <i class="fa fa-phone"></i>
                                        <span><asp:Literal ID="Literal11" runat="server"></asp:Literal></span>
                                    </p>
                                    <p>
                                        <i class="fa fa-fax"></i> 
                                        <span><asp:Literal ID="Literal12" runat="server"></asp:Literal></span>
                                    </p>
                                </div>
                                <div class="social social-rounded space-10">
                                    <a href='<asp:Literal ID="Literal6" runat="server"></asp:Literal>' target="_blank" rel="noopener noreferrer" class="social__link">
                                <i class='<asp:Literal ID="Literal2" runat="server"></asp:Literal>'></i>
                            </a>
                            <a href='<asp:Literal ID="Literal7" runat="server"></asp:Literal>' target="_blank" rel="noopener noreferrer" class="social__link">
                                <i class='<asp:Literal ID="Literal3" runat="server"></asp:Literal>'></i>
                            </a>
                            <a href='<asp:Literal ID="Literal8" runat="server"></asp:Literal>' target="_blank" rel="noopener noreferrer" class="social__link">
                                <i class='<asp:Literal ID="Literal4" runat="server"></asp:Literal>'></i>
                            </a>
                            <a href='<asp:Literal ID="Literal9" runat="server"></asp:Literal>' target="_blank" rel="noopener noreferrer" class="social__link">
                                <i class='<asp:Literal ID="Literal5" runat="server"></asp:Literal>'></i>
                            </a>
                                </div>
                            </div>
                            <div class="col-md-7 offset-lg-1">
                                <div class="heading mb--40">
                                    <h2>Contact Us</h2>
                                    <hr class="delimeter">
                                </div>
                                <form action="https://htmldemo.net/payne/payne/mail.php" class="form" id="contact-form">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form__input mb--30" placeholder="Email*"></asp:TextBox>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form__input mb--30" placeholder="Name*"></asp:TextBox>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form__input form__input--textarea mb--30" placeholder="Message"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="Send Request" class="btn btn-shape-round form__submit" OnClick="Button1_Click"></asp:Button>
                                    <div class="form__output"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Contact Area End -->
             
                <!-- Google Map Area Start -->
                <div class="google-map-area">
                    <div id="google-map"><iframe src='<asp:Literal ID="Literal13" runat="server"></asp:Literal>' width="1350px" height="350px" ></iframe></div>
                 </div>
                <!-- Google Map Area End -->
            </div>
        </main>
        <!-- Main Content Wrapper End -->

</asp:Content>

