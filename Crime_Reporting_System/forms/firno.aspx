<%@ Page language="c#" Inherits="WebApplication4.Firno" CodeFile="Firno.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Firno</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/untitled.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:TextBox id="txtfirno" style="Z-INDEX: 100; LEFT: 393px; POSITION: absolute; TOP: 189px" runat="server"
				Width="113" tabIndex="1"></asp:TextBox>
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 297px; POSITION: absolute; TOP: 221px" runat="server"
				Width="336px" BackColor="Transparent" Font-Bold="True" ForeColor="Maroon">Please enter First Information Report About Case</asp:Label>
			<asp:TextBox id="txtfirinfo" style="Z-INDEX: 102; LEFT: 297px; POSITION: absolute; TOP: 253px"
				runat="server" Width="344px" Height="143px" TextMode="MultiLine"></asp:TextBox>
			<asp:Button id="btnnxt" style="Z-INDEX: 103; LEFT: 393px; POSITION: absolute; TOP: 429px" runat="server"
				Text="Continue" ForeColor="Black" BorderStyle="Outset" Font-Bold="True" tabIndex="2" BackColor="#E0E0E0"
				BorderColor="Maroon" Width="113" BorderWidth="3px" onclick="btnnxt_Click"></asp:Button>
			<asp:Label id="lblfirno" style="Z-INDEX: 104; LEFT: 393px; POSITION: absolute; TOP: 149px" runat="server"
				BackColor="Transparent" ForeColor="Maroon" Font-Bold="True" Width="113px">Ur Firno Is <b>
					:</b></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirinfo"
                ErrorMessage="First Information is must" Style="left: 662px; position: relative;
                top: 289px; z-index: 105;"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Haettenschweiler"
                Font-Size="XX-Large" ForeColor="#804040" Height="56px" Style="z-index: 107; left: 272px;
                position: absolute; top: 51px" Width="384px">CRIME RECORDS SYSTEM</asp:Label>
		</form>
	</body>
</HTML>
