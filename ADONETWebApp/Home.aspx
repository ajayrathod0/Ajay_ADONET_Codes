<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="ADONETWebApp.Home" 
    MasterPageFile="~/MyLayout.Master" %>


<asp:Content ID="contentPage" runat="server" ContentPlaceHolderID="MainContectHolder">
    <br />
    <form runat="server">

    <input type="text" id="Text1" runat="server" /><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <hr />
    <div>
        <input type="button" value="Html button" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="ASPX Button" OnClick="Button1_Click" />

    </form>
    </div>
</asp:Content>
