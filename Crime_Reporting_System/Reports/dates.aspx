<%@ Page language="c#" Inherits="WebApplication4.Reports.dates" CodeFile="dates.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>dates</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\WebApplication4\8.JPG">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 100; LEFT: 24px; WIDTH: 568px; POSITION: absolute; TOP: 144px; HEIGHT: 22px"
				cellSpacing="1" cellPadding="1" width="568" border="1">
				<TR>
					<TD style="WIDTH: 85px">
						<asp:Label id="Label6" runat="server">From Date</asp:Label></TD>
					<TD style="WIDTH: 151px">
						<asp:DropDownList id="ddlfmonth" runat="server" Width="41px"></asp:DropDownList>
						<asp:DropDownList id="ddlfday" runat="server" Width="40px" Height="14px"></asp:DropDownList>
						<asp:DropDownList id="ddlfyear" runat="server" Width="56px"></asp:DropDownList></TD>
					<td style="WIDTH: 36px"></td>
					<td style="WIDTH: 96px">
						<asp:Label id="Label5" runat="server">To Date</asp:Label></td>
					<td>
						<asp:DropDownList id="ddltmonth" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltday" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltyear" runat="server" Width="56px"></asp:DropDownList></td>
				</TR>
			</TABLE>
			<asp:Button id="Button2" style="Z-INDEX: 105; LEFT: 312px; POSITION: absolute; TOP: 208px" runat="server"
				Width="91px" Text="GO BACK" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button2_Click"></asp:Button>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 104; LEFT: 25px; POSITION: absolute; TOP: 290px"
				runat="server" Width="600px" Height="144px" BackColor="White" BorderColor="Blue" BorderStyle="None"
				BorderWidth="1px" CellPadding="3">
				<SelectedItemStyle Font-Bold="True" Wrap="False" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
				<EditItemStyle Wrap="False"></EditItemStyle>
				<AlternatingItemStyle Wrap="False" BackColor="#F7F7F7"></AlternatingItemStyle>
				<ItemStyle Wrap="False" ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
				<HeaderStyle Font-Bold="True" Wrap="False" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
				<FooterStyle Wrap="False" ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
				<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:Button id="Button1" style="Z-INDEX: 103; LEFT: 160px; POSITION: absolute; TOP: 208px" runat="server"
				Width="91px" Text="SUBMIT" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 40px; POSITION: absolute; TOP: 88px" runat="server"
				Width="576px" ForeColor="Maroon" Font-Size="Large">Select The Dates for The Information About Case Details  </asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Style="left: 100px;
                position: relative; top: 246px" Text="No Records Found on these dates" Visible="False"></asp:Label>
		</form>
	</body>
</HTML>
