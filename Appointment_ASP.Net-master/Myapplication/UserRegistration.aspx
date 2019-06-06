<%@ Page Title="" Language="C#" MasterPageFile="~/Promedic.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Myapplication.UserRegistration" %>
<asp:Content ID="diagnosticHeadContent" ContentPlaceHolderID="masterHeadCPH" runat="server">

    <title></title>
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-styleTable {
            width: 100%;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            height: 30px;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 175px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 175px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style18 {
            width: 936px;
        }
        .auto-style19 {
            width: 936px;
            height: 30px;
            margin-left: 40px;
        }
        .auto-style20 {
            height: 26px;
            width: 936px;
        }

        </style>

</asp:Content>
<asp:Content ID="diagnisticBodyContent" ContentPlaceHolderID="masterBodyCPH" runat="server">
    <p>
    &nbsp;</p>
        
            <br />
            <h2>Please, enter your login and password to sign in:&nbsp;</h2>
            <p>
                <asp:CompareValidator ID="ComValidPassword" runat="server" ErrorMessage="Password is not correct" ForeColor="Red" ControlToCompare="txtConfPassword" ControlToValidate="txtPassword"></asp:CompareValidator>
            </p>
            <p>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="Password retype is not valide" ForeColor="Red"></asp:CompareValidator>
            </p>
            <table class="auto-styleTable">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtLogin" runat="server" Width="182px" CausesValidation="True"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegValidLogin" runat="server" ControlToValidate="txtLogin" ErrorMessage="The name can be only with letters" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtPassword" runat="server" Width="179px" CausesValidation="True" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="ComValidPasswordStar" runat="server" ErrorMessage="*" ForeColor="Red" ControlToCompare="txtConfPassword" ControlToValidate="txtPassword"></asp:CompareValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Confirm password"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtConfPassword" runat="server" CausesValidation="True" Width="182px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorStar" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Not a robot!"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtNotRobot" runat="server" Width="178px" ValidationGroup="robot" ViewStateMode="Enabled"></asp:TextBox>
&nbsp; Type a number divisible by 5&nbsp;
                        <asp:CustomValidator ID="CustomValidator1" Enabeled="true" runat="server" ClientValidationFunction="validateNumberJS" ControlToValidate="txtNotRobot" ErrorMessage="Your number is not correct" ForeColor="Red"  ClientIDMode="AutoID" Display="Dynamic" ValidateRequestMode="Enabled" ValidationGroup="robot" ViewStateMode="Enabled"></asp:CustomValidator>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
            

        </div>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="robot" />
        </p>
</asp:Content>


