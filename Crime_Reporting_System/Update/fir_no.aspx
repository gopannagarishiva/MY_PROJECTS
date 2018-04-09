<%@ Page language="c#" Inherits="WebApplication4.WebForm224" CodeFile="fir_no.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm4</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7" background="file:///C:\Inetpub\wwwroot\WebApplication4\untitled.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 392px; POSITION: absolute; TOP: 96px" runat="server"
				ForeColor="Maroon" Width="272px">PLEASE ENTER FIR NUMBER WHICH RECORD YOU WANT'S TO UPDATE</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 104; LEFT: 424px; POSITION: absolute; TOP: 168px" runat="server"
				ForeColor="Maroon" Font-Size="Large">FIR NUMBER</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 103; LEFT: 424px; POSITION: absolute; TOP: 248px" runat="server"
				Text="Submit" Width="160px" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Outset" onclick="Button1_Click"></asp:Button>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 102; LEFT: 424px; POSITION: absolute; TOP: 208px"
				runat="server"></asp:TextBox>
            <asp:Label ID="lbluperror" runat="server" Style="left: 592px; position: relative;
                top: 196px" Text="Enter Correct FIR Number" Visible="False"></asp:Label>
		</form>
	</body>
</HTML>
