<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ColorUc.ascx.cs" Inherits="ColorPicker.ColorUc" %>
<link href="colorPick.css" rel="stylesheet" />
<div class="picker">
    Red
                <input type="range" min="0" max="255" step="1" id="red" value="115" />
    Green
                <input type="range" min="0" max="255" step="1" id="green" value="10" />
    Blue
                <input type="range" min="0" max="255" step="1" id="blue" value="162" />
    <br />
    Color :<div id="display"></div>


    
</div>
<script type="text/javascript">
    var input = document.querySelectorAll("input");
    for (var i = 0; i < input.length; i++) {
        input[i].addEventListener("input", function () {
            var red = document.getElementById("red").value,
                green = document.getElementById("green").value,
                blue = document.getElementById("blue").value;
            var display = document.getElementById("display");
            display.style.background = "rgb(" + red + ", " + green + ", " + blue + ")";
        });
    }
</script>
