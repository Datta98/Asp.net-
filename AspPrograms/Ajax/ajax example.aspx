<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax example.aspx.cs" Inherits="Ajax.ajax_example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
