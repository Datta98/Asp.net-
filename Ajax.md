# Ajax
- AJAX is about updating parts of a web page, without reloading the whole page.
- AJAX = Asynchronous JavaScript and XML.
- AJAX is a technique for creating fast and dynamic web pages.
- AJAX allows web pages to be updated asynchronously by exchanging small amounts of data with the server behind the scenes. This means that it is possible to update parts of a web page, without reloading the whole page.

### Advantages 
- Reduces the traffic travels between the client and the server. 
- Better interactivity and responsiveness.

### ScriptManager Control
- The ScripManager Control manages the partial page updates for UpdatPanel controls that are on the ASP.NET web page or inside a user control on the web page.
- This control manages the client script for AJAX-enabled ASP.NET web page and ScripManager control support the feature as partial-page rendering and web-service calls.

```c#
//Syntax 
<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
```

### UpdatePanel Control
- You can refresh the selected part of the web page by using UpdatePanel control, Ajax updatepanel control contains a two child tags that is ContentTemplate and Triggers.
- In a ContenTemplate tag we used to place the user controls and the Trigger tag allows you to define certain triggers which will make the panel update its content.

```c#
//Syntax 
<asp:UpdatePanel ID="updatepnl" runat="server">  
<ContentTemplate>  
```

```c#
//Example
//ajax example.aspx
      <div>
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
```

```c#
//Example
//ajax example.aspx.cs
       public partial class ajax_example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "server time is" + DateTime.Now.ToLongTimeString();

            Timer1.Enabled = true;
            Timer1.Interval = 3000;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "server time is" + DateTime.Now.ToLongTimeString();
            Label1.ForeColor = System.Drawing.Color.Blue;
        }
    }
```
