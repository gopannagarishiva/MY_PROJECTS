<%@ Page language="c#" Inherits="WebApplication4.Reports.nongrave" CodeFile="police_station.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>nongrave</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 88px; WIDTH: 568px; POSITION: absolute; TOP: 136px; HEIGHT: 52px"
				cellSpacing="1" cellPadding="1" width="568" border="1">
				<TR>
					<TD style="WIDTH: 85px">
						<asp:Label id="Label6" runat="server" ForeColor="Maroon">From Date</asp:Label></TD>
					<TD style="WIDTH: 151px">
						<asp:DropDownList id="ddlfmonth" runat="server" Width="41px"></asp:DropDownList>
						<asp:DropDownList id="ddlfday" runat="server" Width="40px" Height="14px"></asp:DropDownList>
						<asp:DropDownList id="ddlfyear" runat="server" Width="56px"></asp:DropDownList></TD>
					<TD style="WIDTH: 36px"></TD>
					<TD style="WIDTH: 96px">
						<asp:Label id="Label5" runat="server" ForeColor="Maroon">To Date</asp:Label></TD>
					<TD>
						<asp:DropDownList id="ddltmonth" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltday" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltyear" runat="server" Width="56px"></asp:DropDownList></TD>
				</TR>
			</TABLE>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 106; LEFT: 79px; POSITION: absolute; TOP: 302px"
				runat="server" Width="600px" Height="144px" BorderWidth="1px" BorderStyle="None" BorderColor="Blue"
				BackColor="White" CellPadding="3">
				<SelectedItemStyle Font-Bold="True" Wrap="False" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
				<EditItemStyle Wrap="False"></EditItemStyle>
				<AlternatingItemStyle Wrap="False" BackColor="#F7F7F7"></AlternatingItemStyle>
				<ItemStyle Wrap="False" ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
				<HeaderStyle Font-Bold="True" Wrap="False" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
				<FooterStyle Wrap="False" ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
				<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:DropDownList id="ddlps" style="Z-INDEX: 105; LEFT: 368px; POSITION: absolute; TOP: 96px" runat="server"
				Width="142px">
				<asp:ListItem Value="kukatpally">kukatpally</asp:ListItem>
				<asp:ListItem Value="S.R.nagar">S.R.nagar</asp:ListItem>
				<asp:ListItem Value="PanjaGutta">PanjaGutta</asp:ListItem>
				<asp:ListItem Value="Jubllihills">Jubllihills</asp:ListItem>
				<asp:ListItem Value="BanjaraHills">BanjaraHills</asp:ListItem>
				<asp:ListItem Value="Nampally">Nampally</asp:ListItem>
				<asp:ListItem Value="TukaramGate">TukaramGate</asp:ListItem>
				<asp:ListItem Value="Balanagar">Balanagar</asp:ListItem>
			</asp:DropDownList>
			<asp:Button id="Button2" style="Z-INDEX: 103; LEFT: 392px; POSITION: absolute; TOP: 216px" runat="server"
				Width="91px" Text="GO BACK" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 101; LEFT: 240px; POSITION: absolute; TOP: 216px" runat="server"
				Width="91px" Text="SUBMIT" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label4" style="Z-INDEX: 100; LEFT: 216px; POSITION: absolute; TOP: 96px" runat="server"
				ForeColor="Maroon">Police Station Name</asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Style="left: 166px;
                position: relative; top: 248px" Text="No Records Found on these dates" Visible="False"></asp:Label>
		</form>
	</body>
</HTML>
