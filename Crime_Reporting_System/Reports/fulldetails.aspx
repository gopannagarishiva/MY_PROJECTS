<%@ Page language="c#" Inherits="WebApplication4.Reports.fulldetails" CodeFile="fulldetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>fulldetails</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="papayawhip" background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:linkbutton id="lbpropsiezed" style="Z-INDEX: 111; LEFT: 32px; POSITION: absolute; TOP: 328px"
				runat="server" Width="144px" Height="20px" onclick="lbpropsiezed_Click">Property Seezed</asp:linkbutton>
			<asp:Label id="Label1" style="Z-INDEX: 117; LEFT: 248px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Size="Large" Font-Bold="True" ForeColor="#804040" Font-Italic="True">FULL DETAILS OF CASE</asp:Label>
			<asp:linkbutton id="lbfir" style="Z-INDEX: 116; LEFT: 32px; POSITION: absolute; TOP: 40px" runat="server"
				Height="20px" Width="145px" onclick="lbfir_Click">First Information</asp:linkbutton>
			<asp:Image id="Image1" style="Z-INDEX: 115; LEFT: 648px; POSITION: absolute; TOP: 0px" runat="server"
				Height="120px" Width="121px" ImageUrl="~/Images/d.jpg"></asp:Image>
            &nbsp;
			<asp:Button id="Button1" style="Z-INDEX: 113; LEFT: 33px; POSITION: absolute; TOP: 391px" runat="server"
				Width="144px" Text="Back" BackColor="#E0E0E0" BorderColor="#804000" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="lbldis" style="Z-INDEX: 112; LEFT: 352px; POSITION: absolute; TOP: 56px" runat="server"
				BackColor="Transparent" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:Label><asp:linkbutton id="lbcompdet" style="Z-INDEX: 110; LEFT: 32px; POSITION: absolute; TOP: 168px"
				runat="server" Width="145px" Height="20px" onclick="lbcompdet_Click">Complainant</asp:linkbutton><asp:linkbutton id="lboofoffence" style="Z-INDEX: 109; LEFT: 32px; POSITION: absolute; TOP: 264px"
				runat="server" Width="145px" Height="24px" onclick="lboofoffence_Click">Occurence of Offence</asp:linkbutton><asp:linkbutton id="lbrofappeal" style="Z-INDEX: 108; LEFT: 32px; POSITION: absolute; TOP: 360px"
				runat="server" Width="144px" Height="20px" onclick="lbrofappeal_Click">Result of Appeal</asp:linkbutton><asp:linkbutton id="lbproperty" style="Z-INDEX: 107; LEFT: 32px; POSITION: absolute; TOP: 296px"
				runat="server" Width="145px" onclick="lbproperty_Click">Property</asp:linkbutton><asp:linkbutton id="lbcrtdis" style="Z-INDEX: 106; LEFT: 32px; POSITION: absolute; TOP: 200px" runat="server"
				Width="145px" Height="20px" onclick="lbcrtdis_Click">Court Disposal</asp:linkbutton><asp:linkbutton id="lbcrimedet" style="Z-INDEX: 105; LEFT: 32px; POSITION: absolute; TOP: 232px"
				runat="server" Width="145px" Height="20px" onclick="lbcrimedet_Click">Crime Details</asp:linkbutton><asp:linkbutton id="lbarr_suren" style="Z-INDEX: 104; LEFT: 32px; POSITION: absolute; TOP: 136px"
				runat="server" Width="144px" Height="20px" onclick="lbarr_suren_Click">Arrest/Surrendered</asp:linkbutton><asp:linkbutton id="lbact_sec" style="Z-INDEX: 103; LEFT: 32px; POSITION: absolute; TOP: 104px"
				runat="server" Width="145px" Height="20px" onclick="lbact_sec_Click">Act&Section</asp:linkbutton><asp:linkbutton id="lbaccusedperson" style="Z-INDEX: 102; LEFT: 32px; POSITION: absolute; TOP: 72px"
				runat="server" Width="145px" Height="20px" onclick="lbaccusedperson_Click">Accused Person</asp:linkbutton>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 328px; POSITION: absolute; TOP: 180px"
				runat="server" Width="184px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Mode="NumericPages" />
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataGrid>&nbsp;
		</form>
	</body>
</HTML>
