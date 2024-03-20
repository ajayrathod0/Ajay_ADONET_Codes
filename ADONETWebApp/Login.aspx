<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ADONETWebApp.Login" MasterPageFile="~/MyLayout.Master" %>


<asp:Content runat="server" ID="login" ContentPlaceHolderID="MainContentHolder">
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
            /*            border: solid;
    */ box-shadow: 0 30px 50px 0 rgba(0,0,0,.2);
            align-items: center;
            padding: 5rem;
            border-radius: 37px;
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
    <form id="form1" runat="server">
        <div>
            <div class="maindiv">

                <div class="imgbar">
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
                </div>
                <div class="LogIn">

                    <input type="email" placeholder="Enter Email" />
                    <br />
                    <br />

                    <input type="password" placeholder="Enter Password" />
                    <br />
                    <br />

                    <button class="LButton">Log in</button>
                    <br />
                    <br />

                    <a href="#">Forgot Password?</a>
                    <hr />
                    <asp:Button class="RButton" OnClick="Rbutton_Click" Text="Register" ID="Rbutton" runat="server" />
                </div>

            </div>
        </div>
    </form>
</asp:Content>

