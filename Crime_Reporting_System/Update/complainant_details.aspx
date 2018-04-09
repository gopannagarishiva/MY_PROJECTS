<%@ Reference Page="~/update/accused_suspect_details.aspx" %>
<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm21" CodeFile="complainant_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm29</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 232px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Size="X-Large" ForeColor="Maroon" Font-Italic="True" BackColor="Transparent">Complainant details</asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 656px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:Label id="lblgender" style="Z-INDEX: 102; LEFT: 416px; POSITION: absolute; TOP: 208px"
				runat="server" ForeColor="#FF8080">Label</asp:Label>
			<asp:Label id="lblage" style="Z-INDEX: 103; LEFT: 296px; POSITION: absolute; TOP: 208px" runat="server"
				ForeColor="#FF8080">Label</asp:Label>
			<asp:Label id="lbldob" style="Z-INDEX: 104; LEFT: 104px; POSITION: absolute; TOP: 208px" runat="server"
				ForeColor="#FF8080">Label</asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 105; LEFT: 216px; POSITION: absolute; TOP: 80px" runat="server"
				BackColor="#FFE0C0" BorderStyle="Inset" Width="80px"></asp:TextBox>
			<asp:Label id="lblfirno" style="Z-INDEX: 106; LEFT: 48px; POSITION: absolute; TOP: 80px" runat="server"
				Width="48px" Font-Bold="True" BorderStyle="None">Firno</asp:Label>
			<asp:Button id="save_con" style="Z-INDEX: 107; LEFT: 196px; POSITION: absolute; TOP: 413px"
				runat="server" Width="144px" Text="Update &amp; Go Back" BackColor="#E0E0E0" BorderColor="Black"
				BorderStyle="Outset" BorderWidth="3px" onclick="save_con_Click"></asp:Button>
			<asp:TextBox id="txtmb" style="Z-INDEX: 108; LEFT: 600px; POSITION: absolute; TOP: 336px" runat="server"
				Width="104px"></asp:TextBox>
			<asp:Label id="Label15" style="Z-INDEX: 109; LEFT: 520px; POSITION: absolute; TOP: 336px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:Label>
			<asp:TextBox id="txtph" style="Z-INDEX: 110; LEFT: 360px; POSITION: absolute; TOP: 336px" runat="server"
				Width="144px"></asp:TextBox>
			<asp:Label id="Label14" style="Z-INDEX: 111; LEFT: 272px; POSITION: absolute; TOP: 336px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 112; LEFT: 104px; POSITION: absolute; TOP: 336px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 113; LEFT: 48px; POSITION: absolute; TOP: 336px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:Label>
			<asp:TextBox id="txtcity" style="Z-INDEX: 114; LEFT: 600px; POSITION: absolute; TOP: 304px" runat="server"
				Width="104px"></asp:TextBox>
			<asp:Label id="Label12" style="Z-INDEX: 115; LEFT: 520px; POSITION: absolute; TOP: 304px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:Label>
			<asp:TextBox id="txtstreet_village" style="Z-INDEX: 116; LEFT: 360px; POSITION: absolute; TOP: 304px"
				runat="server" Width="144px"></asp:TextBox>
			<asp:Label id="Label11" style="Z-INDEX: 117; LEFT: 272px; POSITION: absolute; TOP: 304px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:Label>
			<asp:TextBox id="txthno" style="Z-INDEX: 118; LEFT: 104px; POSITION: absolute; TOP: 304px" runat="server"
				Width="136px"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 119; LEFT: 48px; POSITION: absolute; TOP: 304px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:Label>
			<asp:TextBox id="txtpno" style="Z-INDEX: 120; LEFT: 360px; POSITION: absolute; TOP: 272px" runat="server"
				Width="144px"></asp:TextBox>
			<asp:Label id="Label9" style="Z-INDEX: 121; LEFT: 272px; POSITION: absolute; TOP: 272px" runat="server"
				Width="80px" ForeColor="Maroon">Passport No:</asp:Label>
			<asp:TextBox id="txtnatinality" style="Z-INDEX: 122; LEFT: 104px; POSITION: absolute; TOP: 272px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 123; LEFT: 48px; POSITION: absolute; TOP: 272px" runat="server"
				Width="32px" ForeColor="Maroon">Natinality</asp:Label>
			<asp:DropDownList id="ddlgender" style="Z-INDEX: 124; LEFT: 416px; POSITION: absolute; TOP: 232px"
				runat="server" Width="88px" Height="24px"></asp:DropDownList>
			<asp:Label id="Label7" style="Z-INDEX: 125; LEFT: 360px; POSITION: absolute; TOP: 232px" runat="server"
				Width="32px" ForeColor="Maroon">Gender</asp:Label>
			<asp:DropDownList id="ddlage" style="Z-INDEX: 126; LEFT: 296px; POSITION: absolute; TOP: 232px" runat="server"
				Width="40px" Height="24px"></asp:DropDownList>
			<asp:Label id="Label6" style="Z-INDEX: 127; LEFT: 264px; POSITION: absolute; TOP: 232px" runat="server"
				Width="32px" ForeColor="Maroon">Age</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 128; LEFT: 48px; POSITION: absolute; TOP: 232px" runat="server"
				Width="32px" ForeColor="Maroon">DOB</asp:Label>
			<asp:DropDownList id="ddldobyear" style="Z-INDEX: 129; LEFT: 184px; POSITION: absolute; TOP: 232px"
				runat="server" Width="56px" Height="24px"></asp:DropDownList>
			<asp:DropDownList id="ddldobday" style="Z-INDEX: 130; LEFT: 144px; POSITION: absolute; TOP: 232px"
				runat="server" Width="40px" Height="24px"></asp:DropDownList>
			<asp:DropDownList id="ddldobmonth" style="Z-INDEX: 131; LEFT: 104px; POSITION: absolute; TOP: 232px"
				runat="server" Width="40px" Height="24px"></asp:DropDownList>
			<asp:TextBox id="txtgname" style="Z-INDEX: 132; LEFT: 216px; POSITION: absolute; TOP: 184px"
				runat="server"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 133; LEFT: 48px; POSITION: absolute; TOP: 184px" runat="server"
				Width="153px" ForeColor="Maroon">Gaurdian's Name</asp:Label>
			<asp:TextBox id="txtfhname" style="Z-INDEX: 134; LEFT: 216px; POSITION: absolute; TOP: 152px"
				runat="server"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 135; LEFT: 48px; POSITION: absolute; TOP: 152px" runat="server"
				Width="153px" ForeColor="Maroon">Father/Husband's Name</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 136; LEFT: 48px; POSITION: absolute; TOP: 120px" runat="server"
				Width="153px" BackColor="Transparent" ForeColor="Maroon">Complainant Name</asp:Label>
			<asp:TextBox id="txtcname" style="Z-INDEX: 137; LEFT: 216px; POSITION: absolute; TOP: 120px"
				runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 139; left: 391px; position: absolute; top: 409px" TabIndex="9"
                Text="Cancel" Width="128px" />
		</form>
	</body>
</HTML>
