<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm10" CodeFile="property_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm10</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../6.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 248px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Italic="True" ForeColor="Maroon" Font-Size="X-Large">Property Details</asp:Label>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpv"
                ErrorMessage="Enter Correct Data" Style="left: 436px; position: relative; top: 245px"
                ValidationExpression="([0-9]*)"></asp:RegularExpressionValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 108; LEFT: 280px; POSITION: absolute; TOP: 104px"
				runat="server" Width="108px" BackColor="#FFE0C0" BorderStyle="Inset"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 107; LEFT: 112px; POSITION: absolute; TOP: 104px" runat="server"
				Width="44px" Font-Bold="True">Fir No</asp:Label>
			<asp:Button id="buts_v" style="Z-INDEX: 106; LEFT: 280px; POSITION: absolute; TOP: 304px" runat="server"
				Text="save&amp;continue" tabIndex="3" BackColor="#E0E0E0" BorderStyle="Outset" BorderColor="Maroon"
				BorderWidth="3px" onclick="buts_v_Click"></asp:Button>
			<asp:TextBox id="txtpv" style="Z-INDEX: 105; LEFT: 280px; POSITION: absolute; TOP: 256px" runat="server"
				tabIndex="2"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 104; LEFT: 104px; POSITION: absolute; TOP: 256px" runat="server"
				ForeColor="Maroon">Total Value of Property (Rs.)</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 103; LEFT: 104px; POSITION: absolute; TOP: 176px" runat="server"
				Width="171px" ForeColor="Maroon">Property Details</asp:Label>
			<asp:TextBox id="txtpd" style="Z-INDEX: 102; LEFT: 280px; POSITION: absolute; TOP: 144px" runat="server"
				TextMode="MultiLine" Height="80px" Width="283px" tabIndex="1"></asp:TextBox>
		</form>
	</body>
</HTML>
