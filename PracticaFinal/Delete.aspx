<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="PracticaFinal.Delete" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .title {
            padding-top: 50px;
            text-align: center;
            border-bottom: solid 1px #000;
            background-color: cornflowerblue;
        }
        .title h1 {
            font-size: 50px;
            font-weight: bold;
        }
        .subtitle {
            text-align: center;
            line-height: normal;
        }
        .subtitle h2 {
            margin-bottom: 0;
            font-size: 40px;
        }
        .subtitle p {
            margin-top: 0;
            font-style: italic;
        }
        .Grid td {
            border: solid 1px gray;
            font-family: Arial;
            padding: 5px 20px;
            text-align: left;
        }
        .GridHeader { 
            background-color: cornflowerblue;
            font-size: large;
            color: white;
            font-weight: bold;
        }
        .GridItem, .GridAltItem {
            font-size: large;
        }
        .GridItem {
            background-color: #ccc;
        }
        .GridAltItem {
            background-color: #fff;
        }
        #DataGrid1 {
            margin: auto;
        }
        .buttons {
            text-align: center;
            margin: 30px 0;
            padding-top: 30px;
            border-top: solid 1px #ccc;
        }
        .w3-btn {
            padding: 5px 20px;
            border-radius: 5px;
            background-color: cornflowerblue;
            text-decoration: none;
            margin: 0 5px;
            cursor: pointer;
            color: #fff;
        }
        .w3-btn:hover {
            background-color: #ccc;
        }
        .title_crud {
            margin: 30px auto;
            text-align: center;
            border-bottom: solid 1px #000;
            background-color: #ccc;
            max-width: 1279px;
        }
        #form2 {
            max-width: 1279px;
            margin: auto;
        }
        #form2 .w3-container {
            text-align: center;
        }
        #form2 .w3-input {
            border: 1px solid #ccc;
            margin-bottom: 10px;
        }
        .deletesubscriber {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="title w3-container">
        <h1>Specialized Medical Journal</h1>
    </div>
    <div class="subtitle w3-container">
        <h2>Subscribers</h2>
        <p>Confidential information</p>
    </div>
    <form id="form1" runat="server">
        <div class="w3-container">
            <asp:DataGrid ID="DataGrid1" runat="server" CssClass="Grid">
                <HeaderStyle CssClass="GridHeader"></HeaderStyle>
                <ItemStyle CssClass="GridItem"></ItemStyle>
                <AlternatingItemStyle CssClass="GridAltItem"></AlternatingItemStyle>
            </asp:DataGrid>
        </div>
    </form>
    <div class="title_crud w3-container">
        <h2>Delete subscriber</h2>
    </div>
    <form id="form2" runat="server">
        <div class="w3-container">
            <h4>List of Collegiate Numbers of subscribers</h4>
            <div><asp:ListBox ID="ListBox1" Width="500px" runat="server" Rows="10"/></div>
            <div class="deletesubscriber"><asp:Button ID="Submit_Button" runat="server" class="w3-btn" OnClick="Submit_Button_Click" Text="Delete subscriber"/></div>
        </div>
    </form>
    <div class="buttons w3-container">
        <asp:HyperLink class="w3-btn" ID="HyperLink1" runat="server" Text="Home" NavigateUrl="http://127.0.0.1:8080/Default.aspx"></asp:HyperLink>
        <asp:HyperLink class="w3-btn" ID="HyperLink2" runat="server" Text="Create" NavigateUrl="http://127.0.0.1:8080/Create.aspx"></asp:HyperLink>
        <asp:HyperLink class="w3-btn" ID="HyperLink3" runat="server" Text="Update" NavigateUrl="http://127.0.0.1:8080/Update.aspx"></asp:HyperLink>
    </div>
</body>
</html>