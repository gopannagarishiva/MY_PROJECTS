<%@ Page language="c#" Inherits="WebApplication4.Tables.tables" CodeFile="updating_option.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>tables</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="papayawhip" background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="hlocc" style="Z-INDEX: 110; LEFT: 176px; POSITION: absolute; TOP: 128px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="occuranceofoffence.aspx"> Occurence of Offence</asp:HyperLink>
			<asp:Button id="Button2" style="Z-INDEX: 113; LEFT: 592px; POSITION: absolute; TOP: 272px" runat="server"
				Text="Logoff" Width="104px" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 112; LEFT: 592px; POSITION: absolute; TOP: 232px" runat="server"
				Text="Main Page" Width="104px" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 111; LEFT: 200px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Size="X-Large" Font-Italic="True" Font-Bold="True" ForeColor="#804000" Font-Underline="True">UPDATING DETAILS</asp:Label>
			<asp:HyperLink id="hlres" style="Z-INDEX: 109; LEFT: 408px; POSITION: absolute; TOP: 272px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="result_of_appleant.aspx"> Result of Appeal</asp:HyperLink>
			<asp:HyperLink id="hlcou" style="Z-INDEX: 108; LEFT: 408px; POSITION: absolute; TOP: 224px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="courtdisposal.aspx">Court Disposal</asp:HyperLink>
			<asp:HyperLink id="hlarr" style="Z-INDEX: 107; LEFT: 408px; POSITION: absolute; TOP: 176px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="arrest_surrender_form.aspx"> Arrest/Surrendered</asp:HyperLink>
			<asp:HyperLink id="hlsee" style="Z-INDEX: 106; LEFT: 408px; POSITION: absolute; TOP: 128px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="propertysearch_seezedinfo.aspx">  Property Seezed</asp:HyperLink>
			<asp:HyperLink id="hlcri" style="Z-INDEX: 105; LEFT: 408px; POSITION: absolute; TOP: 80px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="crime_details.aspx">Crime Details</asp:HyperLink>
			<asp:HyperLink id="hlacc" style="Z-INDEX: 104; LEFT: 176px; POSITION: absolute; TOP: 272px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="accused_suspect_details.aspx"> Accused Person</asp:HyperLink>
			<asp:HyperLink id="hlpro" style="Z-INDEX: 103; LEFT: 176px; POSITION: absolute; TOP: 224px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="property_details.aspx"> Property Details</asp:HyperLink>
			<asp:HyperLink id="hlcom" style="Z-INDEX: 102; LEFT: 176px; POSITION: absolute; TOP: 176px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="complainant_details.aspx"> Complainant</asp:HyperLink>
			<asp:HyperLink id="hlact" style="Z-INDEX: 101; LEFT: 176px; POSITION: absolute; TOP: 80px" runat="server"
				Width="144px" BackColor="#FFE0C0" BorderColor="#804040" BorderStyle="Double" NavigateUrl="acts_sections.aspx">Act&Section Table</asp:HyperLink>&nbsp;
		</form>
	</body>
</HTML>
