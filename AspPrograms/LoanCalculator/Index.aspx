<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LoanCalculator.Index" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class=" main">


            <div class="container">
                <div>
                    <h1>
                        <img src="Photo/excel_logo.png" />
                        Excel Bank</h1>
                </div>

                <br />
                <h2>Credit Card EMI Calculator</h2>
                <div class="row" style="border: solid">
                    <div class="col-md-6 border-right border-dark">
                        <h2>Type of EMI</h2>

                        <h5>Transaction Amount</h5>
                        <div class="slidecontainer row">
                            <input runat="server" oninput="myfunction1()" type="range"  min="1500" max="999999" value="1500" class="slider col-md-6 " id="loan_amt" style="padding: 0; margin-left: 2%;" />
                            <p class="col-md-5">
                                <input class="col-md-8" runat="server" onchange="myfun4()"  id="demo" value="1500" type="text"/>
                            </p>
                        </div>
                        <h5>Tenure</h5>
                        <div class="slidecontainer row">
                            <input oninput="myfunction2()" runat="server" type="range" min="3" max="18" value="3" step="3" class="slider1 col-md-6 " id="tenure" style="padding: 0; margin-left: 2%;" />
                            <p class="col-md-5"> <input class="col-md-8" runat="server" onchange="myfun5()" type="text" value="3" id="demo1"/> Months</p>
                        </div>

                        <h5>Rate of Intrest Per Annum(%)</h5>
                        <div class="slidecontainer row">
                            <input oninput="myfunction3()" runat="server" type="range" min="1" max="15" value="1" step="0.01" class="slider2 col-md-6 " id="interest" style="padding: 0; margin-left: 2%;" />
                            <p class="col-md-5">
                                <input class="col-md-8" runat="server" onchange="myfun6()"  type="text" value="1" id="demo2"/>
                                

                            </p>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Calculate" Class="btn btn-danger" OnClick="Button1_Click" />

                        <div class="row">
                            <p class="col-md-6" style="margin: 0;">Monthly Emi</p>
                            <span>Rs.</span>
                            <asp:Label ID="lbl_monthlyemi" runat="server"></asp:Label>
                        </div>
                        <div class="row">
                            <p class="col-md-6" style="margin: 0;">Total Interest Amount</p>
                            <span>Rs.</span>
                            <asp:Label ID="lbl_totalinterestamt" runat="server"></asp:Label>
                        </div>
                        <div class="row">
                            <p class="col-md-6" style="margin: 0;">Total Amount Payable</p>
                            <span>Rs.</span>
                            <asp:Label ID="lbl_totalamountpayable" runat="server"></asp:Label>
                        </div>
                        <p style="font-size:small;    margin-bottom: 0;">Note:- Loan principal amount should not be greater than the Credit Limit of the Card.</p>
                    </div>

                    <div class="col-md-6">

                        <div class="table-responsive">
                            <h3>Amount and Interest</h3>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:RadioButtonList ID="RadioButtonList1" AutoPostBack="True" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                        <asp:ListItem Selected="True">Table </asp:ListItem>
                                        <asp:ListItem>Graph</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <div id="emitable" runat="server">


                                        <asp:GridView ID="GridView1" runat="server">
                                            <Columns>
                                            </Columns>
                                        </asp:GridView>

                                    </div>

                                    <div id="emigraph" runat="server">

                                        <asp:Chart ID="Chart1" runat="server">
                                            <Series>
                                                <asp:Series Name="Series1"></asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>

                                    </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>



                </div>
            </div>
        </div>



    </form>
</body>



<script>

    function myfunction1() {

        var slider = document.getElementById("loan_amt");
        var output = document.getElementById("demo");
        output.value = slider.value;
       
    }


    function myfun4() {
        var slider = document.getElementById("loan_amt");
        var output = document.getElementById("demo");
        slider.value = output.value;
    }
    

    function myfunction2() {
        var slider1 = document.getElementById("tenure");
        var output1 = document.getElementById("demo1");
        output1.value = slider1.value;
    }

    function myfun5() {
        var slider1 = document.getElementById("tenure");
        var output1 = document.getElementById("demo1");
        slider1.value = output1.value;
    }

    function myfunction3() {
        var slider2 = document.getElementById("interest");
        var output2 = document.getElementById("demo2");
        output2.value = slider2.value;
    }

    function myfun6() {
        var slider2 = document.getElementById("interest");
        var output2 = document.getElementById("demo2");
        slider2.value = output2.value;
    }

</script>



</html>
