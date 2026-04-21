<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="Lab_Assignment_9.ServiceRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Submit a Service Request</h1>
        <div class="mini_head">
            <p>Service Issue</p>
        </div>
        <div class="CustName">
            <p>Customer Name:</p>
            <asp:TextBox ID="Textbox1" runat="server" MaxLength="50" TextMode="SingleLine"></asp:TextBox>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem Text="Select location" Value="" Selected="True" />
                <asp:ListItem Text="Living area" Value="Living area" />
                <asp:ListItem Text="Kitchen" Value="Kitchen" />
                <asp:ListItem Text="Bathroom" Value="Bathroom" />
                <asp:ListItem Text="Bedroom" Value="Bedroom" />
                <asp:ListItem Text="Storage room" Value="Storage room" />
            </asp:DropDownList>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="Select the problem Category" Value="" Selected="True" />
                <asp:ListItem Text="Appliance" Value="Appliance" />
                <asp:ListItem Text="Doors and locks" Value="Doors and locks" />
                <asp:ListItem Text="Electrical and lighting" Value="Electrical and lighting" />
                <asp:ListItem Text="Flooring" Value="Flooring" />
                <asp:ListItem Text="General" Value="General" />
            </asp:DropDownList>
        </div>
        <asp:DropDownList ID="DropDownList3" runat="server" Enabled="false">
            <asp:ListItem Text="Select Specific Problem" Value="" Selected="True" />
        </asp:DropDownList>

        <h3>Do we have your permission to enter the apartment?</h3>
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Text="At anytime" Value="anytime" />
                <asp:ListItem Text="Call for entry" Value="call" />
                <asp:ListItem Text="By appointment only" Value="appointment" />
            </asp:RadioButtonList>
        </div>
        <p>Please provide more detail, if needed.:</p>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
