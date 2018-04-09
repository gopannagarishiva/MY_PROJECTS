<%@ Reference Page="~/forms/accused_suspect_details.aspx" %>
<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm11" CodeFile="complainant_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm9</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/6.JPG"
		bgColor="gainsboro">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 240px; POSITION: absolute; TOP: 16px" runat="server"
				Font-Size="X-Large" ForeColor="Maroon" Font-Italic="True">Complainant details</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 101; LEFT: -352px; POSITION: absolute; TOP: 248px"
				runat="server" Width="72px" ErrorMessage="Enter State" ControlToValidate="txtstate" BorderColor="Transparent"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 102; LEFT: 733px; POSITION: absolute; TOP: 313px"
				runat="server" Width="64px" ErrorMessage="Enter City" ControlToValidate="txtcity" BorderColor="Transparent"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 103; LEFT: 408px; POSITION: absolute; TOP: 168px"
				runat="server" ErrorMessage="* Enter Name" ControlToValidate="txtfhname" BorderColor="Transparent"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 104; LEFT: 408px; POSITION: absolute; TOP: 136px"
				runat="server" ErrorMessage="* Enter Name " ControlToValidate="txtcname" BorderColor="Transparent"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 105; LEFT: 232px; POSITION: absolute; TOP: 88px" runat="server" Width="112px" BackColor="#FFE0C0" BorderStyle="Inset" ReadOnly="True"></asp:TextBox>
			<asp:Label id="lblfirno" style="Z-INDEX: 106; LEFT: 64px; POSITION: absolute; TOP: 88px" runat="server"
				Width="112px" Font-Bold="True">Firno</asp:Label>
			<asp:Button id="save_con" style="Z-INDEX: 107; LEFT: 246px; POSITION: absolute; TOP: 447px"
				runat="server" Width="184px" Text="save&amp;Continue" tabIndex="17" BackColor="#E0E0E0"
				BorderColor="Black" BorderStyle="Outset" BorderWidth="3px" onclick="save_con_Click"></asp:Button>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnatinality"
                ErrorMessage="Above details are compulsory" Style="z-index: 108; left: 117px;
                position: absolute; top: 382px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txthno"
                ErrorMessage="Above details are compulsory" Style="z-index: 109; left: 116px;
                position: absolute; top: 382px"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtmb" style="Z-INDEX: 110; LEFT: 616px; POSITION: absolute; TOP: 344px" runat="server"
				Width="104px" tabIndex="16"></asp:TextBox>
			<asp:Label id="Label15" style="Z-INDEX: 111; LEFT: 536px; POSITION: absolute; TOP: 344px" runat="server"
				Width="32px">Mobile</asp:Label>
			<asp:TextBox id="txtph" style="Z-INDEX: 112; LEFT: 376px; POSITION: absolute; TOP: 344px" runat="server"
				Width="144px" tabIndex="15"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txtph" ErrorMessage="Enter correct phone number" Style="left: 333px;
                position: relative; top: 364px; z-index: 113;" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator>
			<asp:Label id="Label14" style="Z-INDEX: 114; LEFT: 288px; POSITION: absolute; TOP: 344px" runat="server"
				Width="73px">Phone No:</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 115; LEFT: 120px; POSITION: absolute; TOP: 344px"
				runat="server" Width="136px" tabIndex="14"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 116; LEFT: 64px; POSITION: absolute; TOP: 344px" runat="server"
				Width="32px">State</asp:Label>
			<asp:TextBox id="txtcity" style="Z-INDEX: 117; LEFT: 616px; POSITION: absolute; TOP: 312px" runat="server"
				Width="104px" tabIndex="13"></asp:TextBox>
			<asp:Label id="Label12" style="Z-INDEX: 118; LEFT: 536px; POSITION: absolute; TOP: 312px" runat="server"
				Width="32px">City/District</asp:Label>
			<asp:TextBox id="txtstreet_village" style="Z-INDEX: 119; LEFT: 376px; POSITION: absolute; TOP: 312px"
				runat="server" Width="144px" tabIndex="12"></asp:TextBox>
			<asp:Label id="Label11" style="Z-INDEX: 120; LEFT: 288px; POSITION: absolute; TOP: 312px" runat="server"
				Width="32px">Street/Village</asp:Label>
			<asp:TextBox id="txthno" style="Z-INDEX: 121; LEFT: 120px; POSITION: absolute; TOP: 312px" runat="server"
				Width="136px" tabIndex="11"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 122; LEFT: 64px; POSITION: absolute; TOP: 312px" runat="server"
				Width="32px">H.No</asp:Label>
			<asp:TextBox id="txtpno" style="Z-INDEX: 123; LEFT: 376px; POSITION: absolute; TOP: 280px" runat="server"
				Width="144px" tabIndex="10"></asp:TextBox>
			<asp:Label id="Label9" style="Z-INDEX: 124; LEFT: 288px; POSITION: absolute; TOP: 280px" runat="server"
				Width="80px">Passport No:</asp:Label>
			<asp:TextBox id="txtnatinality" style="Z-INDEX: 125; LEFT: 120px; POSITION: absolute; TOP: 280px"
				runat="server" Width="136px" tabIndex="9"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 126; LEFT: 64px; POSITION: absolute; TOP: 280px" runat="server"
				Width="32px">Natinality</asp:Label>
			<asp:DropDownList id="ddlgender" style="Z-INDEX: 127; LEFT: 432px; POSITION: absolute; TOP: 240px"
				runat="server" Width="88px" Height="24px" tabIndex="8"></asp:DropDownList>
			<asp:Label id="Label7" style="Z-INDEX: 128; LEFT: 376px; POSITION: absolute; TOP: 240px" runat="server"
				Width="32px">Gender</asp:Label>
			<asp:DropDownList id="ddlage" style="Z-INDEX: 129; LEFT: 312px; POSITION: absolute; TOP: 240px" runat="server"
				Width="40px" Height="24px" tabIndex="7"></asp:DropDownList>
			<asp:Label id="Label6" style="Z-INDEX: 130; LEFT: 280px; POSITION: absolute; TOP: 240px" runat="server"
				Width="32px">Age</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 131; LEFT: 64px; POSITION: absolute; TOP: 240px" runat="server"
				Width="32px">DOB</asp:Label>
			<asp:DropDownList id="ddldobyear" style="Z-INDEX: 132; LEFT: 200px; POSITION: absolute; TOP: 240px"
				runat="server" Width="56px" Height="24px" tabIndex="6"></asp:DropDownList>
			<asp:DropDownList id="ddldobday" style="Z-INDEX: 133; LEFT: 160px; POSITION: absolute; TOP: 240px"
				runat="server" Width="40px" Height="24px" tabIndex="5"></asp:DropDownList>
			<asp:DropDownList id="ddldobmonth" style="Z-INDEX: 134; LEFT: 120px; POSITION: absolute; TOP: 240px"
				runat="server" Width="40px" Height="24px" tabIndex="4"></asp:DropDownList>
			<asp:TextBox id="txtgname" style="Z-INDEX: 135; LEFT: 232px; POSITION: absolute; TOP: 192px"
				runat="server" tabIndex="3"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 136; LEFT: 64px; POSITION: absolute; TOP: 192px" runat="server"
				Width="153px">Gaurdian's Name</asp:Label>
			<asp:TextBox id="txtfhname" style="Z-INDEX: 137; LEFT: 232px; POSITION: absolute; TOP: 160px"
				runat="server" tabIndex="2"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 138; LEFT: 64px; POSITION: absolute; TOP: 160px" runat="server"
				Width="153px">Father/Husband's Name</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 139; LEFT: 64px; POSITION: absolute; TOP: 128px" runat="server"
				Width="153px">Complainant Name</asp:Label>
			<asp:TextBox id="txtcname" style="Z-INDEX: 140; LEFT: 232px; POSITION: absolute; TOP: 128px"
				runat="server" tabIndex="1"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmb"
                ErrorMessage="Enter correct mobile number" Style="left: 347px; position: relative;
                top: 365px; z-index: 141;" ValidationExpression="([0-9]{10})"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmb"
                ErrorMessage="Mobile No. compulsory" Style="z-index: 142; left: 732px;
                position: absolute; top: 346px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpno"
                ErrorMessage="Enter correct Passport number" Style="z-index: 143; left: 531px;
                position: absolute; top: 281px" ValidationExpression="([0-9]{3,10})"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstate"
                ErrorMessage="Above details are compulsory" Style="z-index: 144; left: 117px;
                position: absolute; top: 382px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtstreet_village"
                ErrorMessage="Above details are compulsory" Style="z-index: 145; left: 117px;
                position: absolute; top: 382px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtph"
                ErrorMessage="Above details are compulsory" Style="z-index: 147; left: 347px;
                position: absolute; top: 403px"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
