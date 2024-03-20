<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ADONETWebApp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            <h1>Web Form 2 page</h1>

            <asp:Label ID="lblMassage" runat="server"></asp:Label>
        </div>--%>


        <%--ASP SESSION 5--%>

        <table>
            <tr>
                <td>Name </td>
                <td>
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
