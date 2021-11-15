<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleLoginWebsite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container pt-5">
            <div style="float: left; width: 48.5%; padding: 10px; height: 630px;">
                <img class="col-md-8" src="educ.jpg" />
            </div>
            <div style="float: left; width: 48.5%; padding: 10px; height: 630px;">
                <h2>Login Here</h2>

          
                <div class="form-group">
                    <asp:Label runat="server" for="usr">Email ID:</asp:Label>
                    <asp:TextBox runat="server" class="form-control col-6" ID="usr" name="username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter email" ValidationGroup="login" ControlToValidate="usr"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" for="pwd">Password:</asp:Label>
                    <asp:TextBox type="password" class="form-control col-6" ID="pwd" runat="server" name="password"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ValidationGroup="login" ControlToValidate="pwd"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="Btn_signin" runat="server" ValidationGroup="login" Text="Sign In" class="btn btn-primary col-3"  OnClick="Btn_signin_Click" />
                <asp:Button ID="Btn_signup" runat="server" Text="Sign Up" class="btn btn-danger col-3" OnClick="Btn_signup_Click" />

                <div>
                    <asp:Label ID="display" runat="server"></asp:Label>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
