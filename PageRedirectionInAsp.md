# Page Redirect in ASP.NET
There are Some methods for redirect one page to another<br>
1)Response.Redirect
<br>
2)Server.Transfer
<br>
3)Server.Execute
<br>
4)Cross Page Postback
### 1) Response.Redirect
It redirects a client to a new URL. Specifies the new URL and whether execution of the current page should terminate.

```C# 
// Syntax
// Default.aspx
protected void Button1_Click(object sender, EventArgs e)
{
    Response.Redirect("Home.aspx");
}
```
- Note: "Home.aspx" is your second web page name 

When processing the client request when a web server encounters the code block response.redirect with the location URL to be redirected it will send back a response header to the client then the client initiates a get request of the new page.and the URL will change in the address bar.

### 2) Server.Transfer
It is a navigation technique in an ASP.NET web application to move from one web form to another on the same server.

```C#
// Syntax
// Default.aspx
protected void Button1_Click(object sender, EventArgs e)
{
    Server.Transfer("Home.aspx");
}
```
When terminates execution of the current page and starts execution of a new page on the specified path i.e. internally within IIS. Therefore the URL in the browser address bar will not be changed. The page you transfer to must be an aspx page in the same web site.

### 3) Server.Execute

It is also a navigation technique similar to server.transfer but has a different behavior when doing the process.

```C#
// Syntax
// Default.aspx
protected void Button1_Click(object sender, EventArgs e)
{
    Server.Execute("Home.aspx");
}
```
- When using the server.Exceute method for navigation it helps to retain the execution control from the source web form.
- In the above syntax default.aspx is a source web form from where we have navigated to Home.aspx using server.exceute. When the control finds the code block of navigation it moved the control and starts processing the Home.aspx but does not leave the control from default.aspx and after completion of the target web form control again move to the source web form and execute the further code processing on default.aspx page.

### 4) Cross Page Postback
- The Cross Page posting technique allows a web form to post on another web form on button click. 
- It means you are posting form data from one page to another page.
- The PostbackUrl property of the button is set to the page where you want to do cross-page posting.
```C#
// Syntax
// Default.aspx
<form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          
            <asp:Button ID="Button2" runat="server" Text="Button" PostBackUrl="~/Home.aspx" />
        </div>
</form>
```

```C#

// Home.aspx.cs
     protected void Page_Load(object sender, EventArgs e)
     {
       if(PreviousPage != null && PreviousPage.IsCrossPagePostBack)
          {
              TextBox textBox = (TextBox)PreviousPage.FindControl("TextBox1");
              Label1.Text = "Welcome" + textBox.Text;
          }
     }
```


