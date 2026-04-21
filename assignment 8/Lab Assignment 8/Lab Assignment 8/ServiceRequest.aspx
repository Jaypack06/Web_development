<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="Lab_Assignment_8.ServiceRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Service Request</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label CssClass="title" runat="server" ID="Label2" Text="Service Request Form"></asp:Label>
        <br />
        <asp:Label CssClass="Label1" ID="Label1" runat="server" Text="" > </asp:Label>
        <br />
        <asp:TextBox textmode="SingleLine" runat="server" maxlength="50" ID="TextBox1" placeholder="Enter your name"></asp:TextBox>
       
        <br />

        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>

        <br />

        <asp:TextBox ID="TextBox3" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>

        <br />
        <asp:Button ID="Welcome" runat="server" Text="Button" OnClick="Welcome_Click" />
        <br />
        <br />
        
        <br />
        <asp:Label ID="Submes" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click1" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://indianatech.edu" Target="_blank">Visit our website</asp:HyperLink>
        
    </form>
</body>
</html>
