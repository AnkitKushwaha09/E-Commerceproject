<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="User-index.aspx.cs" Inherits="User_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .product__price .sign {
    font-size: 24px;
    font-weight: 500;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <!-- Slider area Start -->
            <section class="homepage-slider mb--11pt5">
                <div class="element-carousel slick-right-bottom" data-slick-options='{
                    "slidesToShow": 1, 
                    "dots": true
                }'>
                    <div class="item">
                        <div class="single-slide d-flex align-items-center bg-image"
                            data-bg-image="assets/img/slider/slider-bg-01.jpg">
                            <div class="container">
                                <div class="row align-items-center g-0 w-100">
                                    <div class="col-lg-6 col-md-8">
                                        <div class="slider-content">
                                            <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                                                <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal1" runat="server"></asp:Literal></h3>
                                                <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal2" runat="server"></asp:Literal></h1>
                                                <p class="font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal3" runat="server"></asp:Literal></p>
                                            </div>
                                            <div class="slider-content__btn">
                                                <a href="User-Shop.aspx" class="btn-link" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".6s">Shop Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 offset-lg-2 col-md-4">
                                        <figure class="slider-image d-none d-md-block">
                                        <img src='<asp:Literal ID="Literal4" runat="server"></asp:Literal>' alt="Slider Image">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-slide d-flex align-items-center bg-image"
                            data-bg-image="assets/img/slider/slider-bg-01.jpg">
                            <div class="container">
                                <div class="row align-items-center g-0 w-100">
                                    <div class="col-lg-6 col-md-8">
                                        <div class="slider-content py-0">
                                            <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                                                <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal5" runat="server"></asp:Literal></h3>
                                                <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal6" runat="server"></asp:Literal></h1>
                                                <p class="font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"><asp:Literal ID="Literal7" runat="server"></asp:Literal></p>
                                            </div>
                                            <div class="slider-content__btn">
                                                <a href="User-Shop.aspx" class="btn-link" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".6s">Shop Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 offset-lg-2 col-md-4">
                                        <figure class="slider-image d-none d-md-block">
                                        <img src='<asp:Literal ID="Literal8" runat="server"></asp:Literal>' alt="Slider Image">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Slider area End -->

            <!-- Featured Product Area Start -->
            <section class="featured-product-area mb--10pt8">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">Featured Product</h2>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-md-6 mb-sm--50">
                            <div class="featured-product">
                                <div class="featured-product__inner info-center">
                                    <figure class="featured-product__image">
                                        <img src='<asp:Literal ID="Literal11" runat="server"></asp:Literal>' alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInLeft" data-wow-delay=".3s" data-wow-duration="1s">
                                        <div class="featured-product__info-inner">
                                            <h4 class="featured-product__text"><asp:Literal ID="Literal9" runat="server"></asp:Literal></h4>
                                            <h2 class="featured-product__name"><asp:Literal ID="Literal10" runat="server"></asp:Literal></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="featured-product">
                                <div class="featured-product__inner info-left-bottom">
                                    <figure class="featured-product__image">
                                        <img src='<asp:Literal ID="Literal14" runat="server"></asp:Literal>' alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-duration="1s">
                                        <div class="featured-product__info-inner rotated-info">
                                            <h4 class="featured-product__text"><asp:Literal ID="Literal12" runat="server"></asp:Literal></h4>
                                            <h2 class="featured-product__name"><asp:Literal ID="Literal13" runat="server"></asp:Literal></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Product Area End -->

            <!-- Product Area Start -->
            <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20 mb-xs--15">
                <div class="container">
                    <div class="row mb--42">
                        <div class="col-lg-5 col-sm-10">
                            <h2 class="heading__secondary">NEW ARRIVALS</h2>
                            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor ipisci velit, sed quia non numquam
                                eius modi </p>
                        </div>
                    </div>
                    <div class="row">
                         <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                            <div class="payne-product">
                                <div class="product__inner">
                                    <div class="product__image">
                                        <figure class="product__image--holder">
                                        <img src="<%# Eval("img")%>" alt="Product" height="250px"/>
                                        </figure>
                                         <a href="User-Category-product.aspx?categ=<%# Eval("categ")%>" class="product__overlay" >
                                        <div class="product__action"> 
                                        </div>
                                    </div>
                                    <div class="product__info">
                                        <div class="product__info--left">
                                            <h3 class="product__title">
                                        <a href="User-Category-product.aspx?categ=<%# Eval("categ")%>" class="figure-caption" ><h2><%#Eval("categ") %></h2></a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
                    </div>
                </div>
            </section>
            <!-- Product Area End -->

            <!-- Countdown Product Area Start -->
            <div class="limited-product-area mb--11pt5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mb-md--40 mb-sm--45">
                            <div class="limited-product__image">
                                <div class="limited-product__title">
                                    <h2>Backpack</h2>
                                </div>
                                <div class="limited-product__large-image">
                                    <div class="element-carousel main-slider" data-slick-options='{
                                        "slidesToShow": 1,
                                        "asNavFor": ".nav-slider"
                                    }'>
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal15" runat="server"></asp:Literal>' alt="Countdown Product" width="300px" height="430px">
                                            </figure>
                                        </div>
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal16" runat="server"></asp:Literal>' alt="Countdown Product" width="300px" height="430px">
                                            </figure>
                                        </div>
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal17" runat="server"></asp:Literal>' alt="Countdown Product" width="300px" height="430px">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="limited-product__nav-image">
                                    <div class="element-carousel nav-slider" data-slick-options='{
                                        "spaceBetween": 25,
                                        "slidesToShow": 3,
                                        "vertical": true,
                                        "focusOnSelect": true,
                                        "asNavFor": ".main-slider"
                                    }' 
                                    data-slick-responsive='[
                                        {"breakpoint": 576, "settings": { "vertical": false }}
                                    ]'
                                    >
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal18" runat="server"></asp:Literal>' alt="Product Nav Image" >
                                             </figure>
                                        </div>
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal19" runat="server"></asp:Literal>' alt="Product Nav Image">
                                             </figure>
                                        </div>
                                        <div class="item">
                                            <figure>
                                        <img src='Userindeximg/<asp:Literal ID="Literal20" runat="server"></asp:Literal>' alt="Product Nav Image">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 offset-xl-1 col-lg-6">
                            <div class="limited-product__info">
                                <h2 class="limited-product__name">
                                    <a href="#"><asp:Literal ID="Literal21" runat="server"></asp:Literal></a>
                                </h2>
                                <p class="limited-product__desc"><asp:Literal ID="Literal22" runat="server"></asp:Literal></p>
                                <div class="d-flex align-items-center">
                                    <div class="limited-product__price">
                                        <span class="money"><asp:Literal ID="Literal23" runat="server"></asp:Literal></span>
                                        <span class="sign">$</span>
                                    </div>
                                    <span class="limited-product__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </span>
                                </div>
                                <h3 class="limited-product__subtitle"><asp:Literal ID="Literal24" runat="server"></asp:Literal></h3>
                                <div class="limited-product__countdown">
                                    <div class="countdown-wrap">
                                        <div class="countdown" data-countdown="<asp:Literal ID="Literal25" runat="server"></asp:Literal>" data-format="short">
                                            <div class="countdown__item">
                                                <span class="countdown__time daysLeft"></span>
                                                <span class="countdown__text daysText"></span>
                                            </div>
                                            <div class="countdown__item">
                                                <span class="countdown__time hoursLeft"></span>
                                                <span class="countdown__text hoursText"></span>
                                            </div>
                                            <div class="countdown__item">
                                                <span class="countdown__time minsLeft"></span>
                                                <span class="countdown__text minsText"></span>
                                            </div>
                                            <div class="countdown__item">
                                                <span class="countdown__time secsLeft"></span>
                                                <span class="countdown__text secsText"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a href="User-Shop.aspx" class="btn-link">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Countdown Product Area End -->

            <!-- Featured Product Area Start -->
            <section class="featured-product-area mb--11pt5">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">Featured Product</h2>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-md-6 mb-sm--50">
                            <div class="featured-product">
                                <div class="featured-product__inner info-right-bottom">
                                    <figure class="featured-product__image">
                                        <img src='<asp:Literal ID="Literal29" runat="server"></asp:Literal>' alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-delay=".6s" data-wow-duration=".8s">
                                        <div class="featured-product__info-inner rotated-info">
                                            <h4 class="featured-product__text"><asp:Literal ID="Literal26" runat="server"></asp:Literal></h4>
                                            <h2 class="featured-product__name"><asp:Literal ID="Literal27" runat="server"></asp:Literal></h2>
                                        </div>
                                    </div>
                                    <span class="featured-product__badge badge-top-left"><asp:Literal ID="Literal28" runat="server"></asp:Literal></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="featured-product">
                                <div class="featured-product__inner info-center">
                                    <figure class="featured-product__image">
                                        <img src='<asp:Literal ID="Literal33" runat="server"></asp:Literal>' alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInLeft" data-wow-delay=".3s" data-wow-duration=".8s">
                                        <div class="featured-product__info-inner">
                                            <h4 class="featured-product__text"><asp:Literal ID="Literal30" runat="server"></asp:Literal></h4>
                                            <h2 class="featured-product__name"><asp:Literal ID="Literal31" runat="server"></asp:Literal></h2>
                                        </div>
                                    </div>
                                    <span class="featured-product__badge"><asp:Literal ID="Literal32" runat="server"></asp:Literal></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Product Area End -->

            <section class="method-area mb--11pt5">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">Methods</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-sm--50">
                            <div class="method-box shipment-method">
                                <i class="flaticon-truck"></i>
                                <h3>Free Home Delivery</h3>
                            </div>
                        </div>
                        <div class="col-md-4 mb-sm--50">
                            <div class="method-box money-back-method">
                                <i class="flaticon-money"></i>
                                <h3>MONEY BACK GUARANTEE</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="method-box support-method">
                                <i class="flaticon-support"></i>
                                <h3>SUPORT 24/7</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Main Content Wrapper End -->
</asp:Content>

