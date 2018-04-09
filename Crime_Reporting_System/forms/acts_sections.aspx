<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm7" enableViewStateMac="True" CodeFile="acts_sections.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm7</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body text="#000000" bgColor="gainsboro" background="file:///C:\Inetpub\wwwroot\WebApplication4\7.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">FIR NO</asp:label>
			<asp:DropDownList id="ddlps" style="Z-INDEX: 101; LEFT: 272px; POSITION: absolute; TOP: 128px" runat="server"
				Width="142px">
				<asp:ListItem Value="kukatpally">kukatpally</asp:ListItem>
				<asp:ListItem Value="S.R.nagar">S.R.nagar</asp:ListItem>
				<asp:ListItem Value="PanjaGutta">PanjaGutta</asp:ListItem>
				<asp:ListItem Value="Jubllihills">Jubllihills</asp:ListItem>
				<asp:ListItem Value="BanjaraHills">BanjaraHills</asp:ListItem>
				<asp:ListItem Value="Nampally">Nampally</asp:ListItem>
				<asp:ListItem Value="TukaramGate">TukaramGate</asp:ListItem>
				<asp:ListItem Value="Balanagar">Balanagar</asp:ListItem>
			</asp:DropDownList><asp:button id="btnsave" style="Z-INDEX: 102; LEFT: 472px; POSITION: absolute; TOP: 256px" runat="server"
				Width="96px" Height="32px" Text="Save&Continue" BackColor="#E0E0E0" BorderStyle="Outset" BorderColor="#404040" BorderWidth="3px"
				tabIndex="11" onclick="btnsave_Click"></asp:button><asp:label id="lblpunishable" style="Z-INDEX: 103; LEFT: 176px; POSITION: absolute; TOP: 240px"
				runat="server">Punishable</asp:label><asp:label id="lblgrave" style="Z-INDEX: 104; LEFT: 8px; POSITION: absolute; TOP: 240px" runat="server"
				Width="48px">Grave</asp:label><asp:textbox id="txtgrave" style="Z-INDEX: 105; LEFT: 72px; POSITION: absolute; TOP: 240px" runat="server"
				Width="80px" tabIndex="7"></asp:textbox><asp:textbox id="txtpunishable" style="Z-INDEX: 106; LEFT: 264px; POSITION: absolute; TOP: 240px"
				runat="server" Width="80px" tabIndex="8"></asp:textbox><asp:label id="lbldisdate" style="Z-INDEX: 107; LEFT: 224px; POSITION: absolute; TOP: 88px"
				runat="server" Width="152px"></asp:label><asp:datagrid id="DataGrid1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 296px" runat="server"
				Width="731px" Height="44px" AutoGenerateColumns="False" tabIndex="10" BorderWidth="1px" BorderColor="#E7E7FF" BorderStyle="None" BackColor="White"
				CellPadding="3" GridLines="Horizontal">
				<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
				<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
				<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="act" HeaderText="Under Act"></asp:BoundColumn>
					<asp:BoundColumn DataField="actdesc" HeaderText="Act Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="sec" HeaderText="Section"></asp:BoundColumn>
					<asp:BoundColumn DataField="secdcpt" HeaderText="Section Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="grave" HeaderText="Grave Case"></asp:BoundColumn>
					<asp:BoundColumn DataField="punishable" HeaderText="Punishable"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Delete">
						<ItemTemplate>
							<asp:Button id="Button1" runat="server" Text="Remove From List"  CommandName="Delete" Width="128px"></asp:Button>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
			</asp:datagrid><asp:button id="btnadd" style="Z-INDEX: 109; LEFT: 472px; POSITION: absolute; TOP: 184px" runat="server"
				Width="96px" Height="32px" Text="Add Another" BackColor="#E0E0E0" BorderStyle="Outset" BorderColor="#404040" BorderWidth="3px"
				tabIndex="9" onclick="btnadd_Click"></asp:button><asp:label id="Label9" style="Z-INDEX: 110; LEFT: 176px; POSITION: absolute; TOP: 208px" runat="server"
				Font-Bold="True">Discription</asp:label><asp:label id="Label8" style="Z-INDEX: 111; LEFT: 176px; POSITION: absolute; TOP: 176px" runat="server"
				Font-Bold="True">Discription</asp:label><asp:textbox id="txtsectiondesc" style="Z-INDEX: 112; LEFT: 264px; POSITION: absolute; TOP: 208px"
				runat="server" tabIndex="6"></asp:textbox><asp:textbox id="txtactdesc" style="Z-INDEX: 113; LEFT: 264px; POSITION: absolute; TOP: 176px"
				runat="server" tabIndex="4"></asp:textbox><asp:dropdownlist id="ddlsection" style="Z-INDEX: 114; LEFT: 72px; POSITION: absolute; TOP: 208px"
				runat="server" Width="88px" AutoPostBack="True" tabIndex="5" onselectedindexchanged="ddlsection_SelectedIndexChanged"></asp:dropdownlist><asp:dropdownlist id="ddlact" style="Z-INDEX: 115; LEFT: 72px; POSITION: absolute; TOP: 176px" runat="server"
				Width="88px" tabIndex="3"></asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 116; LEFT: 8px; POSITION: absolute; TOP: 208px" runat="server"
				Width="54px">Section</asp:label><asp:label id="Label6" style="Z-INDEX: 117; LEFT: 8px; POSITION: absolute; TOP: 176px" runat="server"
				Width="55px">ACT</asp:label><asp:dropdownlist id="ddldist" style="Z-INDEX: 118; LEFT: 72px; POSITION: absolute; TOP: 128px" runat="server"
				Width="88px" tabIndex="1">
				<asp:ListItem Value="Medak">Medak</asp:ListItem>
				<asp:ListItem Value="RangaReddy">RangaReddy</asp:ListItem>
				<asp:ListItem Value="Hyderabad">Hyderabad</asp:ListItem>
				<asp:ListItem Value="Adilabad">Adilabad</asp:ListItem>
				<asp:ListItem Value="Nizamabad">Nizamabad</asp:ListItem>
				<asp:ListItem Value="Nalgonda">Nalgonda</asp:ListItem>
				<asp:ListItem Value="Krishna">Krishna</asp:ListItem>
				<asp:ListItem Value="Guntur">Guntur</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label5" style="Z-INDEX: 119; LEFT: 208px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Bold="True" Width="240px" Height="21px" Font-Italic="True" ForeColor="Maroon" Font-Size="X-Large" BorderStyle="None"> Act & Sections</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 120; LEFT: 72px; POSITION: absolute; TOP: 88px" runat="server"
				Width="80px" ReadOnly="True"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 121; LEFT: 176px; POSITION: absolute; TOP: 128px" runat="server">Police Station</asp:label><asp:label id="Label3" style="Z-INDEX: 122; LEFT: 8px; POSITION: absolute; TOP: 128px" runat="server"
				Width="55px">District</asp:label><asp:label id="Label2" style="Z-INDEX: 123; LEFT: 176px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">Date</asp:label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#C04000" Style="z-index: 125;
                left: 59px; position: absolute; top: 271px" Text="Please select act and section"
                Visible="False"></asp:Label>
				</form>
	</body>
</HTML>
