<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="DataBindControls.DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">UserId</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">User Name</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">EmailID</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Password</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
