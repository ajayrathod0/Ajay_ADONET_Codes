<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerDashboard.aspx.cs" Inherits="EFDatabaseFirstApproach.TrainerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Trainer Id</td>
                <td>
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    <asp:Button ID="btnLoad" runat="server" Text="Load" OnClick="btnload_Click" />
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Experience</td>
                <td>
                    <asp:TextBox ID="txtExperience" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear Form" OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMassage" runat="server"></asp:Label>
                </td>
            </tr>

        </table>

        <div>
            <h2>All Trainers</h2>
            <asp:GridView ID="gvTrainers" runat="server"></asp:GridView>
        </div>


    </form>
</body>
</html>
