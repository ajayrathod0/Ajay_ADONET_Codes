﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerDashbord.aspx.cs"
    Inherits="ADONETWebApp.TrainerDashbord" MasterPageFile="~/MyLayout.Master" %>


    <asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MainContectHolder">
        <form runat="server">
        <div class="container">
            <h2>All Trainers</h2>

            <asp:GridView ID="gvTrainers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Label ID="lbMasaage" runat="server" ForeColor="red" Text="Label"></asp:Label>
        </form>
        </div>
    </asp:Content>
