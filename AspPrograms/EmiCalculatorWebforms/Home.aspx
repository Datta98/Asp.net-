<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmiCalculatorWebforms.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    
</head>
<body style="padding-top:20px">
    <form id="form1" runat="server">
 <div class="container" style="margin-left: 30%;"  >

        <h1>Excel University</h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager><asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="row" style="margin-left: 7%;">
         <asp:Button ID="Login" OnClick="login_Click" runat="server" class="btn btn-primary" Text="Login" /> &nbsp;
            <asp:Button ID="Signup" OnClick="signUp_Click" class="btn btn-danger"  runat="server" Text="Signup" />

        </div>

        <div id="login_div" runat="server">
            <div >
  <h5>Login form</h5>
  <form >
    <div class="form-group">
      <label for="email">UserName:</label>
      
        <asp:TextBox ID="username" runat="server" placeholder="Enter UserName" class="form-control col-md-4"></asp:TextBox>

    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
       <asp:TextBox ID="password" runat="server"  placeholder="Enter password" class="form-control col-md-4"></asp:TextBox>
    </div>
  
    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" class="btn btn-primary" Text="Login" />
  </form>
</div>
        </div>


        <div id="Signup_div" runat="server">
             <div class="container">
  <h5>SignUp form</h5>
  <form >
    <div class="form-group">
      <label >UserName:</label>
      
        <asp:TextBox ID="uname" runat="server" placeholder="Enter UserName" class="form-control col-md-4"></asp:TextBox>

    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
       <asp:TextBox ID="pwd" runat="server" placeholder="Enter password" class="form-control col-md-4"></asp:TextBox>
    </div>
       <div class="form-group">
      <label >email:</label>
       <asp:TextBox ID="email" runat="server" placeholder="Enter Emai" class="form-control col-md-4"></asp:TextBox>
    </div>
       <div class="form-group">
      <label >Phone No:</label>
       <asp:TextBox ID="phno" runat="server" placeholder="Enter Phone No" class="form-control col-md-4"></asp:TextBox>
    </div>
  
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary" Text="SignUp" />
  </form>
</div>
        </div>




    </ContentTemplate>
</asp:UpdatePanel>



 </div>
           <%-- <script src="Scripts/jquery-3.6.0.min.js"></script>    <script src="Scripts/bootstrap.bundle.js"></script>    <script type="text/javascript">        $(document).ready(function () {            //Close the bootstrap alert            $('#linkClose').click(function () {                $('#divError').hide('fade');            });            // Save the new user details            $('#btnRegister').click(function () {                $.ajax({                    url: 'https://localhost:44305/api/UserData',                    contentType: "application/json",                    method: 'POST',                    dataType: "json",                    data: JSON.stringify({                        UserName: $('#txtName').val(),                        email: $('#txtEmail').val(),                        password: $('#txtPassword').val(),                        phonenumber: $('#txtPhonenumber').val(),                        image: $('#txtImage').val()                    }),                    success: function () {                        $('#successModal').modal('show');                    },                    error: function (jqXHR) {                        $('#divErrorText').text(jqXHR.responseText);                        $('#divError').show('fade');                    }                });            });        });    </script>--%>

       
              
       
    </form>
</body>
</html>
