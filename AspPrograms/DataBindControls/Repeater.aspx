<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="DataBindControls.Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border-collapse: collapse;
           
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        th {
            background-color: #6b6b69;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>USer Id</th>
                            <th>USer Name</th>
                            <th>Email</th>
                            <th>Password</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_name")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password")%>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
