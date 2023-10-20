<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Adminproduct-detail.aspx.cs" Inherits="Adminproduct_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .img-fluid {
    max-width: 100%;
    height: 300px;
    width: 500px
}
    </style>
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

                     <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-6 col-md-6">
                                        <!-- Tab panes -->
                                        <div class="tab-content" id="myTabContent">
										  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal11" runat="server"></asp:Literal>" width="250px" height="260px"</img>
										  </div>
										  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal12" runat="server"></asp:Literal>" width="250px" height="260px"</img>
										  </div>
										  <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal13" runat="server"></asp:Literal>" width="250px" height="260px"</img>
										  </div>
										  <div class="tab-pane fade" id="end-tab-pane" role="tabpanel" aria-labelledby="end-tab" tabindex="0">
                                              <img class="img img-fluid rounded  " src="Uploads/<asp:Literal ID="Literal14" runat="server"></asp:Literal>" width="250px" height="260px"</img>
										  </div>
										  
										</div>
                                        <div class="tab-slide-content new-arrival-product mb-4 mb-xl-0">
                                            <!-- Nav tabs -->
                                            <ul class="nav nav-tabs slide-item-list mt-3" id="myTab" role="tablist">
												  <li class="nav-item" role="presentation">
													<a href="#first" class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane"  role="tab" aria-controls="home-tab-pane" aria-selected="true">
                                                      <img src="Uploads/<asp:Literal ID="Literal7" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
												  </li>
												  <li class="nav-item" role="presentation">
													<a href="#second" class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane"  role="tab" aria-controls="profile-tab-pane" aria-selected="false">
                                                       <img src="Uploads/<asp:Literal ID="Literal8" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
												  </li>
												  <li class="nav-item" role="presentation">
													<a href="#third" class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" role="tab" aria-controls="contact-tab-pane" aria-selected="false">
                                                        <img src="Uploads/<asp:Literal ID="Literal9" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
												  </li>
												  <li class="nav-item" role="presentation">
													<a href="#for" class="nav-link" id="end-tab" data-bs-toggle="tab" data-bs-target="#end-tab-pane"  role="tab" aria-controls="end-tab-pane" aria-selected="false">
                                                        <img src="Uploads/<asp:Literal ID="Literal10" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
												  </li>
										 
											</ul>
                                        </div>
                                    </div>
                                    <!--Tab slider End-->
                                    <div class="col-xl-9 col-lg-6 col-md-6 col-sm-12">
                                        <div class="product-detail-content">
                                            <!--Product details-->
                                            <div class="new-arrival-content pr">
                                               <h1> <asp:Literal ID="Literal1" runat="server"></asp:Literal></h1>
                                                <div class="comment-review star-rating d-flex">
													<ul>
														<li><i class="fa fa-star"></i></li>
														<li><i class="fa fa-star"></i></li>
														<li><i class="fa fa-star"></i></li>
														<li><i class="fa fa-star"></i></li>
														<li><i class="fa fa-star"></i></li>
													</ul>
													<span class="review-text ms-3">(34 reviews) / </span><a class="product-review" href="#"  data-bs-toggle="modal" data-bs-target="#reviewModal">Write a review?</a>
												</div>
												<div class="d-table mb-2">
													<p class="price float-start d-block"><asp:Literal ID="Literal3" runat="server"></asp:Literal></p>
                                                </div>
                                                <p>Stock: <span class="item"> <asp:Literal ID="Literal5" runat="server"></asp:Literal> <i
                                                            class="fa fa-shopping-basket"></i></span>
                                                </p>
                                                <p>Product code: <span class="item">0405689</span> </p>
                                                <p>category: <span class="item">
                                                    <asp:Literal ID="Literal6" runat="server"></asp:Literal></span></p>
                                                <p>Product tags:&nbsp;&nbsp;
                                                    <span class="badge badge-success light">bags</span>
                                                    <span class="badge badge-success light">clothes</span>
                                                    <span class="badge badge-success light">shoes</span>
                                                    <span class="badge badge-success light">dresses</span>
                                                </p>
                                                <p>
                                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal></p>
												<div class="d-flex align-items-end flex-wrap mt-4">
													<div class="filtaring-area me-3">
														<div class="size-filter">
															<h4 class="m-b-15">Select size</h4>
                                                          <asp:Literal ID="Literal4" runat="server"></asp:Literal>
														<div class="d-flex select-size mb-2" role="group" aria-label="Basic radio toggle button group">
															</div>
															</br></br>
														</div>
													</div>
													<%--<!--Quantity start-->
													<div class="col-2 px-0  mb-1 me-3">
														<input type="number" name="num" class="form-control input-btn input-number" value="1">
													</div>
													<!--Quanatity End-->--%>
													<div class="shopping-cart  mb-1 me-3">
													</div>
												</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
								
                            </div>
                        </div>
                    </div>
					<!-- review -->
					<div class="modal fade" id="reviewModal">
						<div class="modal-dialog modal-dialog-center" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Review</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal">
									</button>
								</div>
								<div class="modal-body">
									<form>
										<div class="text-center mb-4">
											<img class="img-fluid rounded" width="78" src="images/avatar/1.jpg" alt="DexignZone">
										</div>
										<div class="mb-3">
											<div class="rating-widget mb-4 text-center">
												<!-- Rating Stars Box -->
												<div class="rating-stars">
													<ul id="stars">
														<li class="star" title="Poor" data-value="1">
															<i class="fa fa-star fa-fw"></i>
														</li>
														<li class="star" title="Fair" data-value="2">
															<i class="fa fa-star fa-fw"></i>
														</li>
														<li class="star" title="Good" data-value="3">
															<i class="fa fa-star fa-fw"></i>
														</li>
														<li class="star" title="Excellent" data-value="4">
															<i class="fa fa-star fa-fw"></i>
														</li>
														<li class="star" title="WOW!!!" data-value="5">
															<i class="fa fa-star fa-fw"></i>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="mb-3">
											<textarea class="form-control" placeholder="Comment" rows="5"></textarea>
										</div>
										<button class="btn btn-success btn-block">RATE</button>
									</form>
								</div>
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>


</asp:Content>

