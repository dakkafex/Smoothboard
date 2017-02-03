<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="SmoothBoard.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Ja en wat wil je weten knul?</p>

    <asp:ListView ID="FAQList" runat="server">
        <ItemTemplate>

            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%# Eval("Id") %>"><%# Eval("Question") %></a>
                        </h4>
                    </div>
                    <div id="collapse<%# Eval("Id") %>" class="panel-collapse collapse">
                        <div class="panel-body">
                            <%# Eval("Answer") %>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>


</asp:Content>
