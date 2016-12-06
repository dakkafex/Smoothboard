<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SmoothBoard.Pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--shhh.. secret--%>
    <script>
        function gwarify() {
            document.getElementById("gwar").src = "https://media.giphy.com/media/l0MYPFMPZbCVyr6Mw/giphy.gif";
            document.getElementById("dethklok").src = "https://media.giphy.com/media/12HPs2M17uy8fe/giphy.gif";
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <p>
            Ik ging hier wat ome Henk grappen neerpleuren maar toen was het al 04:50<br />
            <br />
            Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.<br />
            Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
            Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.<br />
            Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
        </p>
    </div>
    <div class="container" style="text-align: center;">
        <div class="col-sm-4 saying">
            <img src="../Images/bord1.png" class="img-circle" width="200" height="200" alt="bordje" />
            <h3>
                <b>Skating.. yeah</b>
            </h3>
            <blockquote>
                "I like skateboarding. I'm here on this planet to skateboard; I feel this is what God wants me to do. I just live it. I get hurt all the time. I break bones. It's just all part of the process."
                <br />
                -Ryan Sheckler
            </blockquote>
        </div>

        <div class="col-sm-4 saying">
            <img src="../Images/bord2.png" class="img-circle" width="200" height="200" id="dethklok" alt="bordje" />
            <h3>
                <b>Surfing is a way of being</b>
            </h3>
            <blockquote>
                "Your surfing can get better on every turn, on every wave you catch. Learn to read the ocean better. A big part of my success has been wave knowledge."
                <br />
                -Kelly Slater
            </blockquote>
        </div>

        <div class=" col-sm-4 saying">
            <img src="../Images/bord3.png" class="img-circle" onload="setTimeout(gwarify, 40000)" id="gwar" width="200" height="200" alt="bordje" />
            <h3>
                <b>Surfing is a way of being</b>
            </h3>
            <blockquote>
                "Your surfing can get better on every turn, on every wave you catch. Learn to read the ocean better. A big part of my success has been wave knowledge."
                <br />
                -Kelly Slater
            </blockquote>
        </div>

    </div>
    <div class="jumbotron text-center">
        <p>
            "Your surfing can get better on every turn, on every wave you catch. Learn to read the ocean better. A big part of my success has been wave knowledge."
        </p>
    </div>
</asp:Content>
