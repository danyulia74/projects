<%@ Page Title="" Language="C#" MasterPageFile="~/Promedic.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Myapplication.Default" %>

<asp:Content ID="diagnosticHeadContent" ContentPlaceHolderID="masterHeadCPH" runat="server">
    

    <title>My application main page</title>
    <link href="css/style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style18 {
            width: 174px;
            height: 34px;
        }
        .auto-style19 {
            width: 555px;
            height: 34px;
        }
        .auto-style20 {
            height: 34px;
        }
    </style>

</asp:Content>
<asp:Content ID="diagnisticBodyContent" ContentPlaceHolderID="masterBodyCPH" runat="server">
    <p>
    &nbsp;</p>

            </p>

        <h2>
            Welcome to main page
        </h2>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomerID" ErrorMessage="ID required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
                    <asp:RequiredFieldValidator ID="ReqValidatorID" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
                    <asp:RequiredFieldValidator ID="ReqValidatorID0" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtFirstName" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RangeValidator ID="validWeight" runat="server" ControlToValidate="txtWeight" ErrorMessage="Weight must be with accepted range" ForeColor="Red" MaximumValue="180" MinimumValue="35" Type="Double"></asp:RangeValidator>
        </p>
        <p>
            <asp:RangeValidator ID="validHeight" runat="server" ControlToValidate="txtHeight" ErrorMessage="Height must be with accepted range" ForeColor="Red" MaximumValue="250" MinimumValue="120" Type="Double"></asp:RangeValidator>
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lblCustomerID" runat="server" Enabled="False" Text="Customer ID"></asp:Label>
                &nbsp;&nbsp;
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtCustomerID" runat="server" Width="263px" CausesValidation="True"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCustomerID" Display="Dynamic" ErrorMessage="*" ForeColor="Red"><img src="images/warning.png" /></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style20">
                    </td>
            </tr>
                <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtLastName" runat="server" Width="262px" CausesValidation="True"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"><img src="images/warning.png" /></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="The name can be only with letters" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                    </td>
                <td class="auto-style3">
                    </td>
            </tr>
                <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="262px" CausesValidation="True"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"><img src="images/warning.png" /></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="The name can be only with letters" ForeColor="Red" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                    </td>
                <td class="auto-style11">
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblDoB" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDOB" runat="server" ReadOnly="True"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" BehaviorID="txtDOB_CalendarExtender" TargetControlID="txtDOB" />
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
&nbsp;
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td rowspan="7">
                    <asp:Calendar ID="CalendDOB" runat="server" OnSelectionChanged="CalendDOB_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblAdress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAddress" runat="server" Width="422px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPostaleCode" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPostaleCode" ErrorMessage="Postal Code is Incorrect" ForeColor="Red" ValidationExpression="[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtEmail" runat="server" Width="262px" CausesValidation="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="valEmailRegEx0" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"><img src="images/warning.png" /></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="valEmailRegEx" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the correct email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblHystory" runat="server" Text="Medical History"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:CheckBox ID="chkAllergies" runat="server" Text="Allergies" />
&nbsp;
                    <asp:CheckBox ID="chkDiabeties" runat="server" Text="Diabeties" />
&nbsp;
                    <asp:CheckBox ID="chkHBP" runat="server" Text="High Blood Pressure" />
&nbsp;//&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server">Others</asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblNewPatient" runat="server" Text="New Patient"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:RadioButton ID="rbtnNew" runat="server" GroupName="NewPatient" Text="New" />
&nbsp;
                    <asp:RadioButton ID="rbtnExisting" runat="server" GroupName="NewPatient" Text="Existing" />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="lblWeight" runat="server" Text="Weight"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtWeight" runat="server" CausesValidation="True" Width="128px"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtWeight" ErrorMessage="*" ForeColor="Red" MaximumValue="180" MinimumValue="35" Type="Double"><img src="images/warning.png" /></asp:RangeValidator>
                </td>
                <td class="auto-style14">
                    </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="lblHeight" runat="server" Text="Height"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtHeight" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtHeight" Display="Dynamic" ErrorMessage="*" ForeColor="Red" MaximumValue="250" MinimumValue="120" Type="Double"><img src="images/warning.png" /></asp:RangeValidator>
                </td>
                <td class="auto-style17">
                    </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;
        <p class="auto-style6">
            <asp:Button ID="btnSubmit" runat="server" Text="Set Appointment" OnClick="btnSubmit_Click" />
         &nbsp;&nbsp;
            <asp:Button ID="btnConsult" runat="server" OnClick="btnConsult_Click" PostBackUrl="~/Consultation.aspx" Text="Consultation" Width="109px" />
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
         </br>

        </p>
&nbsp;<div>
            Hello world!
        </div>
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>

</asp:Content>



