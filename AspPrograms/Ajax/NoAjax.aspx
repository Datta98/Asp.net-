<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoAjax.aspx.cs" Inherits="Ajax.NoAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
