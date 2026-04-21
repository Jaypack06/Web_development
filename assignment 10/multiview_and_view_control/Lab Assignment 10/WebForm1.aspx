<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab_Assignment_10.WebForm1" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <table>
                        <tr>
                            <td colspan="3">
                                <h2>What's most important to you?</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Not annual Fee" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Cash Back"/>    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Building credit"/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View Id="View2" runat="server">
                    <table>
                        <tr>
                            <td colspan="3">
                                <h2>We need your legal name</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <label>First name:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Last name:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                            <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View Id="View3" runat="server">
                    <table class="table3">
                        <tr>
                            <td colspan="3">
                                <h2>Nice to meet you, let us know where you live</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Address:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>APT/suit(if applicable):</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                            <asp:Button ID="Button4" runat="server" Text="Back" OnClick="Button4_Click"/>
                            <asp:Button ID="Button5" runat="server" Text="Next" OnClick="Button5_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <table>
                        <tr>
                            <td colspan="3">
                                <h2>Please provide us with your email address and phone number</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Email Address:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Phone Number:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                            <asp:Button ID="Button6" runat="server" Text="Back" OnClick="Button6_Click" />
                            <asp:Button ID="Button7" runat="server" Text="Next" OnClick="Button7_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <table>
                        <tr>
                            <td colspan="3">
                                <h2>Thank you for your time, we will be in touch!</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button8" runat="server" Text="Back" OnClick="Button8_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button9" runat="server" Text="Submit" OnClick="Button9_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
