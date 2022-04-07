﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AccountCategoryList.aspx.cs" Inherits="Admin_Pages_AccountCategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="content">

                <div class="breadLine">
                    <ul class="breadcrumb">
                        <!--Nút ẩn/hiện menu bên góc trái-->
                        <li>
                            <a href="#" title="Ẩn thanh menu" class="sidebarControl menu-arrow">
                                <span class="icon-arrow-left"></span>
                            </a>
                        </li>
                        <!--Thanh breadcrumb-->
                        <li>
                            <a href="Default.html">Bàn Làm Việc</a>
                            <span class="divider">&gt;</span>
                        </li>
                        <li>
                            <a href="AccountCategoryList.html">Loại Tài Khoản</a>
                        </li>
                    </ul>
                </div>

                <div class="workplace">
                    <div class="page-header">
                        <h1>
                            Loại Tài Khoản
                        </h1>
                    </div>

                    <div class="row-fluid">
                        <div class="span3">
                            <div class="head clearfix">
                                <div class="isw-folder">
                                </div>
                                <h1>
                                    Danh sách loại tài khoản
                                </h1>
                            </div>
                            <div class="block-fluid">
                                <div class="row-form clearfix">
                                    <select size="4" class="category" style="height:475px;">
                                        <option value="SupperAdmin">SupperAdmin</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="span9">
                            <div class="head clearfix">
                                <div class="isw-list">
                                </div>
                                <h1>
                                    Chi tiết loại tài khoản đang chọn
                                </h1>
                                <ul class="buttons">
                                    <li>
                                        <a title="Thêm mới" class="isw-plus tip"></a>
                                    </li>
                                    <li>
                                        <a title="Xóa chọn" class="isw-delete tip"></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="block-fluid  customize">
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        Mã loại tài khoản:
                                    </div>
                                    <div class="span7">
                                        <input type="text" class="tip" />
                                        <span>Sử dụng chữ cái (hoặc thêm số). Không gõ dấu và không khoảng trắng. VD: SupperAdmin</span>
                                    </div>
                                    <div class="span1">
                                        Vị trí:
                                    </div>
                                    <div class="span2" style="float: right;">
                                        <input type="text" class="tipb" title="Dùng để sắp xếp thứ tự" />
                                        <span>Nhập số hoặc để trống</span>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        Tiêu đề:
                                    </div>
                                    <div class="span10">
                                        <input type="text" />
                                        <span>VD: Quản trị cao cấp, quản trị viên, ...</span>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        Mô tả:
                                    </div>
                                    <div class="span10">
                                        <textarea style="min-height: 50px; width: 100%;"></textarea>
                                        <span>Nên mô tả chi tiết về các quyền hoặc các giới hạn của loại tài khoản này.</span>
                                    </div>
                                </div>
                                <!--Hình đại diện-->
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        Hình đại diện:
                                    </div>
                                    <div class="span10">
                                        <a href="../css/img/no_image.jpg" id="content_a_Avatar" class="fancybox lightbox-preview" rel="group">
                                            <img src="../css/img/no_image.jpg" id="content_img_Avatar" alt="avatar" class="default-image img-polaroid avatar-preview" style="width: 180px; height: 135px;" />
                                        </a>
                                        <br />
                                        <input type="file" class="skip" preview="avatar-preview" />
                                        <br />
                                        <span>
                                            Hình đại diện cho loại tài khoản. Bạn có thể upload hình mới nếu muốn.
                                            Các Loại file hỗ trợ: *.jpg, *.jpeg, *.gif, *.png
                                        </span>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        Trạng thái:
                                    </div>
                                    <div class="span10">
                                        <label class="checkbox inline">
                                            <input value="radio_Status_On" type="radio" checked="checked" />
                                            Hiển thị
                                        </label>
                                        <label class="checkbox inline">
                                            <input value="radio_Status_Off" type="radio" />
                                            Tạm ẩn
                                        </label>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span2">
                                        <a class="btn mybtn">
                                            <i class="isw-save"></i>Lưu
                                        </a>
                                    </div>
                                    <div class="span10">

                                        <!--Thông báo-->
                                        <div class="alert alert-info inline-msg">
                                            <b>Hướng dẫn:</b>
                                            <span class="message">Để thêm mới, mời nhập thông tin sau đó nhấn [Lưu]</span>
                                            <span class="close" title="Ẩn thông báo">X</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tar">
                            <a href="AccountList.html" type="button" class="btn active">
                                <i class="icon-arrow-left"></i> Trở về trang danh sách tài khoản
                            </a>
                        </div>
                    </div>

                </div>
            </div>
</asp:Content>

