<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-login-panel.aspx.cs" Inherits="Admin_login_panel" EnableEventValidation="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="robots" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="W3crm:Customer Relationship Management Admin Bootstrap 5 Template">
	<meta property="og:title" content="W3crm:Customer Relationship Management Admin Bootstrap 5 Template">
	<meta property="og:description" content="W3crm:Customer Relationship Management Admin Bootstrap 5 Template">
	<meta property="og:image" content="social-image.png">
	<meta name="format-detection" content="telephone=no">
	
	<!-- PAGE TITLE HERE -->
	<title>W3CRM Customer Relationship Management</title>
	
	<!-- FAVICONS ICON -->
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link href="css/style.css" rel="stylesheet">
    <style>
        .align-items-center 
        {
             align-items: center !important;
             margin-top: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<a href="index.html"><img src="images/logo/logo-full.png" alt=""></a>
									</div>
                                    <h4 class="text-center mb-4">Sign up your account</h4>
                                    <form action="https://w3crm.dexignzone.com/xhtml/index.html">
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Username</strong></label>
                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="username" ></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Email</strong></label>
                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="text-center mt-4">
                                            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="Registration" OnClick="Button1_Click" />
                                        </div>
                                    </form>
                                    <div class="new-account mt-3">
                                        <p>Already have an account? <a class="text-primary" href="Admin-login.aspx">Sign in</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!--**********************************
	Scripts
***********************************-->
<!-- Required vendors -->
<script src="vendor/global/global.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/deznav-init.js"></script>
    </div>
    </form>
</body>
</html>
