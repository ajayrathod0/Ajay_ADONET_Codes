<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs"
    Inherits="ADONETWebApp.CreateStudent" MasterPageFile="~/MyLayout.Master" %>


<asp:Content ID="mainContent" runat="server" ContentPlaceHolderID="MainContectHolder">
    <div class="container m-4">
        <form id="CreateStudentForm" runat="server" class="col-5">
            <div>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label> 
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            </div>

            <div>
                <asp:Label ID="lblTrainer" runat="server" Text="Trainer" CssClass="form-labal"></asp:Label>
                <asp:DropDownList ID="ddlTrainers" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnCreate" runat="server" Text="Create"
                    OnClick="btnCreate_Click" />
            </div>
            <div>
                <asp:Label ID="lblMassage" runat="server" CssClass="form-label" ForeColor="Red" Text="Label"></asp:Label>
            </div>
        </form>

    </div>
</asp:Content>
