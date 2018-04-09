<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm25" CodeFile="courtdisposal.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm25</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 65px; POSITION: absolute; TOP: 117px" runat="server">FIR No:</asp:label>
            <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 142;
                left: 51px; position: absolute; top: 76px" Text="This case is Under Investigation"
                Visible="False"></asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 102; LEFT: 664px; POSITION: absolute; TOP: 8px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:Label id="lblgender" style="Z-INDEX: 103; LEFT: 481px; POSITION: absolute; TOP: 317px"
				runat="server" ForeColor="#FF8080">Label</asp:Label>
			<asp:Label id="lblage" style="Z-INDEX: 104; LEFT: 169px; POSITION: absolute; TOP: 317px" runat="server"
				ForeColor="#FF8080">Label</asp:Label>
			<asp:Label id="lbldate" style="Z-INDEX: 105; LEFT: 161px; POSITION: absolute; TOP: 189px" runat="server"
				Width="120px" ForeColor="#FF8080">Label</asp:Label><asp:dropdownlist id="ddlday" style="Z-INDEX: 106; LEFT: 193px; POSITION: absolute; TOP: 157px" runat="server"
				Width="40px"></asp:dropdownlist><asp:dropdownlist id="ddlyear" style="Z-INDEX: 107; LEFT: 233px; POSITION: absolute; TOP: 157px" runat="server"
				Width="56px"></asp:dropdownlist><asp:dropdownlist id="ddlmonth" style="Z-INDEX: 108; LEFT: 153px; POSITION: absolute; TOP: 157px"
				runat="server" Width="40px"></asp:dropdownlist><asp:textbox id="txtjmt" style="Z-INDEX: 109; LEFT: 273px; POSITION: absolute; TOP: 453px" runat="server"
				Width="336px" TextMode="MultiLine" Height="52px"></asp:textbox><asp:label id="Label18" style="Z-INDEX: 110; LEFT: 73px; POSITION: absolute; TOP: 461px" runat="server"
				Width="192px" ForeColor="Maroon">Judgement Given by The Court</asp:label><asp:label id="Label17" style="Z-INDEX: 111; LEFT: 57px; POSITION: absolute; TOP: 421px" runat="server"
				Width="120px" ForeColor="Black" Font-Bold="True">Result of Appeal</asp:label><asp:label id="Label16" style="Z-INDEX: 112; LEFT: 232px; POSITION: absolute; TOP: 16px" runat="server"
				Width="218px" ForeColor="Maroon" Font-Bold="True" Font-Size="X-Large" Font-Italic="True">Court Disposal</asp:label><asp:button id="savebutton" style="Z-INDEX: 113; LEFT: 180px; POSITION: absolute; TOP: 519px"
				runat="server" Text="Update &amp; Go Back" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Outset" BorderWidth="3px" onclick="savebutton_Click"></asp:button><asp:label id="Label9" style="Z-INDEX: 114; LEFT: 49px; POSITION: absolute; TOP: 213px" runat="server"
				Width="120px" ForeColor="Black" Font-Bold="True">Witnees Details :</asp:label><asp:textbox id="txtmno" style="Z-INDEX: 115; LEFT: 617px; POSITION: absolute; TOP: 381px" runat="server"
				Width="104px"></asp:textbox><asp:label id="Label15" style="Z-INDEX: 116; LEFT: 537px; POSITION: absolute; TOP: 381px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:label><asp:textbox id="txtphno" style="Z-INDEX: 117; LEFT: 377px; POSITION: absolute; TOP: 381px" runat="server"
				Width="144px"></asp:textbox><asp:label id="Label14" style="Z-INDEX: 118; LEFT: 289px; POSITION: absolute; TOP: 381px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 119; LEFT: 121px; POSITION: absolute; TOP: 381px"
				runat="server" Width="136px"></asp:textbox><asp:label id="Label13" style="Z-INDEX: 120; LEFT: 65px; POSITION: absolute; TOP: 381px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:label><asp:textbox id="txtcity" style="Z-INDEX: 121; LEFT: 617px; POSITION: absolute; TOP: 349px" runat="server"
				Width="104px"></asp:textbox><asp:label id="Label12" style="Z-INDEX: 122; LEFT: 537px; POSITION: absolute; TOP: 349px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:label><asp:textbox id="txtstr" style="Z-INDEX: 123; LEFT: 377px; POSITION: absolute; TOP: 349px" runat="server"
				Width="144px"></asp:textbox><asp:label id="Label11" style="Z-INDEX: 124; LEFT: 289px; POSITION: absolute; TOP: 349px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:label><asp:textbox id="txthno" style="Z-INDEX: 125; LEFT: 121px; POSITION: absolute; TOP: 349px" runat="server"
				Width="136px"></asp:textbox><asp:label id="Label10" style="Z-INDEX: 126; LEFT: 65px; POSITION: absolute; TOP: 349px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:label><asp:label id="Label8" style="Z-INDEX: 127; LEFT: 65px; POSITION: absolute; TOP: 253px" runat="server"
				Width="153px" ForeColor="Maroon">Witnees Name</asp:label><asp:textbox id="txtwname" style="Z-INDEX: 128; LEFT: 233px; POSITION: absolute; TOP: 253px"
				runat="server"></asp:textbox><asp:label id="Label5" style="Z-INDEX: 129; LEFT: 65px; POSITION: absolute; TOP: 285px" runat="server"
				Width="153px" ForeColor="Maroon">Father/Husband's Name</asp:label><asp:textbox id="txtfhname" style="Z-INDEX: 130; LEFT: 233px; POSITION: absolute; TOP: 285px"
				runat="server"></asp:textbox><asp:label id="Label6" style="Z-INDEX: 131; LEFT: 65px; POSITION: absolute; TOP: 317px" runat="server"
				Width="32px" ForeColor="Maroon">Age</asp:label><asp:dropdownlist id="ddlage" style="Z-INDEX: 132; LEFT: 121px; POSITION: absolute; TOP: 317px" runat="server"
				Width="40px" Height="24px"></asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 133; LEFT: 289px; POSITION: absolute; TOP: 317px" runat="server"
				Width="32px" ForeColor="Maroon">Gender</asp:label><asp:dropdownlist id="ddlgender" style="Z-INDEX: 134; LEFT: 377px; POSITION: absolute; TOP: 317px"
				runat="server" Width="88px" Height="24px">
				<asp:ListItem Value="MALE">MALE</asp:ListItem>
				<asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtpname" style="Z-INDEX: 135; LEFT: 473px; POSITION: absolute; TOP: 157px"
				runat="server"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 136; LEFT: 337px; POSITION: absolute; TOP: 165px" runat="server"
				ForeColor="Maroon">Prosecuter Name</asp:label><asp:textbox id="txtcname" style="Z-INDEX: 137; LEFT: 473px; POSITION: absolute; TOP: 117px" runat="server"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 138; LEFT: 337px; POSITION: absolute; TOP: 117px" runat="server"
				ForeColor="Maroon">Court Name</asp:label><asp:label id="Label2" style="Z-INDEX: 139; LEFT: 65px; POSITION: absolute; TOP: 157px" runat="server"
				ForeColor="Maroon">Date</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 140; LEFT: 153px; POSITION: absolute; TOP: 117px" runat="server"
				ReadOnly="True" Width="88px" BorderStyle="Inset" BackColor="#FFE0C0"></asp:textbox>
            <asp:Button ID="Button1" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button1_Click"
                Style="z-index: 141; left: 438px; position: absolute; top: 516px" TabIndex="9"
                Text="Cancel" Width="128px" />
        </form>
	</body>
</HTML>
