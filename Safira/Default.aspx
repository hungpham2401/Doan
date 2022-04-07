<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/ucControls/ucHomeTab.ascx" TagPrefix="uc1" TagName="ucHomeTab" %>
<%@ Register Src="~/ucControls/ucHomeArticle.ascx" TagPrefix="uc1" TagName="ucHomeArticle" %>
<%@ Register Src="~/ucControls/ucSpecialProduct.ascx" TagPrefix="uc1" TagName="ucSpecialProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="slider_section slider_s_three">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 offset-lg-3">
                    <div class="slider_area owl-carousel">
                        <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider10.jpg">
                            <div class="slider_content slider_c_three">
                                <h1>Sản phẩm đến từ thiên nhiên</h1>
                                <p>
                                    Bảo vệ sức khỏe - Cuộc sống tươi đẹp
                                </p>
                                <a href="~/">Xem thêm </a>
                            </div>
                        </div>
                        <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider11.jpg">
                            <div class="slider_content slider_c_three">
                                <h1>Sản phẩm đến từ thiên nhiên</h1>
                                <p>
                                    Bảo vệ sức khỏe - Cuộc sống tươi đẹp
                                </p>
                                <a href="~/">Xem thêm </a>
                            </div>
                        </div>
                        <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider12.jpg">
                            <div class="slider_content slider_c_three">
                                <h1>Sản phẩm đến từ thiên nhiên</h1>
                                <p>
                                    Bảo vệ sức khỏe - Cuộc sống tươi đẹp
                                </p>
                                <a href="~/">Xem thêm </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <!--shipping area start-->
    <div class="shipping_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single_shipping">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping5.jpg" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Miễn phí vận chuyển</h3>
                            <p>Miễn phí vận chuyển khi đơn hàng của bạn trên 200.000 VNĐ</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single_shipping col_2">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping6.jpg" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Hổ trợ 24/7</h3>
                            <p>Liên hệ với chúng tôi 24 giờ một ngày, 7 ngày một tuần</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single_shipping col_3">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping7.jpg" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>30 ngày đổi trả</h3>
                            <p>Chỉ cần trả lại nó trong vòng 30 ngày để đổi sản phẩm mới</p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single_shipping col_4">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping8.jpg" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Thanh toán an toàn</h3>
                            <p>Chúng tôi đảm bảo thanh toán an toàn với PEV</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--shipping area end-->

    <!--product area start-->
    <uc1:ucHomeTab runat="server" ID="ucHomeTab" />
    <!--product area end-->


    <!--banner area start-->
    <div class="banner_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html">
                                <img src="assets/img/bg/banner1.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html">
                                <img src="assets/img/bg/banner2.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    <%-- ucSpecialProduct --%>
    <uc1:ucSpecialProduct runat="server" ID="ucSpecialProduct" />


    <!--banner fullwidth area satrt-->
    <div class="banner_fullwidth">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="banner_full_content">
                        <p>Black Fridays !</p>
                        <h2>Giảm đến 50% <span>cho tất cả sản phẩm</span></h2>
                        <a runat="server" href="~/ProductGrid.aspx">Mua sắm ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner fullwidth area end-->



    <uc1:ucHomeArticle runat="server" ID="ucHomeArticle" />

    <div class="brand_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="brand_container owl-carousel ">
                        <div class="single_brand">
                            <a href="#">
                                <img src="assets/img/brand/brand1.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#">
                                <img src="assets/img/brand/brand2.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#">
                                <img src="assets/img/brand/brand3.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#">
                                <img src="assets/img/brand/brand4.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#">
                                <img src="assets/img/brand/brand2.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJS" runat="Server">
    <script>
        $(function () {
            $(".categories_menu .categories_title").click();
        })
    </script>
</asp:Content>

