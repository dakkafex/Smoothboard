<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SmoothBoard.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <div class="row products">
                <div class="col-md-3 col-sm-4">
                    <div class="product">
                        <div class="image" style="height: 263px;">
                            <a href="ProductPage.aspx?productID=<%# Eval("Id") %>">
                                <img src="<%# Eval("Image") %>" alt="<%# Eval("Name") %>" class="img-responsive image1">
                            </a>
                        &nbsp;&nbsp;&nbsp;</div>
                        <!-- /.image -->
                        <div class="text">
                            <h3><a href=""><%# Eval("Name") %></a></h3>
                            <p class="price">€<%# Eval("Price").ToString() %></p>
                            <p class="buttons">
                                <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </p>
                        </div>
                    </div>
                </div>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
