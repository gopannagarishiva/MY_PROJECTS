<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm20" CodeFile="property_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm20</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 248px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Italic="True" ForeColor="Maroon" Font-Size="X-Large">Property Details</asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 656px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 102; LEFT: 232px; POSITION: absolute; TOP: 96px" runat="server"
				Width="104px" ReadOnly="True" BorderStyle="Inset" BackColor="#FFE0C0"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 103; LEFT: 128px; POSITION: absolute; TOP: 96px" runat="server"
				Width="85px" Font-Bold="True" BorderStyle="None">Firno</asp:Label>
			<asp:Button id="buts_v" style="Z-INDEX: 104; LEFT: 240px; POSITION: absolute; TOP: 328px" runat="server"
				Text="Update &amp; Go Back" Width="160px" BackColor="#E0E0E0" BorderStyle="Outset" BorderColor="Black"
				BorderWidth="3px" onclick="buts_v_Click"></asp:Button>
			<asp:TextBox id="txtpv" style="Z-INDEX: 105; LEFT: 322px; POSITION: absolute; TOP: 270px" runat="server"
				ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 106; LEFT: 131px; POSITION: absolute; TOP: 270px" runat="server"
				ForeColor="Maroon">Total Value of Property (Rs.)</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 107; LEFT: 128px; POSITION: absolute; TOP: 136px" runat="server"
				Width="112px" ForeColor="Maroon">Property Details</asp:Label>
			<asp:TextBox id="txtpd" style="Z-INDEX: 108; LEFT: 128px; POSITION: absolute; TOP: 160px" runat="server"
				TextMode="MultiLine" Height="80px" Width="488px" ForeColor="Maroon"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 110; left: 455px; position: absolute; top: 324px" TabIndex="9"
                Text="Cancel" Width="128px" />
		</form>
	</body>
</HTML>
