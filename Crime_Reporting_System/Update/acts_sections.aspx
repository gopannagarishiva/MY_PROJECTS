<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm27" enableViewStateMac="True" CodeFile="acts_sections.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm27</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body text="#000000" bgColor="blanchedalmond">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">FIR NO</asp:label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 648px; POSITION: absolute; TOP: 8px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image><asp:requiredfieldvalidator id="RequiredFieldValidator2" style="Z-INDEX: 102; LEFT: 440px; POSITION: absolute; TOP: 232px"
				runat="server" ErrorMessage="Specify The Section" ControlToValidate="txtsectiondesc"></asp:requiredfieldvalidator><asp:requiredfieldvalidator id="RequiredFieldValidator1" style="Z-INDEX: 103; LEFT: 440px; POSITION: absolute; TOP: 200px"
				runat="server" ErrorMessage="Enter Act Description" ControlToValidate="txtactdesc" Width="142px"></asp:requiredfieldvalidator><asp:button id="btnsave" style="Z-INDEX: 104; LEFT: 586px; POSITION: absolute; TOP: 222px" tabIndex="11"
				runat="server" Width="128px" BorderWidth="5px" BorderColor="#404040" BorderStyle="Outset" BackColor="#E0E0E0" Text="Update &amp; Go Back" Height="32px" onclick="btnsave_Click"></asp:button><asp:label id="lblpunishable" style="Z-INDEX: 105; LEFT: 176px; POSITION: absolute; TOP: 256px"
				runat="server">Punishable</asp:label><asp:label id="lblgrave" style="Z-INDEX: 106; LEFT: 8px; POSITION: absolute; TOP: 256px" runat="server"
				Width="48px">Grave</asp:label><asp:textbox id="txtgrave" style="Z-INDEX: 107; LEFT: 72px; POSITION: absolute; TOP: 256px" tabIndex="7"
				runat="server" Width="80px"></asp:textbox><asp:textbox id="txtpunishable" style="Z-INDEX: 108; LEFT: 264px; POSITION: absolute; TOP: 256px"
				tabIndex="8" runat="server" Width="80px"></asp:textbox><asp:label id="lbldisdate" style="Z-INDEX: 109; LEFT: 224px; POSITION: absolute; TOP: 88px"
				runat="server" Width="152px"></asp:label><asp:datagrid id="DataGrid1" style="Z-INDEX: 110; LEFT: 8px; POSITION: absolute; TOP: 320px" tabIndex="10"
				runat="server" Width="731px" Height="44px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Left">
				<Columns>
					<asp:BoundColumn DataField="act" HeaderText="Under Act"></asp:BoundColumn>
					<asp:BoundColumn DataField="actdesc" HeaderText="Act Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="sec" HeaderText="Section"></asp:BoundColumn>
					<asp:BoundColumn DataField="secdcpt" HeaderText="Section Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="grave" HeaderText="Grave Case"></asp:BoundColumn>
					<asp:BoundColumn DataField="punishable" HeaderText="Punishable"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Delete">
						<ItemTemplate>
							<asp:Button id="Button1" runat="server" Text="Remove From List" Width="128px"></asp:Button>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
			</asp:datagrid><asp:button id="btnadd" style="Z-INDEX: 111; LEFT: 584px; POSITION: absolute; TOP: 184px" tabIndex="9"
				runat="server" Width="128px" BorderWidth="5px" BorderColor="#404040" BorderStyle="Outset" BackColor="#E0E0E0"
				Text="Add" Height="32px" onclick="btnadd_Click"></asp:button><asp:label id="Label9" style="Z-INDEX: 112; LEFT: 176px; POSITION: absolute; TOP: 224px" runat="server"
				Font-Bold="True">Discription</asp:label><asp:label id="Label8" style="Z-INDEX: 113; LEFT: 176px; POSITION: absolute; TOP: 192px" runat="server"
				Font-Bold="True">Discription</asp:label><asp:textbox id="txtsectiondesc" style="Z-INDEX: 114; LEFT: 264px; POSITION: absolute; TOP: 224px"
				tabIndex="6" runat="server"></asp:textbox><asp:textbox id="txtactdesc" style="Z-INDEX: 115; LEFT: 264px; POSITION: absolute; TOP: 192px"
				tabIndex="4" runat="server"></asp:textbox><asp:dropdownlist id="ddlsection" style="Z-INDEX: 116; LEFT: 72px; POSITION: absolute; TOP: 224px"
				tabIndex="5" runat="server" Width="88px" AutoPostBack="True" onselectedindexchanged="ddlsection_SelectedIndexChanged"></asp:dropdownlist><asp:dropdownlist id="ddlact" style="Z-INDEX: 117; LEFT: 72px; POSITION: absolute; TOP: 192px" tabIndex="3"
				runat="server" Width="88px"></asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 118; LEFT: 8px; POSITION: absolute; TOP: 224px" runat="server"
				Width="54px">Section</asp:label><asp:label id="Label6" style="Z-INDEX: 119; LEFT: 8px; POSITION: absolute; TOP: 192px" runat="server"
				Width="55px">ACT</asp:label><asp:dropdownlist id="ddldist" style="Z-INDEX: 120; LEFT: 72px; POSITION: absolute; TOP: 128px" tabIndex="1"
				runat="server" Width="88px">
				<asp:ListItem Value="Medak">Medak</asp:ListItem>
				<asp:ListItem Value="RangaReddy">RangaReddy</asp:ListItem>
				<asp:ListItem Value="Hyderabad">Hyderabad</asp:ListItem>
				<asp:ListItem Value="Adilabad">Adilabad</asp:ListItem>
				<asp:ListItem Value="Nizamabad">Nizamabad</asp:ListItem>
				<asp:ListItem Value="Nalgonda">Nalgonda</asp:ListItem>
				<asp:ListItem Value="Krishna">Krishna</asp:ListItem>
				<asp:ListItem Value="Guntur">Guntur</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label5" style="Z-INDEX: 121; LEFT: 248px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Bold="True" Width="208px" BorderStyle="None" Height="21px" Font-Size="X-Large" ForeColor="Maroon" Font-Italic="True"> Act & Sections</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 122; LEFT: 72px; POSITION: absolute; TOP: 88px" runat="server"
				Width="80px" ReadOnly="True"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 123; LEFT: 176px; POSITION: absolute; TOP: 128px" runat="server">Police Station</asp:label><asp:label id="Label3" style="Z-INDEX: 124; LEFT: 8px; POSITION: absolute; TOP: 128px" runat="server"
				Width="55px">District</asp:label><asp:label id="Label2" style="Z-INDEX: 125; LEFT: 176px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">Date</asp:label><asp:textbox id="txtpstation" style="Z-INDEX: 126; LEFT: 272px; POSITION: absolute; TOP: 128px"
				tabIndex="2" runat="server" Width="144px"></asp:textbox><asp:requiredfieldvalidator id="rfvpstation" style="Z-INDEX: 127; LEFT: 424px; POSITION: absolute; TOP: 128px"
				runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="txtpstation" Width="144px"></asp:requiredfieldvalidator><asp:button id="Button2" style="Z-INDEX: 129; LEFT: 588px; POSITION: absolute; TOP: 260px" tabIndex="9"
				runat="server" Width="128px" BorderWidth="5px" BorderColor="#404040" BorderStyle="Outset" BackColor="#E0E0E0"
				Text="Cancel" Height="32px" onclick="Button2_Click"></asp:button>
        </form>
	</body>
</HTML>
