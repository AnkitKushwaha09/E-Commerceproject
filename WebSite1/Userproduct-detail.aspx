<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Userproduct-detail.aspx.cs" Inherits="Userproduct_detail" EnableEventValidation="False" %>

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
                        <h1 class="page-title">Product Details</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Product Details</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    
    
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--80 pt-md--60">
                <div class="container">
                    <div class="row g-0 mb--80 mb-md--57">
                        <div class="col-lg-7 product-main-image">
                            <div class="product-image">
                                <div class="product-gallery vertical-slide-nav">
                                    <div class="product-gallery__large-image mb-sm--30">
                                        <div class="product-gallery__wrapper">
                                            <div class="element-carousel main-slider image-popup" data-slick-options='{
                                                "slidesToShow": 1,
                                                "slidesToScroll": 1,
                                                "infinite": true,
                                                "arrows": false, 
                                                "asNavFor": ".nav-slider"
                                            }'>
                                                <div class="item">
                                                    <figure class="product-gallery__image zoom">
                                                      <img src="Uploads/<asp:Literal ID="Literal7" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
                                                     
                                                        <span class="product-badge sale">Sale</span>
                                                    </figure>
                                                </div>
                                                <div class="item">
                                                    <figure class="product-gallery__image zoom">
                                                       <img src="Uploads/<asp:Literal ID="Literal8" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
                                                       
                                                        <span class="product-badge sale">Sale</span>
                                                     </figure>
                                                </div>
                                                <div class="item">
                                                    <figure class="product-gallery__image zoom">
                                                        <img src="Uploads/<asp:Literal ID="Literal9" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
                                                      
                                                        <span class="product-badge sale">Sale</span>
                                                    </figure>
                                                </div>
                                                <div class="item">
                                                    <figure class="product-gallery__image zoom">
                                                        <img src="Uploads/<asp:Literal ID="Literal10" runat="server"></asp:Literal>" width="80px" height="80px"</img></a>
                                                      
                                                        <span class="product-badge sale">Sale</span>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-gallery__nav-image">
                                        <div class="element-carousel nav-slider product-slide-nav slick-center-bottom"
                                            data-slick-options='{
                                            "spaceBetween": 10,
                                            "slidesToShow": 3,
                                            "slidesToScroll": 1,
                                            "vertical": true,
                                            "swipe": true,
                                            "verticalSwiping": true,
                                            "infinite": true,
                                            "focusOnSelect": true,
                                            "asNavFor": ".main-slider",
                                            "arrows": true, 
                                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-up" },
                                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-down" }
                                        }' data-slick-responsive='[
                                            {
                                                "breakpoint":1200, 
                                                "settings": {
                                                    "slidesToShow": 2
                                                } 
                                            },
                                            {
                                                "breakpoint":992, 
                                                "settings": {
                                                    "slidesToShow": 3
                                                } 
                                            },
                                            {
                                                "breakpoint":767, 
                                                "settings": {
                                                    "slidesToShow": 4,
                                                    "vertical": false
                                                } 
                                            },
                                            {
                                                "breakpoint":575, 
                                                "settings": {
                                                    "slidesToShow": 3,
                                                    "vertical": false
                                                } 
                                            },
                                            {
                                                "breakpoint":480, 
                                                "settings": {
                                                    "slidesToShow": 2,
                                                    "vertical": false
                                                } 
                                            }
                                        ]'>
                                            <div class="item">
                                                <figure class="product-gallery__nav-image--single">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal11" runat="server"></asp:Literal>" width="250px" height="560px"</img>                                                   
                                               
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__nav-image--single">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal12" runat="server"></asp:Literal>" width="250px" height="560px"</img>
                                                  
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__nav-image--single">
                                              <img class="img img-fluid rounded " src="Uploads/<asp:Literal ID="Literal13" runat="server"></asp:Literal>" width="250px" height="560px"</img>
                                                   
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__nav-image--single">
                                              <img class="img img-fluid rounded  " src="Uploads/<asp:Literal ID="Literal14" runat="server"></asp:Literal>" width="250px" height="560px"</img>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 offset-xl-1 col-lg-5 product-main-details mt-md--50">
                            <div class="product-summary pl-lg--30 pl-md--0">
                                <div class="product-rating d-flex mb--20">
                                    <div class="star-rating star-four">
                                        <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                    </div>
                                </div>
                                <h3 class="product-title mb--20"><asp:Literal ID="Literal1" runat="server"></asp:Literal></h3>
                                <p class="product-short-description mb--20"><asp:Literal ID="Literal2" runat="server"></asp:Literal></p>
                                <div class="product-price-wrapper mb--25">
                                    <span class="money"><asp:Literal ID="Literal3" runat="server"></asp:Literal>.00$</span>
                                </div>
                                <form action="#" class="variation-form mb--20">
                                    <div class="product-size-variations d-flex align-items-center mb--15">
                                        <p class="variation-label">Size: <asp:Literal ID="Literal4" runat="server"></asp:Literal></p>
                                      
                                    </div>
                                    <a href="#" class="reset_variations">Stock : </a>
                                    <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                </form>
                                <div class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                  <div class="product-footer-meta">
                                    <p><span>Category:</span>
                                         <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                                    </p>
                                </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" class="btn btn-shape-square btn-size-sm" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
                                  
                                </div>
                                
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center mb--77 mb-md--57">
                        <div class="col-12">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs mb--35 mb-sm--25" id="product-tab" role="tablist">
                                    <button type="button" class="nav-link active" id="nav-description-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-description" role="tab" aria-selected="true">
                                        <span>Description</span>
                                    </button>
                                    <button type="button" class="nav-link" id="nav-info-tab" data-bs-toggle="tab" data-bs-target="#nav-info" role="tab"
                                        aria-selected="true">
                                        <span>Additional Information</span>
                                    </button>
                                    <button type="button" class="nav-link" id="nav-reviews-tab" data-bs-toggle="tab" data-bs-target="#nav-reviews"
                                        role="tab" aria-selected="true">
                                        <span>Reviews(1)</span>
                                    </button>
                                </div>
                                <div class="tab-content" id="product-tabContent">
                                    <div class="tab-pane fade show active" id="nav-description" role="tabpanel"
                                        aria-labelledby="nav-description-tab">
                                        <div class="product-description">
                                            <p>
                                                <asp:Literal ID="Literal15" runat="server"></asp:Literal></p>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-info" role="tabpanel"
                                        aria-labelledby="nav-info-tab">
                                        <div class="table-content table-responsive">
                                            <table class="table shop_attributes">
                                                <tbody>
                                                    <tr>
                                                        <th>Weight</th>
                                                        <td>
                                                            <asp:Literal ID="Literal16" runat="server"></asp:Literal></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Dimensions</th>
                                                        <td>
                                                            <asp:Literal ID="Literal17" runat="server"></asp:Literal></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Color</th>
                                                        <td>
                                                            <asp:Literal ID="Literal18" runat="server"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-reviews" role="tabpanel"
                                        aria-labelledby="nav-reviews-tab">
                                        <div class="product-reviews">
                                            <h3 class="review__title">1 review for Black Blazer</h3>
                                            <ul class="review__list">
                                                <li class="review__item">
                                                    <div class="review__container">
                                                        <img src="assets/img/others/comment-1.jpg" alt="Review Avatar"
                                                            class="review__avatar">
                                                        <div class="review__text">
                                                            <div
                                                                class="d-flex flex-sm-row flex-column justify-content-between">
                                                                <div class="review__meta">
                                                                    <strong class="review__author">John Snow </strong>
                                                                    <span class="review__dash">-</span>
                                                                    <span class="review__published-date">November 20,
                                                                        2018</span>
                                                                </div>
                                                                <div class="product-rating">
                                                                    <div class="star-rating star-five">
                                                                        <span>Rated <strong class="rating">5.00</strong>
                                                                            out of 5</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="review__description">Aliquam egestas libero ac
                                                                turpis pharetra, in vehicula lacus scelerisque.
                                                                Vestibulum ut sem laoreet, feugiat tellus at, hendrerit
                                                                arcu.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="review-form-wrapper">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <span class="reply-title">Add a review</span>
                                                        <form action="#" class="form pr--30">
                                                            <div class="form-notes mb--20">
                                                                <p>Your email address will not be published. Required
                                                                    fields are marked <span class="required">*</span>
                                                                </p>
                                                            </div>
                                                            <div class="form__group mb--10">
                                                                <label class="form__label d-block mb--10">Your Ratings</label>
                                                                <div class="rating">
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                            <div class="form__group mb--10">
                                                                <label class="form__label d-block mb--10" for="email">Your
                                                                    Review<span class="required">*</span></label>
                                                                <textarea name="review" id="review"
                                                                    class="form__input form__input--textarea"></textarea>
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10" for="name">Name<span
                                                                        class="required">*</span></label>
                                                                <input type="text" name="name" id="name"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10"
                                                                    for="email">Email<span
                                                                        class="required">*</span></label>
                                                                <input type="email" name="email" id="email"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <input type="submit" value="Submit Now"
                                                                            class="btn btn-size-md">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper End -->

       

</asp:Content>

