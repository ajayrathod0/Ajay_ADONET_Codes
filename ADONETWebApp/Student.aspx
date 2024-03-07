<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs"
    Inherits="ADONETWebApp.Student" MasterPageFile="~/MyLayout.Master" %>

<asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MainContectHolder">

<<<<<<< HEAD
    <div >
        <asp:HyperLink ID="linkCreateStudent" runat="server" NavigateUrl="~/CreateStudent.aspx">
            Create Student</asp:HyperLink>


    </div>
    <form runat="server">
        <h2>All Students</h2>
        <asp:GridView ID="gvStudents" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />

        </asp:GridView>
    </form>

=======
    <div class="container">
        <h2>All Student</h2>
    </div>
>>>>>>> 0cd43fec0fba19d2264ac734a27ff4cdedd033bd
</asp:Content>
