<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ADONETWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Web Form 1 Page</h1>

            <%--USING hyperline : open ho jayenga google bhi or another page--%>
            <%--  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.com">Visit Google</asp:HyperLink>
           |
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="WebForm2.aspx">visit Web Form 2</asp:HyperLink>--%>


            <%-- USING POSTBACK URL :open nahi honga  google 405 code  or another page bhi webForm.aspx page--%>
            <%--            <asp:Button PostBackUrl="http://www.google.com" ID="Button1" runat="server" Text="Visit Google" /> 
            <asp:Button PostBackUrl="~/WebForm2.aspx" ID="Button2" runat="server" Text="Visit Web Form page 2" />--%>


            <%-- USING Server.Transfer codebehind file me :open nahi honga  google 405 code  or another page bhi webForm.aspx page url change nahi honga--%>
            <%-- USING Server.Execute codebehind file me :open nahi honga  google 405 code(usi page pa response bejta hai)  or btn click karne par page ka content dono page ka content aayenga or url vahi hai  webform 1 ki--%>
            <%-- USING Response.Redirect codebehind file me :open  honga  google  or url bhi change hongi or webfor2.aspx ka content bhi aayenga--%>
            <%-- <asp:Button runat="server" ID="button2" Text="Visit Google" OnClick="GoogleClick_visit" />
            <asp:Button runat="server" ID="button1" Text="Visit Webform2" OnClick="web2_visit" />
            <br />
            <asp:Label ID="lbltext" runat="server" Text=""></asp:Label>

            <hr />
            <asp:Button runat="server" ID="button3" Text="Visit Google" OnClientClick="window.open('http://www.google.com')"/>
            <asp:Button runat="server" ID="button4" Text="Visit Webform2" OnClientClick="window.open('WebForm2.aspx')"/>--%>


            <%-- click button Number Increment--%>
            <%-- <asp:HiddenField ID="hdnNumber" Value="0" runat="server" />
            Number : <asp:TextBox runat="server" ID="txtNumber"></asp:TextBox>
            <asp:Button runat="server" Text="Number Increment" OnClick="BtnNumber_Increment_Click" />--%>

            <%--another page me use nahi hota viewState--%>
            <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm2.aspx">Web Form 2 Page</asp:HyperLink>--%>
       
            
        





            <%--ASP SESSEIN - 5--%>

            <%--Task--%>
            <div>
                <h3>Totel Visits</h3>
                <asp:Label ID="lblTotel" runat="server" ></asp:Label>


                <h3>Unique Visits</h3>
                <asp:Label ID="lblUnique" runat="server" ></asp:Label>
            </div>







            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnRedirect" runat="server" Text="Web Form 2 Page" 
                             OnClick="btnRedirect_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
