﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

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
                            <a href="#">Bàn Làm Việc</a>
                        </li>
                    </ul>
                </div>

                <div class="workplace">
                    <div class="page-header">
                        <h1>
                            Chào mừng đến với chương trình quản lý website.
                            <br />
                            Hãy chọn Menu để đến trang chức năng 
                        </h1>
                        
                    </div>
                    <div style=" height = 650px">
                    <img  src="../../assets/img/product/nền.png" alt="Alternate Text" />

                    </div>
                </div>
            </div>
</asp:Content>

