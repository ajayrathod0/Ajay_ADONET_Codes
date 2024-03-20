<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs"
    Inherits="ADONETWebApp.UserControls.Header" %>


<nav class="navbar navbar-expand-sm bg-dark mt-3">
    <div class="container-fluid">
        <ul class="navbar-nav navbar-dark">
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx" CssClass="nav-link">Home</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/TrainerDashboard.aspx" CssClass="nav-link">Trainers</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentDashboard.aspx" CssClass="nav-link">Students</asp:HyperLink>
            </li>

        </ul>
        <ul  class="navbar-nav navbar-dark">
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Login.aspx" CssClass="nav-link">Login</asp:HyperLink>
            </li>
        </ul>
    </div>
</nav>
