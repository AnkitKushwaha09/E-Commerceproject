<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user-login-cart.aspx.cs" Inherits="user_login_cart" EnableEventValidation="False" %>

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
	<title></title>
	<!-- FAVICONS ICON -->
<%--	<link rel="shortcut icon" type="image/png" href="images/favicon.png">--%>
	<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    	<div class="page-wraper">
            <asp:HiddenField ID="HiddenField1" runat="server" />


		<!-- Content -->
		<div class="browse-job login-style3">
			<!-- Coming Soon -->
			<div class="bg-img-fix overflow-hidden" style="background:#fff url(images/background/bg6.jpg); height: 100vh;">
				<div class="row gx-0">
					<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12 vh-100 bg-white ">
						<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 653px;" tabindex="0">
							<div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
								<div class="login-form style-2">
									
									
									<div class="card-body">
										<div class="logo-header">
											<a href="index.html" class="logo"><img src="images/logo/logo-full.png" alt="" class="width-230 light-logo"></a>
											<a href="index.html" class="logo"><img src="images/logo/logofull-white.png" alt="" class="width-230 dark-logo"></a>
										</div>
									
										<nav>
											<div class="nav nav-tabs border-bottom-0" id="nav-tab" role="tablist">
												
										<div class="tab-content w-100" id="nav-tabContent">
										  <div class="tab-pane fade show active" id="nav-personal" role="tabpanel" aria-labelledby="nav-personal-tab">
											<form action="https://w3crm.dexignzone.com/xhtml/index.html" class=" dz-form pb-3">
													<h3 class="form-title m-t0">Personal Information</h3>
													<div class="dz-separator-outer m-b5">
														<div class="dz-separator bg-primary style-liner"></div>
													</div>
													<p>Enter your Number and your password. </p>
													<div class="form-group mb-3">
                                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
													</div>
													<div class="form-group mb-3">
                                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
													</div>
													<div class="form-group text-left mb-5 forget-main">
                                                        <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Sign Me In" OnClick="Button2_Click"  />
														<span class="form-check d-inline-block">
															<input type="checkbox" class="form-check-input" id="check1" name="example1">
															<label class="form-check-label" for="check1">Remember me</label>
														</span>
														<button class="nav-link m-auto btn tp-btn-light btn-primary forget-tab " id="nav-forget-tab" data-bs-toggle="tab" data-bs-target="#nav-forget" type="button" role="tab" aria-controls="nav-forget" aria-selected="false">Forget Password ?</button> 	
													</div>
													<div class="dz-social ">
														<h5 class="form-title fs-20">Sign In With</h5>
													</div>
												</form>
												<div class="text-center bottom"> 
                                                    <a href="User-Registration.aspx" class="btn btn-primary button-md btn-block" >Create an account</a>
												</div>
										  </div></div>
										</div>
									</nav>
									</div>
										<div class="card-footer">
											<div class=" bottom-footer clearfix m-t10 m-b20 row text-center">
											<div class="col-lg-12 text-center">
												<span> © Copyright by <span class="heart"></span>
												<a href="javascript:void(0);">DexignZone </a> All rights reserved.</span> 
											</div>
										</div>
									</div>	
											
								</div>
							</div>
							<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">
								<div class="mCSB_draggerContainer">
								<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 0px; display: block; height: 652px; max-height: 643px; top: 0px;">
								<div class="mCSB_dragger_bar" style="line-height: 0px;"></div><div class="mCSB_draggerRail"></div></div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Full Blog Page Contant -->
		</div>
		<!-- Content END-->
	</div>

<!--**********************************
	Scripts
***********************************-->
<!-- Required vendors -->
<script src="vendor/global/global.min.js"></script>
<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="js/deznav-init.js"></script>
 <script src="js/custom.js"></script>
<script src="js/demo.js"></script>
<script src="js/styleSwitcher.js"></script>
    </div>
    </form>
</body>
</html>
