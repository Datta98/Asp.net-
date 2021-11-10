<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="DataBindControls.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    
                    <div>
                         <table style="display: inline-block;" >
                        <tr>
                            <td >UserId</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >User Name</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >EmailID</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    </div>
                   
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
