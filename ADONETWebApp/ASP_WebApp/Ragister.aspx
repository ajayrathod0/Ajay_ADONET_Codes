<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ragister.aspx.cs" Inherits="ASP_WebApp.Ragister" MasterPageFile="~/MainLayout.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContents">
    <style>
        #maindiv {
            background-color: #fff;
            width: 35%;
            margin: 30px auto;
            text-align: center;
            padding: 33px 27px 49px;
            border-radius: 4px;
            box-shadow: 0 30px 50px 0 rgba(0,0,0,.2);
            /* border: black; */
            /* border: solid; */
            border-radius: 53px;
        }

        .btn1 {
            height: 2rem;
            width: 8rem;
            border-radius: 10px;
            color: white;
            background-color: #3a8f32;
            border: none;
        }

        .btn2 {
            height: 2rem;
            width: 8rem;
            border-radius: 10px;
            color: white;
            background-color: #b17918;
            border: none;
        }

        .btn1:hover {
            background-color: #1577da;
            color: white;
        }

        .btn2:hover {
            background-color: #1577da;
        }

        .inputtext {
            height: 32px;
            width: 260px;
            text-align: center;
        }

        .inputname {
            height: 30px;
            width: 123px;
            text-align: center;
        }

        hr {
            color: blue;
        }

        select {
            height: 29px;
            width: 74px;
        }
    </style>


    <form id="maindiv" runat="server">

        <h1>Sign Up</h1>
        <p>It's quick and easy</p>
        <hr />
        <p>
            <input placeholder="First name" runat="server" class="inputname" id="txtFirstName" />
            <input placeholder="Last name" runat="server" class="inputname" id="txtLastName" />
        </p>
        <p>
            <input type="text" runat="server" placeholder="Enter email address/username" class="inputtext" id="txtEmail" /><br />
            <p />
        <p>
            <input type="password" runat="server" placeholder="Enter Password" class="inputtext" id="txtPassword" />

        </p>
        <div>
            <label>Date of birth</label>
            <select>
                <option>Day </option>
                <option>Monday</option>
                <option>Tuesday</option>
                <option>Wednesday</option>
                <option>Tuesday</option>
                <option>Friday</option>
                <option>Saturday</option>
                <option>Sunday</option>

            </select>
            <select>
                <option>Month </option>
                <option>January</option>
                <option>February</option>
                <option>March</option>
                <option>April</option>
                <option>May</option>
                <option>June</option>
                <option>July</option>
                <option>August</option>
                <option>September</option>
                <option>October</option>
                <option>November</option>
                <option>December</option>
            </select>
            <select>
                <option>Year</option>
                <option>2024</option>
                <option>2023</option>
                <option>2022</option>
                <option>2021</option>
                <option>2020</option>
                <option>2019</option>
                <option>2018</option>
                <option>2017</option>
                <option>2016</option>
                <option>2015</option>
                <option>2014</option>
                <option>2013</option>
                <option>2012</option>
                <option>2011</option>
                <option>2010</option>
                <option>2009</option>
                <option>2008</option>
                <option>2007</option>
            </select>
        </div>
        <br />
        <div style="display: flex; justify-content:center;gap: 1rem;padding-right:5rem;" runat="server">
            <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="form-label"></asp:Label>
            <br /><br />
            <asp:RadioButtonList ID="rblGender" runat="server"
                RepeatDirection="Horizontal" TextAlign="Left">
                <asp:ListItem Value="Male" Text="Male" CssClass="form-check-input"></asp:ListItem>
                <asp:ListItem Value="Female" Text="Female" CssClass="form-check-input"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <br />
        <p style="font-size: x-small;">
            By clicking Sign Up, you agree to our <a href="#">Terms, Privacy Policy</a> and <a href="#">Cookies Policy.</a>
            <br />
            You may receive SMS notifications from us and can opt out at any time.
        </p>
        <br />
        <div>
            <asp:Button runat="server" class="btn1" ID="btnRegister" OnClick="btnRegister_Click" Text="Register" />
            <asp:Button runat="server" class="btn2" Text="Clear" />
        </div>
    </form>

</asp:Content>
