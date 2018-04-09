<%@ Page language="c#" Inherits="WebApplication4.forms.new_user_option" CodeFile="new_user_option.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>new_user_option</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../Images/untitled.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:button id="btnenter" style="Z-INDEX: 101; LEFT: 424px; POSITION: absolute; TOP: 96px" runat="server"
				BorderWidth="3px" BorderStyle="Outset" BorderColor="Maroon" BackColor="#E0E0E0" Width="161"
				Text="NEW  CRIME RECORD" onclick="btnenter_Click"></asp:button><asp:textbox id="txtptn" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server"
				Width="8px" Height="8px" Visible="False"></asp:textbox><asp:button id="Button4" style="Z-INDEX: 104; LEFT: 424px; POSITION: absolute; TOP: 240px" runat="server"
				BorderWidth="3px" BorderStyle="Outset" BorderColor="Maroon" BackColor="#E0E0E0" Width="161px" Text="Logoff" onclick="Button4_Click"></asp:button><asp:button id="btnupdate" style="Z-INDEX: 103; LEFT: 424px; POSITION: absolute; TOP: 176px"
				runat="server" BorderWidth="3px" BorderStyle="Outset" BorderColor="Maroon" BackColor="#E0E0E0" Width="161" Text="UPDATE RECORDS" onclick="btnupdate_Click"></asp:button><asp:button id="btnview" style="Z-INDEX: 102; LEFT: 424px; POSITION: absolute; TOP: 136px" runat="server"
				BorderWidth="3px" BorderStyle="Outset" BorderColor="Maroon" BackColor="#E0E0E0" Width="161" Text="VIEW RECORDS" onclick="btnview_Click"></asp:button></form>
	</body>
</HTML>
