<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PracticaFinal.Default" %>
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
    <div class="buttons w3-container">
        <asp:HyperLink class="w3-btn" ID="HyperLink1" runat="server" Text="Create" NavigateUrl="http://127.0.0.1:8080/Create.aspx"></asp:HyperLink>
        <asp:HyperLink class="w3-btn" ID="HyperLink2" runat="server" Text="Update" NavigateUrl="http://127.0.0.1:8080/Update.aspx"></asp:HyperLink>
        <asp:HyperLink class="w3-btn" ID="HyperLink3" runat="server" Text="Delete" NavigateUrl="http://127.0.0.1:8080/Delete.aspx"></asp:HyperLink>
    </div>
</body>
</html>