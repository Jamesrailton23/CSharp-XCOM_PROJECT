<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="XCOM_PROJECT._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl="~/XcomLogo.png" Width="130px" />
        <br />
        <br />
        <br />
        <br />
&nbsp; Opertive New Assignment Form<br />
        <br />
&nbsp;Operative Code Name -
        <asp:TextBox ID="codename_textbox" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;New Assignment Name -
        <asp:TextBox ID="assignment_textbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;END DATE OF PERVIOUS ASSIGNMENT :<br />
&nbsp;<asp:Calendar ID="previous_calendar" runat="server"></asp:Calendar>
        <br />
&nbsp; START DATE OF NEW ASSIGNMENT :<br />
        <br />
&nbsp;<asp:Calendar ID="new_calender" runat="server" style="margin-bottom: 1px"></asp:Calendar>
        <br />
&nbsp;PROJECTED END OF ASSIGNMENT:<br />
        <br />
        <asp:Calendar ID="end_calendar" runat="server"></asp:Calendar>
        <br />
        <br />
        <br />
&nbsp;
        <asp:Button ID="button_assign" runat="server" OnClick="button_assign_Click" Text="Assign" />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="label_result" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
