<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationDemo.aspx.cs" Inherits="ADONETWebApp.ValidationDemo" MasterPageFile="~/MyLayout.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContentHolder">
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Pleae Enter Name" ControlToValidate="txtName" ForeColor="Red"
                        Display="Dynamic"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtAge" ForeColor="Red" Display="Dynamic"
                        ErrorMessage="Enter Your Age">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server"
                        ControlToValidate="txtAge" MinimumValue="1" Display="Dynamic"
                        MaximumValue="150" Type="Integer" ForeColor="Red"
                        ErrorMessage="Enter age between 1 and 150">
                    </asp:RangeValidator>

                    <%--Age Even number hi enter karna chaiye user uske liye validation nahi hai khud custom bana sakte hai--%>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Only Even number for age"
                        ForeColor="Red" Display="Dynamic" ControlToValidate="txtAge" 
                        OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="validateAgeAsEven"
                        EnableClientScript="true" >
                    </asp:CustomValidator>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtEmail" Display="Dynamic"
                        ErrorMessage="Please Enter Email" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtEmail" Display="Dynamic"
                        ErrorMessage="Email Pattern Not correct" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> <%--yah design me jakar erro massage par right click karke validate expression me dy default bane hai pattern email url bahut hai vaha se select kiya hai--%><%--yah design me jakar erro massage par right click karke validate expression me dy default bane hai pattern email url bahut hai vaha se select kiya hai--%>
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Email</td>
                <td>
                    <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtConfirmEmail" Display="Dynamic"
                        ErrorMessage="Enter Confirm Email" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtConfirmEmail"
                        ForeColor="Red" Operator="Equal" runat="server"
                        ControlToCompare="txtEmail"
                        ErrorMessage="Eamil not Match" Display="Dynamic">
                    </asp:CompareValidator>

                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="CreateEmployee" runat="server" OnClick="CreateEmployee_Click" Text="Create" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMassage" ForeColor="Red" runat="server"></asp:Label>
                </td>

            </tr>

        </table>

    </form>
</asp:Content>
