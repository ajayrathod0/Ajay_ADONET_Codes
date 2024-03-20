<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="TrainerDashboard.aspx.cs"
    Inherits="ADONETWebApp.TrainerDashboard" MasterPageFile="~/MyLayout.Master" %>

<%--<%@ OutputCache Duration="10" VaryByParam="none" %>--%>   <%--cache object ke liye --%>

<%--<%@ Register Src="~/UserControls/Advertisements.ascx" TagName="Advertisement" TagPrefix="MUC" %>--%>

<asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MainContentHolder">

    <div class="container">
        <div class="row">
            <div class="col-8">
                <form runat="server">
                    <asp:Label ID="lblMassage" runat="server"></asp:Label>
                    <h2>All Trainers</h2>
                    <asp:GridView ID="gvTrainers" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                        OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">

                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Trainer ID" ReadOnly="true" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="City" HeaderText="City" />
                            <asp:BoundField DataField="Experience" HeaderText="Experience" />
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                        </Columns>

                    </asp:GridView>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </form>
            </div>
           <%-- <div class="col-4 border border-3 border-danger">
                <muc:advertisement runat="server" id="Ads" />
            </div>--%>

        </div>

    </div>



</asp:Content>

