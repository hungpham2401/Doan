<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register Src="~/ucControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>
<%@ Register Src="~/ucControls/ucContactForm.ascx" TagPrefix="uc1" TagName="ucContactForm" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- Breadcrumbs -->

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumbs_area">
                    <div class="breadcrumb_content" style="margin: 0 auto;">
                        <ul>
                            <li><a runat="server" href="~/Default.aspx">Trang chủ</a></li>
                            <li>Liên hệ với chúng tôi</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="contact_area" style="margin-top:50px">
        <div class="container">   
            <div class="row">
                <div class="col-lg-6 col-md-6">
                   <div class="contact_message content">
                        <h3>Liên hệ với chúng tôi</h3>    
                         <p>Chúng tôi chuyên cung cấp các sản phẩm thực phẩm sạch an toàn cho sức khỏe con người</p>
                        <ul>
                            <li><i class="fa fa-fax"></i>  Địa chỉ : Ladeco Building, 266 Doi Can Street, Hà Nội, Vietnam</li>
                            <li><i class="fa fa-phone"></i> <a href="#">nvquyen.cntt@gmail.com</a></li>
                            <li><i class="fa fa-envelope-o"></i><a href="tel:0972332803">0972332803</a>  </li>
                        </ul>             
                    </div> 
                </div>
                <div class="col-lg-6 col-md-6">
                   <div class="contact_message form">
                        <h3>Nhập thông tin liên hệ</h3>   
                         
                       <uc1:ucContactForm runat="server" ID="ucContactForm" />
                    </div> 
                </div>
            </div>
        </div>    
    </div>
    <!-- Breadcrumbs End -->

   
</asp:Content>

