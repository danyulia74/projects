
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCAppTiming.ascx.cs" Inherits="Myapplication.UCAppTiming" %>
<style type="text/css">


        .auto-style2 {
            margin-left: 0px;
        }
    .auto-style2 {
    width: 100%;
}

</style>
    <h4>Appointment Date</h4>
        <h5>&nbsp;<asp:Calendar ID="Calendar1" runat="server" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px" ViewStateMode="Disabled"></asp:Calendar>
        </h5>
         <h4>Appointment start time&nbsp; </h4>
        <p>
            <asp:DropDownList ID="ddlStartTime" runat="server" ValidationGroup="ValCompareTimeEnd" OnTextChanged="ddlStartTime_TextChanged" CausesValidation="True">
            </asp:DropDownList>
        </p>
         <h4>Appointment end time</h4>
        <p>
            <asp:DropDownList ID="ddlEndTime" runat="server" ValidationGroup="ValCompareTimeEnd" CausesValidation="True" OnTextChanged="ddlEndTime_TextChanged" OnSelectedIndexChanged="ddlEndTime_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
            <br />
 
            <asp:CompareValidator ID="ValCompareTimeEnd" runat="server" ErrorMessage="End time must be after start time" ControlToValidate="ddlEndTime" ControlToCompare="ddlStartTime" ForeColor="red" Operator="GreaterThan">*</asp:CompareValidator>

            &nbsp;&nbsp;&nbsp;&nbsp;