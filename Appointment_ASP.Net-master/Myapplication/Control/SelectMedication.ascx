<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SelectMedication.ascx.cs" Inherits="Myapplication.Control.SelectMedication" %>
<p><h2>Select Medication</h2> 
<asp:ListBox ID="LBoxMedication" runat="server" Height="126px">
    <asp:ListItem>Aspirin</asp:ListItem>
    <asp:ListItem>Paracetamol</asp:ListItem>
    <asp:ListItem>Advil</asp:ListItem>
    <asp:ListItem>Polysporine</asp:ListItem>
    <asp:ListItem>Syntheroide</asp:ListItem>
</asp:ListBox>&nbsp;&nbsp; 
<asp:Button ID="btnSelect" runat="server" Text="&gt;&gt;" OnClick="btnSelect_Click" />&nbsp;&nbsp; 
<asp:ListBox ID="lBoxSelected" runat="server" Height="87px"></asp:ListBox>&nbsp;&nbsp;<asp:Button ID="btnPrescribe" runat="server" Text="Set Prescription" />
&nbsp;</p>


