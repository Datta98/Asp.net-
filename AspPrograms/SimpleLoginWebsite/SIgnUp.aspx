<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIgnUp.aspx.cs" Inherits="SimpleLoginWebsite.SIgnUp" %>

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
        <div>

            <div class="container pt-3" style="padding-left: 20%;">
                <h1>Sign Up</h1>
                <h6>Please fill this form to create an account</h6>

                <div class="form-group">
                    <asp:Label runat="server">User Name:</asp:Label>
                    <asp:TextBox runat="server" class="form-control col-4" ID="usr" name="username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="register" runat="server" ErrorMessage="Enter User Name" ControlToValidate="usr" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" for="email_id">Email Id:</asp:Label>
                    <asp:TextBox runat="server" class="form-control col-4" ID="email_id" name="emailid"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="register" ErrorMessage="Enter Valid emal id " ControlToValidate="email_id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email_id" ValidationGroup="register" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" for="pwd">Password:</asp:Label>
                    <asp:TextBox runat="server" TextMode="Password" class="form-control col-4" ValidationGroup="register" ID="pwd" name="passwd"></asp:TextBox>
                   
                </div>

                <div class="form-group">
                    <asp:Label runat="server" for="rep_pwd">Repeat Password:</asp:Label>
                    <asp:TextBox runat="server" type="password" class="form-control col-4" ID="rep_pwd" name="passwd"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="register" ErrorMessage="Password Does not match" ControlToValidate="rep_pwd" ControlToCompare="pwd"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" for="salary">Expected salary</asp:Label>
                    <asp:TextBox runat="server" class="form-control col-4" ID="salary" name="passwd"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="register" ErrorMessage="Enter betwn 100 to 500" ControlToValidate="salary" MaximumValue="500" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                </div>
                <p>By creating an account you agree to our <a href="#" style="color: dodgerblue">Terms & Privacy</a>.</p>

                <asp:Button runat="server" ID="Btn_register" ValidationGroup="register"  Text="Register" class="btn btn-primary col-2" OnClick="Btn_register_Click" />
                <asp:Button runat="server" ID="Btn_signin" Text="Sign In" class="btn btn-danger col-2" OnClick="Btn_signin_Click" />

                 <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" runat="server" />
                <div>
                    <asp:Label ID="msg" runat="server"></asp:Label>
                   
                </div>
            </div>

        </div>
    </form>
</body>
</html>
