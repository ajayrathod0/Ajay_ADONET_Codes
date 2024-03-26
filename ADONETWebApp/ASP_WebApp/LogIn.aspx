<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ASP_WebApp.LogIn" MasterPageFile="~/MainLayout.Master" %>




<asp:Content runat="server" ContentPlaceHolderID="MainContents">
    <style>
        .maindiv {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            padding-top: 6rem;
            justify-content: center;
        }

        .imgbar {
            width: 50%;
        }

        input {
            text-align: center;
            line-height: 2.5rem;
            width: 15.1rem;
        }

        .LogIn {
            text-align: center;
            box-shadow: 0 30px 50px 0 rgba(0,0,0,.2);
            align-items: center;
            padding: 5rem;
            border-radius: 37px;
            margin-bottom: 8rem;
        }

        .LButton {
            height: 2.5rem;
            width: 15.1rem;
            border-radius: 11px;
            color: white;
            background-color: cornflowerblue;
            border: none;
            cursor: pointer;
        }

        .RButton {
            height: 2.5rem;
            width: 15.1rem;
            border-radius: 11px;
            color: white;
            background-color: lightgreen;
            border: none;
            cursor: pointer;
        }

        .LButton:hover {
            background-color: black;
        }

        .RButton:hover {
            background-color: black;
        }

        p {
            padding-left: 77px;
        }
    </style>


    <form runat="server" class="maindiv">

        <%--<div class="imgbar">
            <img src="Img/vhaash1.jpg" alt="#" style="padding-left: 77px;" />
            <h2 style="color: cornflowerblue;">VHaaSh Technologies Private Limited
            </h2>
            <br />
            <p>
                IT Company located in Pune.
         <p />
            <p>Working on Microsoft Technologies based</p>
            <p>
                web & mobile applications
            </p>
        </div>--%>



        <div class="LogIn">
            <div class="input-group">
                <span class="input-group-text bi bi-person-fill"></span>
                <input type="Text" placeholder="Enter Email" class="form-control"
                    runat="server" id="txtUsername" />
            </div>
            <br />


            <div class="input-group">
                <span class="input-group-text bi bi-lock-fill"></span>
                <input placeholder="Password" type="password" class="form-control"
                    runat="server" id="txtPassword" />
                <span class="input-group-text" id="togglePassword" style="cursor: pointer;">show</span>
                <asp:Label ID="lblMassage" runat="server"></asp:Label>
            </div>
            <br />
            <br />

            <asp:Button runat="server" OnClick="btnLogin_Click" class="LButton" Text="Log in" />
            <br />
            <br />

            <a href="#">Forgot Password?</a>
            <hr />
            <asp:Button class="RButton" OnClick="RagisterBtn_Click" Text="Register" runat="server" />
        </div>

    </form>

  
   
    <script>
        $(function () {
            $('#togglePassword').click(function () {
                var passwordField = $('#txtPassword');
                var passwordFieldType = passwordField.attr('type');
                if (passwordFieldType === 'password') {
                    passwordField.attr('type', 'text');
                    $(this).text('Hide Password');
                } else {
                    passwordField.attr('type', 'password');
                    $(this).text('Show Password');
                }
            });
    </script>


</asp:Content>
