<%@ Control Language="C#" AutoEventWireup="true"
    CodeBehind="Header.ascx.cs" Inherits="ADONETWebApp.Header" %>


<nav class="navbar navbar-expand-sm bg-dark">
    <div class="container-fluid">
        <ul class="navbar-nav navbar-dark">
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx" CssClass="nav-link">Home</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/TrainerDashbord.aspx" CssClass="nav-link">Trainers</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student.aspx" CssClass="nav-link">Students</asp:HyperLink>
            </li>
        </ul>
    </div>
</nav>
