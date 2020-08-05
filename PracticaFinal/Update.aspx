<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="PracticaFinal.Update" %>
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
        #form2 .w3-input {
            border: 1px solid #ccc;
            margin-bottom: 10px;
        }
        .changes {
            margin: 0;
            text-transform: uppercase;
            font-weight: bold;
            font-size: 18px;
            border-bottom: solid 1px #ccc;
        }
        #iscollegiate_number {
            font-weight: bold;
            font-size: 16px;
        }
        .w3-col.s4 .w3-btn {
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
            <h2>Update subscriber</h2>
        </div>
        <form id="form2" runat="server">
            <div class="w3-row">
                <div class="w3-col s3">
                    <div class="w3-container">
                        <asp:Label ID="selectedcollegiate_numberlabel" runat="server" Text="Select Collegiate Number to update"></asp:Label>
                        <asp:TextBox ID="selectedcollegiate_numberbox" runat="server" ToolTip="Enter Collegiate Number" class="w3-input"></asp:TextBox>
                        <asp:Button ID="Submit_Button" runat="server" Text="Search" class="w3-btn" OnClick="Submit_Button_Click" />
                    </div>
                </div>
                <div class="w3-col s4">
                    <div class="w3-container">
                        <asp:Label ID="namelabel" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="namebox" runat="server" ToolTip="Enter your Name" class="w3-input"></asp:TextBox>
                        <asp:Label ID="last_namelabel" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="last_namebox" runat="server" ToolTip="Enter your Last Name" class="w3-input"></asp:TextBox>
                        <asp:Label ID="agelabel" runat="server" Text="Age"></asp:Label>
                        <asp:TextBox ID="agebox" runat="server" ToolTip="Enter your Age" class="w3-input"></asp:TextBox>
                        <asp:Label ID="emaillabel" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="emailbox" runat="server" ToolTip="Enter your Email" class="w3-input"></asp:TextBox>
                        <asp:Label ID="passwordlabel" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="passwordbox" runat="server" ToolTip="Enter your Password" TextMode="Password" class="w3-input"></asp:TextBox>
                        <asp:Label ID="province_practicelabel" runat="server" Text="Province where you practice"></asp:Label>
                        <asp:TextBox ID="province_practicebox" runat="server" ToolTip="Enter your Province Practice" class="w3-input"></asp:TextBox>
                        <asp:Label ID="specialtylabel" runat="server" Text="Specialty"></asp:Label>
                        <asp:TextBox ID="specialtybox" runat="server" ToolTip="Enter your Specialty" class="w3-input"></asp:TextBox>
                    </div>
                </div>
                <div class="w3-col s5">
                    <div class="w3-container">
                        <p class="changes">Changes</p>
                        <p><asp:Label ID="iscollegiate_number" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedname" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedlast_name" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedage" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedemail" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedpassword" runat="server" Text=""></asp:Label>
                        <p><asp:Label ID="updatedprovince_practice" runat="server" Text=""></asp:Label></p>
                        <p><asp:Label ID="updatedspecialty" runat="server" Text=""></asp:Label></p>
                        <asp:HyperLink class="w3-btn" ID="HyperLink4" runat="server" Text="Refresh" NavigateUrl="http://127.0.0.1:8080/Update.aspx"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </form>
        <div class="buttons w3-container">
            <asp:HyperLink class="w3-btn" ID="HyperLink1" runat="server" Text="Home" NavigateUrl="http://127.0.0.1:8080/Default.aspx"></asp:HyperLink>
            <asp:HyperLink class="w3-btn" ID="HyperLink2" runat="server" Text="Create" NavigateUrl="http://127.0.0.1:8080/Create.aspx"></asp:HyperLink>
            <asp:HyperLink class="w3-btn" ID="HyperLink3" runat="server" Text="Delete" NavigateUrl="http://127.0.0.1:8080/Delete.aspx"></asp:HyperLink>
        </div>
</body>
</html>