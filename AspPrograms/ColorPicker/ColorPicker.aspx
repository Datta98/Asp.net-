<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorPicker.aspx.cs" Inherits="ColorPicker.ColorPicker" %>

<%@ Register Src="~/ColorUc.ascx" TagPrefix="uc1" TagName="ColorUc" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:ColorUc runat="server" id="ColorUc" />           
        </div>
    </form>
</body>
</html>
