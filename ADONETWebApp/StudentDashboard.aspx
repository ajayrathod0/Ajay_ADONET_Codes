<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="StudentDashboard.aspx.cs"
    Inherits="ADONETWebApp.StudentDashboard" MasterPageFile="~/MyLayout.Master" %>

<asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MainContentHolder">

    <div>
        <asp:HyperLink ID="linkCreateStudent" runat="server" NavigateUrl="~/CreateStudent.aspx">Create new student</asp:HyperLink>
    </div>

    <form runat="server">
        <h2>All Students</h2>
        <asp:GridView ID="gvStudents" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
            AutoGenerateColumns="false">

            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
            <Columns>
                <asp:BoundField DataField="RollNumber" HeaderText="Roll Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="TrainerId" HeaderText="TrainerName" />
                <asp:ImageField DataImageUrlField="ImagePath" HeaderText="Image"
                    ControlStyle-Height="50" ControlStyle-Width="50" />

               <%-- <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />--%>


            </Columns>
        </asp:GridView>
        <asp:Label runat="server" ID="lblMassage" ForeColor="Red"></asp:Label>
    </form>
</asp:Content>


