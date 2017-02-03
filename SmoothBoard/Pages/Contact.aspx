<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SmoothBoard.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="heading">
            <h2>Contact form</h2>
        </div>
    </div>
    <form>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="firstname">Voornaam</label>
                    <input type="text" class="form-control" id="firstname">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="lastname">Achternaam</label>
                    <input type="text" class="form-control" id="lastname">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="subject">Onderwerp</label>
                    <input type="text" class="form-control" id="subject">
                </div>
            </div>
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="message">Vraag</label>
                    <textarea id="message" class="form-control"></textarea>
                </div>
            </div>

            <div class="col-sm-12 text-center">
                <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i>Verzend</button>
            </div>
        </div>
        <!-- /.row -->
    </form>
    <div class="col-md-12">
        <div class="heading">
            <h2>NieuwsBrief</h2>
        </div>
        <form>

            <label for="firstname">Email voor Nieuwsbrief</label>
            <input type="text" class="form-control" id="Mail">
            <div class="col-sm-12 text-center">
                <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i>Meld aan</button>
                <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i>Afmelden</button>
            </div>
        </form>
    </div>
</asp:Content>
