<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Advertisements.ascx.cs" Inherits="ADONETWebApp.UserControls.WebUserControl1"  %>

<%@ OutputCache Duration="10" VaryByParam="none" %> <%--page load nahi honga 10 second tak --%>


<div class="bg-primary text-white p-3">
    <h2>Ads for you</h2>
    <span>First Advertisement</span>
    <span>First Advertisement</span>
    <asp:Label ID="lblTime" runat="server"></asp:Label>
</div>
