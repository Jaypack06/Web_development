<%@ Page Language="C#" AutoEventWireup="true" Inherits="YourApp.Validations" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form with Validation</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Registration Form</h1>
        
        <table border="1" cellpadding="5" cellspacing="0">
            <tr>
                <td>User Name:</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server"
                        ControlToValidate="txtUserName"
                        Text="* Required"
                        ErrorMessage="User Name is required."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                        ControlToValidate="txtPassword"
                        Text="* Required"
                        ErrorMessage="Password is required."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        Text="* Required"
                        ErrorMessage="Confirm Password is required."
                        Display="Dynamic" />
                    <br />
                    <asp:CompareValidator ID="cvConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        Operator="Equal"
                        Text="* Passwords do not match"
                        ErrorMessage="Password and Confirm Password must match."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Mobile Number:</td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server"
                        ControlToValidate="txtMobile"
                        Text="* Required"
                        ErrorMessage="Mobile Number is required."
                        Display="Dynamic" />
                    <br />
                    <asp:RegularExpressionValidator ID="revMobile" runat="server"
                        ControlToValidate="txtMobile"
                        ValidationExpression="^[0-9]{10}$"
                        Text="* Must be 10 digits"
                        ErrorMessage="Mobile Number must be exactly 10 digits."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        Text="* Required"
                        ErrorMessage="Email is required."
                        Display="Dynamic" />
                    <br />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Text="* Invalid email"
                        ErrorMessage="Please enter a valid email address."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Website:</td>
                <td>
                    <asp:TextBox ID="txtWebsite" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvWebsite" runat="server"
                        ControlToValidate="txtWebsite"
                        Text="* Required"
                        ErrorMessage="Website is required."
                        Display="Dynamic" />
                    <br />
                    <asp:RegularExpressionValidator ID="revWebsite" runat="server"
                        ControlToValidate="txtWebsite"
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"
                        Text="* Invalid URL"
                        ErrorMessage="Please enter a valid website URL (e.g., http://www.example.com)."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td>Age:</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                        ControlToValidate="txtAge"
                        Text="* Required"
                        ErrorMessage="Age is required."
                        Display="Dynamic" />
                    <br />
                    <asp:RangeValidator ID="rvAge" runat="server"
                        ControlToValidate="txtAge"
                        MinimumValue="18"
                        MaximumValue="99"
                        Type="Integer"
                        Text="* Must be 18-99"
                        ErrorMessage="Age must be between 18 and 99."
                        Display="Dynamic" />
                </td>
            </tr>

            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>


        <asp:ValidationSummary ID="vsSummary" runat="server" 
            HeaderText="Error message:" 
            DisplayMode="BulletList" 
            ShowSummary="true" />


        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
    </form>
</body>
</html>