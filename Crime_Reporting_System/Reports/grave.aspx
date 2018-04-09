<%@ Page language="c#" Inherits="WebApplication4.Reports.grave" CodeFile="grave.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>grave</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:RadioButtonList id="rbtype" style="Z-INDEX: 102; LEFT: 352px; POSITION: absolute; TOP: 64px" runat="server"
				Width="56px" ForeColor="Maroon">
				<asp:ListItem Value="Yes">Yes</asp:ListItem>
				<asp:ListItem Value="No">No</asp:ListItem>
			</asp:RadioButtonList>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 108; LEFT: 60px; POSITION: absolute; TOP: 301px"
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
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 107; LEFT: 416px; POSITION: absolute; TOP: 96px"
				runat="server" ErrorMessage="Should Select One" ControlToValidate="rbtype"></asp:RequiredFieldValidator>
			<asp:Label id="Label2" style="Z-INDEX: 106; LEFT: 208px; POSITION: absolute; TOP: 80px" runat="server"
				ForeColor="Maroon">IS GRAVE CASE</asp:Label>
			<asp:Label id="Label1" style="Z-INDEX: 105; LEFT: 264px; POSITION: absolute; TOP: 24px" runat="server"
				ForeColor="Maroon" Font-Size="Large">TYPE OF CASE</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 64px; WIDTH: 568px; POSITION: absolute; TOP: 136px; HEIGHT: 52px"
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
			<asp:Button id="Button2" style="Z-INDEX: 101; LEFT: 392px; POSITION: absolute; TOP: 216px" runat="server"
				Width="91px" Text="GO BACK" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 100; LEFT: 240px; POSITION: absolute; TOP: 216px" runat="server"
				Width="91px" Text="SUBMIT" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Style="left: 166px;
                position: relative; top: 248px" Text="No Records Found on these dates" Visible="False"></asp:Label>
		</form>
	</body>
</HTML>
