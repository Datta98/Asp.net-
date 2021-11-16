<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="StateMangement.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:TextBox ID="FirstName" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="LastName" placeholder="Last Name"  runat="server" ></asp:TextBox>
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>
            <asp:Button ID="Restore" runat="server" Text="Restore" OnClick="Restore_Click" />
        </div>
    </form>
</body>
</html>
