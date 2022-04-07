<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<%@ Register Src="~/ucControls/ucSpecialProduct.ascx" TagPrefix="uc1" TagName="ucSpecialProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumbs_area">
                    <div class="breadcrumb_content" style="margin: 0 auto;">
                        <ul>
                            <li><a runat="server" href="~/Default.aspx">Trang chủ</a></li>
                            <li>Chi tiết sản phẩm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:Repeater runat="server" ID="Repeater_Product">
        <ItemTemplate>

            <!--product details start-->
            <div class="product_details mt-70 mb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="product-details-tab">
                                <div id="img-1" class="zoomWrapper single-zoom">
                                    <a href="#">
                                        <img id="zoom1" runat="server" clientidmode="Static" src='<%# Eval("Avatar").ToSafetyString().Replace("~/","/") %>' data-zoom-image='<%# Eval("Avatar").ToSafetyString().Replace("~/","/") %>' alt="big-1">
                                    </a>
                                </div>
                                <div class="single-zoom-thumb">
                                    <ul class="s-tab-zoom owl-carousel single-product-active" id="gallery_01">
                                        <asp:Repeater runat="server" ID="Repeater_ImageList" DataSource='<%# Eval("ImageList").SplitToText(";") %>'>
                                            <ItemTemplate>
                                                <li>
                                                    <a href='<%# Eval("Text") %>' class="elevatezoom-gallery active" data-update="" data-image='<%# Eval("Text") %>' data-zoom-image='<%# Eval("Text") %>'>
                                                        <img runat="server" src='<%# Eval("Text") %>' alt="Thumbnail 2" />
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="product_d_right">
                                <form action="#">

                                    <h1><a href="#"><%# Eval("Title") %></a></h1>

                                    <div class=" product_ratting">
                                        <ul>
                                            <li><a href="#"><i class="icon-star"></i></a></li>
                                            <li><a href="#"><i class="icon-star"></i></a></li>
                                            <li><a href="#"><i class="icon-star"></i></a></li>
                                            <li><a href="#"><i class="icon-star"></i></a></li>
                                            <li><a href="#"><i class="icon-star"></i></a></li>
                                            <li class="review"><a href="#">(Đánh giá khách hàng ) </a></li>
                                        </ul>

                                    </div>
                                    <div class="price_box">
                                        <span class="current_price"><%# Eval("Price","{0:0,00 ₫}") %></span>
                                        <span class="old_price"><%# Eval("OldPrice","{0:0,00 ₫}") %></span>

                                    </div>
                                    <div class="product_desc">
                                        <%# Eval("Description") %>'
                                        <%--<ul class="parameter">
                                            <asp:Repeater runat="server" ID="Repeater_Description" DataSource='<%# Eval("Description").SplitToTextValue(":", ";") %>'>
                                                <ItemTemplate>
                                                    <li class="title">
                                                        <div class="d-flex ">
                                                            <span style="min-width: 200px; font-weight: 500"><%# Eval("Text") %>:  </span>

                                                            <div><%# Eval("Value") %></div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>--%>

                                    </div>

                                    <div class="product_variant quantity">
                                        <asp:Button Text="Thêm vào giỏ hàng"
                                            runat="server"
                                            ID="LinkButton_AddCart"
                                            OnClick="LinkButton_AddCart_Click"
                                            CommandArgument='<%# Eval("ID") %>'
                                            ClientIDMode="AutoID"
                                            Style="margin: 0"
                                            class="button"
                                            OnClientClick="alert('Thêm giỏ hàng thành công')"></asp:Button>
                                    </div>


                                </form>
                                <div class="priduct_social">
                                    <ul>
                                        <li><a class="facebook" href="#" title="facebook"><i class="fa fa-facebook"></i>Like</a></li>
                                        <li><a class="twitter" href="#" title="twitter"><i class="fa fa-twitter"></i>tweet</a></li>
                                        <li><a class="pinterest" href="#" title="pinterest"><i class="fa fa-pinterest"></i>save</a></li>
                                        <li><a class="google-plus" href="#" title="google +"><i class="fa fa-google-plus"></i>share</a></li>
                                        <li><a class="linkedin" href="#" title="linkedin"><i class="fa fa-linkedin"></i>linked</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--product details end-->

            <!--product info start-->
            <div class="product_d_info mb-65">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="product_d_inner">
                                <div class="product_info_button">
                                    <ul class="nav" role="tablist" id="nav-tab">
                                        <li>
                                            <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Mô tả sản phẩm</a>
                                        </li>

                                        <li>
                                            <a data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews (1)</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="info" role="tabpanel">
                                        <div class="product_info_content">
                                            <%# Eval("Content") %>
                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="reviews" role="tabpanel">
                                        <div class="reviews_wrapper">
                                            <h2>1 review for Donec eu furniture</h2>
                                            <div class="reviews_comment_box">
                                                <div class="comment_thmb">
                                                    <img src="assets/img/blog/comment2.jpg" alt="">
                                                </div>
                                                <div class="comment_text">
                                                    <div class="reviews_meta">
                                                        <div class="star_rating">
                                                            <ul>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                            </ul>
                                                        </div>
                                                        <p><strong>admin </strong>- September 12, 2018</p>
                                                        <span>roadthemes</span>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="comment_title">
                                                <h2>Đánh giá khách hàng </h2>
                                                <p>Your email address will not be published.  Required fields are marked </p>
                                            </div>
                                            <div class="product_ratting mb-10">
                                                <h3>Your rating</h3>
                                                <ul>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product_review_form">
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <label for="review_comment">Your review </label>
                                                            <textarea name="comment" id="review_comment"></textarea>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6">
                                                            <label for="author">Name</label>
                                                            <input id="author" type="text">
                                                        </div>
                                                        <div class="col-lg-6 col-md-6">
                                                            <label for="email">Email </label>
                                                            <input id="email" type="text">
                                                        </div>
                                                    </div>
                                                    <button type="submit">Submit</button>
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
            <!--product info end-->

        </ItemTemplate>
    </asp:Repeater>


    <section class="product_area related_products">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2>Sản phẩm liên quan</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="product_carousel product_column5 owl-carousel">
                        <asp:Repeater runat="server" ID="Repeater_ProductRelated">
                            <ItemTemplate>
                                <article class="single_product">
                                    <figure>
                                        <div class="product_thumb">
                                            <a class="primary_img" runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                                <img runat="server" src='<%# Eval("Avatar") %>' alt=""></a>

                                            <div class="label_product">
                                                <span class="label_new">New</span>
                                            </div>
                                            <div class="action_links">
                                                <ul>
                                                    <li class="add_to_cart">
                                                        <asp:LinkButton
                                                            Text="Mua ngay"
                                                            runat="server"
                                                            class="action add-to-cart"
                                                            data-tippy="Thêm vào giỏ hàng"
                                                            data-tippy-placement="top" data-tippy-arrow="true" data-tippy-inertia="true"
                                                            ID="Button_AddCart"
                                                            CommandArgument='<%# Eval("ID") %>'
                                                            ClientIDMode="AutoID"
                                                            OnClientClick="alert('Thêm giỏ hàng thành công')"
                                                            OnClick="Button_AddCart_Click">
                                                                                       <span class="lnr lnr-cart"></span>
                                                        </asp:LinkButton>

                                                    </li>
                                                    <li class="quick_button"><a  runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' data-tippy="Xem chi tiết" data-tippy-placement="top" data-tippy-arrow="true" data-tippy-inertia="true" ><span class="lnr lnr-magnifier"></span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <figcaption class="product_content">
                                            <h4 class="product_name"><a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title").Left(50,true,true) %></a></h4>
                                            <div class="price_box">
                                                <span class="current_price"><%# Eval("Price").ToString("0,00 VNĐ") %></span>
                                                <span class="old_price"><%# Eval("OldPrice").ToString("0,00 VNĐ") %></span>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>

