<%@ Page language="c#" Inherits="WebApplication4.WebForm4" CodeFile="reports.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm4</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="papayawhip" background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 192px" runat="server"
				ForeColor="Maroon">FIR NUMBER</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 113; LEFT: 504px; POSITION: absolute; TOP: 248px" runat="server"
				BackColor="#E0E0E0" BorderWidth="3px" BorderColor="Maroon" BorderStyle="Outset" Height="32px"
				Text="OPTIONS" Width="104px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="lbl" style="Z-INDEX: 112; LEFT: 232px; POSITION: absolute; TOP: 224px" runat="server"
				ForeColor="Red" Visible="False">*THERE IS NO RECORD AVAILABLE WITH THIS FIR NUMBER*</asp:Label>
			<asp:Button id="btnlogoff" style="Z-INDEX: 110; LEFT: 504px; POSITION: absolute; TOP: 283px"
				runat="server" Width="104px" Text="Logoff User" Height="32px" BorderStyle="Outset" BorderColor="Maroon"
				BorderWidth="3px" BackColor="#E0E0E0" onclick="btnlogoff_Click"></asp:Button>
			<asp:Button id="btnexit" style="Z-INDEX: 109; LEFT: 505px; POSITION: absolute; TOP: 320px" runat="server"
				Width="104px" Text="EXIT" Height="32px" BorderStyle="Outset" BorderColor="Maroon" BorderWidth="3px"
				BackColor="#E0E0E0" onclick="btnexit_Click"></asp:Button>
			<asp:Label id="Label3" style="Z-INDEX: 108; LEFT: 264px; POSITION: absolute; TOP: 128px" runat="server"
				Width="216px" ForeColor="Green" Font-Size="Medium">Details of a Particular Case</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 107; LEFT: 280px; POSITION: absolute; TOP: 32px" runat="server"
				Width="152px" ForeColor="SaddleBrown" Font-Size="X-Large" Font-Italic="True" Font-Bold="True">REPORTS</asp:Label>
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 106; LEFT: 96px; POSITION: absolute; TOP: 160px"
				runat="server" Width="104px" ForeColor="#0000C0" BackColor="Transparent" BorderWidth="2px"
				BorderColor="#FFC0C0" Height="27px" BorderStyle="None" NavigateUrl="~/Reports/dates.aspx">By dates</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 105; LEFT: 96px; POSITION: absolute; TOP: 192px"
				runat="server" Width="104px" ForeColor="#0000C0" BackColor="Transparent" BorderWidth="2px"
				BorderColor="#FFC0C0" Height="27px" BorderStyle="None" NavigateUrl="~/Reports/police_station.aspx">Police station</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 104; LEFT: 96px; POSITION: absolute; TOP: 224px"
				runat="server" Width="104px" ForeColor="#0000C0" BackColor="Transparent" BorderWidth="2px"
				BorderColor="#FFC0C0" Height="27px" BorderStyle="None" NavigateUrl="~/Reports/grave.aspx">Type of case</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 103; LEFT: 96px; POSITION: absolute; TOP: 256px"
				runat="server" Width="104px" ForeColor="#0000C0" BackColor="Transparent" BorderWidth="2px"
				BorderColor="#FFC0C0" Height="27px" BorderStyle="None" NavigateUrl="~/Reports/district.aspx">District</asp:HyperLink>
			<asp:Button id="btnsubmit" style="Z-INDEX: 100; LEFT: 504px; POSITION: absolute; TOP: 192px"
				runat="server" Text="Submit" Width="104px" BorderStyle="Outset" Height="32px" BorderWidth="3px"
				BorderColor="Maroon" BackColor="#E0E0E0" onclick="btnsubmit_Click"></asp:Button>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 102; LEFT: 336px; POSITION: absolute; TOP: 192px"
				runat="server"></asp:TextBox>
		</form>
	</body>
</HTML>
