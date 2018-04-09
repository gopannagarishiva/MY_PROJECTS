<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm22" CodeFile="propertysearch_seezedinfo.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm22</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:DropDownList id="ddlam_pm" style="Z-INDEX: 100; LEFT: 384px; POSITION: absolute; TOP: 152px"
				runat="server" Width="64px">
				<asp:ListItem Value="AM">AM</asp:ListItem>
				<asp:ListItem Value="PM">PM</asp:ListItem>
			</asp:DropDownList>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 719px; POSITION: absolute; TOP: 72px" runat="server"
				ImageUrl="~/Images/d.jpg" Height="254px" Width="215px"></asp:Image>
			<asp:Label id="lbldate" style="Z-INDEX: 102; LEFT: 464px; POSITION: absolute; TOP: 152px" runat="server"
				Width="136px" ForeColor="#FF8080">Label</asp:Label>
			<TABLE id="Table1" style="Z-INDEX: 138; LEFT: 112px; WIDTH: 516px; POSITION: absolute; TOP: 472px; HEIGHT: 102px"
				cellSpacing="1" cellPadding="1" width="516" border="1">
				<TR>
					<TD style="WIDTH: 20px">
						<asp:Label id="Label19" runat="server" Width="48px" Height="22px" ForeColor="Maroon">Name</asp:Label></TD>
					<TD style="WIDTH: 253px">
						<asp:TextBox id="txtwname" runat="server" Width="136px" Height="26px"></asp:TextBox></TD>
					<TD style="WIDTH: 133px">
						<asp:Label id="Label25" runat="server" Width="88px" Height="22px" ForeColor="Maroon">Street/Village</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwstr" runat="server" Width="144px" Height="26px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 20px">
						<asp:Label id="Label20" runat="server" Width="88px" Height="22px" ForeColor="Maroon">Hno/Place</asp:Label></TD>
					<TD style="WIDTH: 253px">
						<asp:TextBox id="txtwhno" runat="server" Width="136px" Height="26px"></asp:TextBox></TD>
					<TD style="WIDTH: 133px">
						<asp:Label id="Label24" runat="server" Width="88px" Height="22px" ForeColor="Maroon">City/Dist</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwcity" runat="server" Width="144px" Height="26px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 20px">
						<asp:Label id="Label23" runat="server" Width="88px" Height="22px" ForeColor="Maroon">State</asp:Label></TD>
					<TD style="WIDTH: 253px">
						<asp:TextBox id="txtwstate" runat="server" Width="136px" Height="26px"></asp:TextBox></TD>
					<TD style="WIDTH: 133px">
						<asp:Label id="Label18" runat="server" Height="22px" Width="88px" ForeColor="Maroon">Phone</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwphone" runat="server" Height="26px" Width="144px"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:Label id="Label22" style="Z-INDEX: 103; LEFT: 72px; POSITION: absolute; TOP: 656px" runat="server"
				Width="120px" Height="22px" ForeColor="Maroon">Details of property</asp:Label>
			<asp:Label id="Label21" style="Z-INDEX: 104; LEFT: 40px; POSITION: absolute; TOP: 600px" runat="server"
				Width="136px" Height="22px" Font-Size="Medium" ForeColor="Black">Property Details</asp:Label>
			<asp:TextBox id="txtname" style="Z-INDEX: 105; LEFT: 208px; POSITION: absolute; TOP: 392px" runat="server"
				Width="136px" Height="26px"></asp:TextBox>
			<asp:Label id="Label17" style="Z-INDEX: 106; LEFT: 32px; POSITION: absolute; TOP: 440px" runat="server"
				Width="128px" Height="22px" Font-Size="Medium" ForeColor="Black">Wittness Details:</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 107; LEFT: 112px; POSITION: absolute; TOP: 400px" runat="server"
				Width="81px" Height="10px" ForeColor="Maroon">Name</asp:Label>
			<asp:Label id="Label12" style="Z-INDEX: 108; LEFT: 360px; POSITION: absolute; TOP: 400px" runat="server"
				Width="112px" Height="32px" ForeColor="Maroon">Other Details</asp:Label>
			<asp:Label id="Label15" style="Z-INDEX: 109; LEFT: 32px; POSITION: absolute; TOP: 360px" runat="server"
				Width="112px" Height="23px" Font-Size="Medium" ForeColor="Black">Person Details</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 110; LEFT: 472px; POSITION: absolute; TOP: 320px"
				runat="server" Width="140px"></asp:TextBox>
			<asp:TextBox id="txtcity" style="Z-INDEX: 111; LEFT: 208px; POSITION: absolute; TOP: 320px" runat="server"
				Width="136px"></asp:TextBox>
			<asp:TextBox id="txtstr" style="Z-INDEX: 112; LEFT: 472px; POSITION: absolute; TOP: 288px" runat="server"
				Width="140px"></asp:TextBox>
			<asp:TextBox id="txthno" style="Z-INDEX: 113; LEFT: 208px; POSITION: absolute; TOP: 288px" runat="server"
				Width="136px"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 114; LEFT: 360px; POSITION: absolute; TOP: 320px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">State</asp:Label>
			<asp:Label id="Label11" style="Z-INDEX: 115; LEFT: 112px; POSITION: absolute; TOP: 320px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">City/Dist</asp:Label>
			<asp:Label id="Label10" style="Z-INDEX: 116; LEFT: 360px; POSITION: absolute; TOP: 288px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">Street/Village</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 117; LEFT: 112px; POSITION: absolute; TOP: 288px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">Hno/Place</asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 118; LEFT: 336px; POSITION: absolute; TOP: 152px" runat="server"
				Width="8px" Height="24px">:</asp:Label>
			<asp:DropDownList id="ddlmin" style="Z-INDEX: 119; LEFT: 344px; POSITION: absolute; TOP: 152px" runat="server"
				Width="40px"></asp:DropDownList>
			<asp:DropDownList id="ddlhr" style="Z-INDEX: 120; LEFT: 296px; POSITION: absolute; TOP: 152px" runat="server"
				Width="40px"></asp:DropDownList>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 121; LEFT: 224px; POSITION: absolute; TOP: 152px" runat="server"
				Width="72px"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 122; LEFT: 184px; POSITION: absolute; TOP: 152px" runat="server"
				Width="40px"></asp:DropDownList>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 123; LEFT: 144px; POSITION: absolute; TOP: 152px"
				runat="server" Width="40px"></asp:DropDownList>
			<asp:TextBox id="txtpsname" style="Z-INDEX: 124; LEFT: 463px; POSITION: absolute; TOP: 120px"
				runat="server" Width="112px"></asp:TextBox>
			<asp:TextBox id="txtnat" style="Z-INDEX: 125; LEFT: 200px; POSITION: absolute; TOP: 208px" runat="server"
				Width="136px"></asp:TextBox>
			<asp:Label id="Label7" style="Z-INDEX: 126; LEFT: 32px; POSITION: absolute; TOP: 256px" runat="server"
				Width="192px" Height="24px" Font-Size="Medium" ForeColor="Black">Address(property Seized):</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 127; LEFT: 40px; POSITION: absolute; TOP: 200px" runat="server"
				Width="184px" Height="32px" Font-Size="Medium" ForeColor="Maroon">Nature of property Seized</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 128; LEFT: 40px; POSITION: absolute; TOP: 152px" runat="server"
				Width="40px" Height="22px" ForeColor="Maroon">Date/Time</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 129; LEFT: 367px; POSITION: absolute; TOP: 120px" runat="server"
				Width="80px" Height="24px" Font-Size="Medium" ForeColor="Maroon">PS NAME</asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 130; LEFT: 119px; POSITION: absolute; TOP: 120px"
				runat="server" Width="104px" BackColor="#FFE0C0" BorderStyle="Inset" ReadOnly="True"></asp:TextBox>
			<asp:Label id="Label2" style="Z-INDEX: 131; LEFT: 47px; POSITION: absolute; TOP: 120px" runat="server"
				Width="56px" Height="16px" Font-Size="Medium" BorderStyle="None"> Firno</asp:Label>
			<asp:TextBox id="txtodet" style="Z-INDEX: 132; LEFT: 472px; POSITION: absolute; TOP: 392px" runat="server"
				Width="144px" Height="32px" TextMode="MultiLine"></asp:TextBox>
			<asp:TextBox id="txtpdet" style="Z-INDEX: 133; LEFT: 208px; POSITION: absolute; TOP: 632px" runat="server"
				Width="408px" Height="62px" TextMode="MultiLine"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 134; LEFT: 210px; POSITION: absolute; TOP: 725px" runat="server"
				Width="144px" Text="Update &amp; Go Back" Height="32px" BorderStyle="Outset" BorderColor="Black"
				BackColor="#E0E0E0" BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 135; LEFT: 40px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Bold="True" Font-Italic="True" Font-Size="X-Large" BorderStyle="None" ForeColor="Maroon"
				Height="56px" Width="584px">PROPERTY  SEARCH & SEIZED FORM</asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Height="18px"
                Style="left: 23px; position: relative; top: 56px; z-index: 136;" Text="No property search/seized  information"
                Visible="False" Width="546px"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 139; left: 413px; position: absolute; top: 723px" TabIndex="9"
                Text="Cancel" Width="128px" />
		</form>
	</body>
</HTML>
