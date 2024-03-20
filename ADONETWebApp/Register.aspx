<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ADONETWebApp.Register" MasterPageFile="~/MyLayout.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContentHolder">
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


    <form id="form1" runat="server">
        <div>
            <div id="maindiv">

                <h1>Sign Up</h1>
                <p>It's quick and easy</p>
                <hr />
                <p>
                    <input placeholder="First name" class="inputname" />
                    <input placeholder="Last name" class="inputname" />
                </p>
                <p>
                    <input type="text" placeholder="Mobile number or email address" class="inputtext" /><br />
                    <p />
                <p>
                    <input type="password" placeholder="Enter Password" class="inputtext" />

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

                    </select>
                </div>
                <br />

                <label>Gender</label>

                <input type="radio" name="Gender"> Male</input>
                <input type="radio" name="Gender"> Female</input>
                <br />
                <br />
                <p style="font-size: x-small;">
                    By clicking Sign Up, you agree to our <a href="#">Terms, Privacy Policy</a> and <a href="#">Cookies Policy.</a>
                    <br />
                    You may receive SMS notifications from us and can opt out at any time.
                </p>
                <br />
                <div>
                    <button class="btn1">Sign Up</button>
                    <button class="btn2">Clear</button>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
