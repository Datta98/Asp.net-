<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PageRedirect.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          
           <%-- <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />--%>
            <asp:Button ID="Button2" runat="server" Text="Button" PostBackUrl="~/Home.aspx" />
        
        </div>
    </form>
</body>
</html>
