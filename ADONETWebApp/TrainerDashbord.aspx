<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerDashbord.aspx.cs"
    Inherits="ADONETWebApp.TrainerDashbord" MasterPageFile="~/MyLayout.Master" %>


    <asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MainContectHolder">
        <div class="container">
            <h2>All Trainers</h2>

            <asp:GridView ID="gvTrainers" runat="server"></asp:GridView>
            <asp:Label ID="lbMasaage" runat="server" ForeColor="red" Text="Label"></asp:Label>
        </div>
    </asp:Content>
