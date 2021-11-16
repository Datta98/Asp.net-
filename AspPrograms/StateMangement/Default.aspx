<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StateMangement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="FirstName" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="LastName" placeholder="Last Name"  runat="server"></asp:TextBox>
            <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click" />

        </div>
    </form>
</body>
</html>
