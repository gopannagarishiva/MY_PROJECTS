<%@ Page language="c#" Inherits="WebApplication4.WebForm3" CodeFile="user_option.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm3</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/baground.jpg" bgcolor="#999999" bgproperties="fixed">
		<form id="Form1" method="post" runat="server">
			<asp:Button id="btnview" style="Z-INDEX: 101; LEFT: 296px; POSITION: absolute; TOP: 112px" runat="server"
				Text="VIEW RECORD" Width="136px" tabIndex="1" ForeColor="Peru" BackColor="#E0E0E0" Font-Bold="True"
				Height="32px" onclick="btnview_Click"></asp:Button>
			<asp:Button id="btnlogoff" style="Z-INDEX: 105; LEFT: 296px; POSITION: absolute; TOP: 249px"
				runat="server" Text="Logoff" Width="135px" ForeColor="Peru" BackColor="#E0E0E0" Font-Bold="True" onclick="btnlogoff_Click" Height="30px"></asp:Button>
            &nbsp;
			<asp:Button id="btnnew" style="Z-INDEX: 102; LEFT: 296px; POSITION: absolute; TOP: 168px" runat="server"
				Text="NEW RECORD" Width="136px" tabIndex="2" ForeColor="Peru" BackColor="#E0E0E0" Font-Bold="True"
				Height="32px" onclick="btnnew_Click"></asp:Button>
		</form>
	</body>
</HTML>
