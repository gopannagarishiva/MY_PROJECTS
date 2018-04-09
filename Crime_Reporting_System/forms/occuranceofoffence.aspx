<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm8" enableViewState="True" CodeFile="occuranceofoffence.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm8</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="lightgrey" background="../7.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Maroon" Font-Size="X-Large" Width="410px" Font-Italic="True">OCCURENCE OF OFFENCE</asp:Label>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txtpin" ErrorMessage="Enter correct pin code" Style="left: 442px;
                position: relative; top: 673px; z-index: 101;" ValidationExpression="([0-9]{6})"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpin"
                ErrorMessage="Entering pincode compulsory" Style="z-index: 122; left: 460px;
                position: absolute; top: 688px"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 103; LEFT: 456px; POSITION: absolute; TOP: 656px"
				runat="server" ControlToValidate="txtstate" ErrorMessage="Enter state"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 104; LEFT: 408px; POSITION: absolute; TOP: 360px"
				runat="server" ControlToValidate="rblinfo" ErrorMessage="Should Select One"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 105; LEFT: 128px; POSITION: absolute; TOP: 96px" runat="server"
				Width="104px" ReadOnly="True" BackColor="#FFE0C0" BorderStyle="Inset"></asp:TextBox>
			<asp:Label id="lblfirno" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 96px" runat="server"
				Width="104px" Font-Bold="True" Height="24px" BorderStyle="None">Firno</asp:Label>
			<TABLE id="Table4" style="Z-INDEX: 121; LEFT: 128px; WIDTH: 520px; POSITION: absolute; TOP: 168px; HEIGHT: 48px"
				cellSpacing="1" cellPadding="1" width="520" border="1">
				<TR>
					<TD style="WIDTH: 317px">
						<asp:Label id="Label3" runat="server" Font-Bold="True" Width="41" ForeColor="Maroon">Date</asp:Label>
						<asp:Label id="Label4" runat="server" Width="50px" ForeColor="Maroon">From</asp:Label>
						<asp:DropDownList id="ddlfmonth" runat="server" Width="40px" tabIndex="1"></asp:DropDownList>
						<asp:DropDownList id="ddlfday" runat="server" Width="40px" tabIndex="2"></asp:DropDownList>
						<asp:DropDownList id="ddlfyear" runat="server" Width="88px" tabIndex="3"></asp:DropDownList></TD>
					<TD>
						<asp:Label id="Label5" runat="server" ForeColor="Maroon">To</asp:Label>
						<asp:DropDownList id="ddltmonth" runat="server" Width="40px" tabIndex="4"></asp:DropDownList>
						<asp:DropDownList id="ddltday" runat="server" Width="40px" tabIndex="5"></asp:DropDownList>
						<asp:DropDownList id="ddltyear" runat="server" Width="64px" tabIndex="6"></asp:DropDownList></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 317px">
						<asp:Label id="Label6" runat="server" Width="41" Font-Bold="True" ForeColor="Maroon">Time</asp:Label>
						<asp:Label id="Label7" runat="server" Width="50px" ForeColor="Maroon">From</asp:Label>
						<asp:DropDownList id="ddlftimehr" runat="server" Width="40px" tabIndex="7"></asp:DropDownList>
						<asp:DropDownList id="ddlftimemin" runat="server" Width="40px" tabIndex="8"></asp:DropDownList>
						<asp:DropDownList id="ddlfam_pm" runat="server" Width="88px" tabIndex="9"></asp:DropDownList></TD>
					<TD>
						<asp:Label id="Label8" runat="server" ForeColor="Maroon">To</asp:Label>
						<asp:DropDownList id="ddlttimehr" runat="server" Width="40px" tabIndex="10"></asp:DropDownList>
						<asp:DropDownList id="ddlttimemin" runat="server" Width="40px" tabIndex="11"></asp:DropDownList>
						<asp:DropDownList id="ddltam_pm" runat="server" Width="64px" tabIndex="12"></asp:DropDownList></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="Z-INDEX: 120; LEFT: 128px; WIDTH: 616px; POSITION: absolute; TOP: 264px; HEIGHT: 30px"
				cellSpacing="1" cellPadding="1" width="616" border="1">
				<TR>
					<TD>
						<asp:Label id="Label10" runat="server" ForeColor="Maroon">Date(m/d/y)</asp:Label></TD>
					<TD style="WIDTH: 228px">
						<asp:DropDownList id="ddlrday" runat="server" Width="58px" Height="18px" tabIndex="13"></asp:DropDownList>
						<asp:DropDownList id="ddlrmonth" runat="server" Width="58px" Height="18px" tabIndex="14"></asp:DropDownList>
						<asp:DropDownList id="ddlryear" runat="server" Width="73" Height="10px" tabIndex="15"></asp:DropDownList></TD>
					<TD>
						<asp:Label id="Label11" runat="server" Width="57px" ForeColor="Maroon">Time</asp:Label></TD>
					<TD>
						<asp:DropDownList id="ddlrtimehr" runat="server" Width="58px" Height="18px" tabIndex="16"></asp:DropDownList>
						<asp:DropDownList id="ddlrtimemin" runat="server" Width="58" Height="18px" tabIndex="17"></asp:DropDownList>
						<asp:DropDownList id="ddlram_pm" runat="server" Width="73" tabIndex="18"></asp:DropDownList></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 119; LEFT: 168px; WIDTH: 289px; POSITION: absolute; TOP: 424px; HEIGHT: 63px"
				cellSpacing="1" cellPadding="1" width="289" border="1">
				<TR>
					<TD style="HEIGHT: 14px">
						<asp:Label id="Label15" runat="server" Width="168px" Height="22px" ForeColor="Maroon">Distance from police station</asp:Label></TD>
					<TD style="HEIGHT: 14px">
						<asp:DropDownList id="ddldist" runat="server" Width="96px" tabIndex="20"></asp:DropDownList></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label18" runat="server" Width="176px" Height="20px" ForeColor="Maroon">Direction from police station</asp:Label></TD>
					<TD>
						<asp:DropDownList id="ddldir" runat="server" Width="95px" tabIndex="21"></asp:DropDownList></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 118; LEFT: 168px; WIDTH: 264px; POSITION: absolute; TOP: 520px; HEIGHT: 191px"
				cellSpacing="1" cellPadding="1" width="264" border="1">
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label20" runat="server" Width="88px" Height="10px" ForeColor="Maroon">H no:/Flat no:</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txthno" runat="server" Width="170px" TextMode="MultiLine" tabIndex="22"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label21" runat="server" Width="80px" Height="10px" ForeColor="Maroon">Street/Village</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtvillage" runat="server" Width="170px" TextMode="MultiLine" tabIndex="23"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label22" runat="server" Width="80px" Height="10px" ForeColor="Maroon">City/District</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtdist" runat="server" Width="170px" TextMode="MultiLine" tabIndex="24"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label23" runat="server" Width="64px" Height="16px" ForeColor="Maroon">State</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtstate" runat="server" Width="170px" tabIndex="25"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label25" runat="server" Width="64px" Height="16px" ForeColor="Maroon">Pin code</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtpin" runat="server" Width="170px" tabIndex="26"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label24" runat="server" Width="88px" Height="10px" ForeColor="Maroon">Phone number</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtphone" runat="server" Width="172px" tabIndex="27"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:RadioButtonList id="rblinfo" style="Z-INDEX: 107; LEFT: 184px; POSITION: absolute; TOP: 304px" runat="server"
				Width="208px" BorderStyle="Ridge" BorderWidth="1px" tabIndex="19" ForeColor="Maroon">
				<asp:ListItem Value="Oral">Oral</asp:ListItem>
				<asp:ListItem Value="Written">Written</asp:ListItem>
				<asp:ListItem Value="Phone">Phone</asp:ListItem>
				<asp:ListItem Value="referredby_megistrate">Referred by Megistrate</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Label id="Label19" style="Z-INDEX: 108; LEFT: 16px; POSITION: absolute; TOP: 496px" runat="server"
				Width="144px" Font-Bold="True" ForeColor="Green">Address Details:</asp:Label>
			<asp:Label id="Label12" style="Z-INDEX: 109; LEFT: 16px; POSITION: absolute; TOP: 424px" runat="server"
				Width="144px" Font-Bold="True" ForeColor="Green">Place Of Occurence:</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 110; LEFT: 16px; POSITION: absolute; TOP: 320px" runat="server"
				Width="152px" Font-Bold="True" ForeColor="Green">Type Of Information</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 111; LEFT: 16px; POSITION: absolute; TOP: 232px" runat="server"
				Font-Bold="True" ForeColor="Green">Date And Time of  Information Recive At Police Station :</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 136px" runat="server"
				Font-Bold="True" ForeColor="Green">OCCURENCE OF OFFENCE Date& Time : </asp:Label>
			<asp:Label id="Label17" style="Z-INDEX: 113; LEFT: 464px; POSITION: absolute; TOP: 432px" runat="server"
				Width="40px" Height="24px">Kms</asp:Label>
			<asp:Button id="btnnext_add" style="Z-INDEX: 114; LEFT: 320px; POSITION: absolute; TOP: 760px"
				runat="server" Width="98px" Height="30px" Text="save&amp;continue" tabIndex="28" BorderStyle="Outset"
				BackColor="#E0E0E0" BorderWidth="3px" BorderColor="Maroon" onclick="btnnext_add_Click"></asp:Button>
			<HR style="Z-INDEX: 117; LEFT: 8px; WIDTH: 715px; POSITION: absolute; TOP: 904px; HEIGHT: 2px"
				width="715" color="#ccccff" SIZE="2" runat="server"/>
				<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 115; LEFT: 456px; POSITION: absolute; TOP: 624px"
					runat="server" ErrorMessage="Enter City" ControlToValidate="txtdist"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                ErrorMessage="Enter correct phone number" Style="left: 249px; position: relative;
                top: 703px; z-index: 116;" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
