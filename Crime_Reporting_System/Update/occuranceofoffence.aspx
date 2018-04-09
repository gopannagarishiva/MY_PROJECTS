<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm28" enableViewState="True" CodeFile="occuranceofoffence.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm28</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Maroon" Font-Size="X-Large" Width="410px" Font-Italic="True">OCCURENCE OF OFFENCE</asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 656px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
            &nbsp;
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 102; LEFT: 96px; POSITION: absolute; TOP: 416px"
				runat="server" ErrorMessage="* Select One" ControlToValidate="rblinfo"></asp:RequiredFieldValidator>
			<asp:Label id="lbltoi" style="Z-INDEX: 103; LEFT: 200px; POSITION: absolute; TOP: 416px" runat="server"
				Width="96px" ForeColor="#8080FF" Height="4px" BorderStyle="None">Kms</asp:Label>
			<asp:Label id="lbldir" style="Z-INDEX: 104; LEFT: 664px; POSITION: absolute; TOP: 504px" runat="server"
				Width="50px" ForeColor="#8080FF" Height="4px" BorderStyle="None">Kms</asp:Label>
			<asp:Label id="lbldist" style="Z-INDEX: 105; LEFT: 664px; POSITION: absolute; TOP: 448px" runat="server"
				Width="18px" ForeColor="#8080FF" Height="4px" BorderStyle="None">Kms</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 106; LEFT: 56px; POSITION: absolute; TOP: 176px" runat="server"
				ForeColor="Maroon" Font-Bold="True">Date</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 107; LEFT: 456px; POSITION: absolute; TOP: 752px"
				runat="server" ControlToValidate="txtpin" ErrorMessage="Pin code cannot be in Charecters"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 108; LEFT: 216px; POSITION: absolute; TOP: 96px" runat="server"
				Width="112px" ReadOnly="True" Height="24px" BorderStyle="Inset" BackColor="#FFE0C0"></asp:TextBox>
			<asp:Label id="lblfirno" style="Z-INDEX: 109; LEFT: 104px; POSITION: absolute; TOP: 96px" runat="server"
				Width="104px" Font-Bold="True" Height="24px" BorderStyle="None">Firno</asp:Label>
			<TABLE id="Table4" style="Z-INDEX: 124; LEFT: 104px; WIDTH: 676px; POSITION: absolute; TOP: 160px; HEIGHT: 72px"
				cellSpacing="1" cellPadding="1" width="676" border="1">
				<TR>
					<TD style="WIDTH: 411px; HEIGHT: 29px">
						<asp:Label id="Label3" runat="server" Font-Bold="True" Width="41" ForeColor="Maroon">From</asp:Label>
						<asp:DropDownList id="ddlfmonth" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddlfday" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddlfyear" runat="server" Width="88px"></asp:DropDownList>
						<asp:DropDownList id="ddlftimehr" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddlftimemin" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddlfam_pm" runat="server" Width="88px"></asp:DropDownList></TD>
					<TD style="HEIGHT: 29px">
						<asp:Label id="lblfromdate" runat="server" Width="80px" ForeColor="#FF8080" BorderStyle="None"
							Font-Bold="True">Date</asp:Label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 411px">
						<asp:Label id="Label6" runat="server" Width="41" Font-Bold="True" ForeColor="Maroon">TO</asp:Label>
						<asp:DropDownList id="ddltmonth" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltday" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltyear" runat="server" Width="88px"></asp:DropDownList>
						<asp:DropDownList id="ddlttimehr" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddlttimemin" runat="server" Width="40px"></asp:DropDownList>
						<asp:DropDownList id="ddltam_pm" runat="server" Width="88px"></asp:DropDownList></TD>
					<TD>
						<asp:Label id="lbltodate" runat="server" Width="80px" ForeColor="#FF8080" BorderStyle="None"
							Font-Bold="True">Date</asp:Label></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="Z-INDEX: 123; LEFT: 32px; WIDTH: 696px; POSITION: absolute; TOP: 320px; HEIGHT: 52px"
				cellSpacing="1" cellPadding="1" width="696" border="1">
				<TR>
					<TD style="WIDTH: 148px">
						<asp:Label id="Label10" runat="server" ForeColor="Maroon">Date(m/d/y/hr/min/sec/am_pm)</asp:Label></TD>
					<TD style="WIDTH: 360px">
						<asp:DropDownList id="ddlrday" runat="server" Width="48px" Height="18px"></asp:DropDownList>
						<asp:DropDownList id="ddlrmonth" runat="server" Width="54px" Height="18px"></asp:DropDownList>
						<asp:DropDownList id="ddlryear" runat="server" Width="73" Height="10px"></asp:DropDownList>
						<asp:DropDownList id="ddlrtimehr" runat="server" Width="48px" Height="18px"></asp:DropDownList>
						<asp:DropDownList id="ddlrtimemin" runat="server" Width="48px" Height="18px"></asp:DropDownList>
						<asp:DropDownList id="ddlram_pm" runat="server" Width="56px"></asp:DropDownList></TD>
					<TD>
						<asp:Label id="lblrdate" runat="server" Width="104px" ForeColor="#8080FF" BorderStyle="None">label</asp:Label></TD>
					<TD></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 122; LEFT: 368px; WIDTH: 288px; POSITION: absolute; TOP: 432px; HEIGHT: 100px"
				cellSpacing="1" cellPadding="1" width="288" border="1">
				<TR>
					<TD style="HEIGHT: 47px">
						<asp:Label id="Label15" runat="server" Width="168px" Height="22px" ForeColor="Maroon">Distance from police station</asp:Label></TD>
					<TD style="HEIGHT: 47px">
						<asp:DropDownList id="ddldist" runat="server" Width="96px" AutoPostBack="True"></asp:DropDownList></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label18" runat="server" Width="176px" Height="20px" ForeColor="Maroon">Direction from police station</asp:Label></TD>
					<TD>
						<asp:DropDownList id="ddldir" runat="server" Width="95px"></asp:DropDownList></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 121; LEFT: 168px; WIDTH: 264px; POSITION: absolute; TOP: 584px; HEIGHT: 191px"
				cellSpacing="1" cellPadding="1" width="264" border="1">
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label20" runat="server" Width="88px" Height="10px" ForeColor="Maroon">H no:/Flat no:</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txthno" runat="server" Width="170px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label21" runat="server" Width="80px" Height="10px" ForeColor="Maroon">Street/Village</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtvillage" runat="server" Width="170px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label22" runat="server" Width="80px" Height="10px" ForeColor="Maroon">City/District</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtdist" runat="server" Width="170px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label23" runat="server" Width="64px" Height="16px" ForeColor="Maroon">State</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtstate" runat="server" Width="170px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label25" runat="server" Width="64px" Height="16px" ForeColor="Maroon">Pin code</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtpin" runat="server" Width="170px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label24" runat="server" Width="88px" Height="10px" ForeColor="Maroon">Phone number</asp:Label></TD>
					<TD style="WIDTH: 108px">
						<asp:TextBox id="txtphone" runat="server" Width="172px"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:RadioButtonList id="rblinfo" style="Z-INDEX: 110; LEFT: 96px; POSITION: absolute; TOP: 440px" runat="server"
				Width="208px" BorderStyle="Ridge" BorderWidth="1px" ForeColor="Maroon">
				<asp:ListItem Value="Oral">Oral</asp:ListItem>
				<asp:ListItem Value="Written">Written</asp:ListItem>
				<asp:ListItem Value="Phone">Phone</asp:ListItem>
				<asp:ListItem Value="referredby_megistrate">Referred by Megistrate</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Label id="Label19" style="Z-INDEX: 111; LEFT: 32px; POSITION: absolute; TOP: 552px" runat="server"
				Width="144px" Font-Bold="True" ForeColor="#404040">Address Details:</asp:Label>
			<asp:Label id="Label12" style="Z-INDEX: 112; LEFT: 368px; POSITION: absolute; TOP: 400px" runat="server"
				Width="144px" Font-Bold="True" ForeColor="#404040">Place Of Occurence:</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 113; LEFT: 24px; POSITION: absolute; TOP: 392px" runat="server"
				Width="160px" Font-Bold="True" ForeColor="#404040">Type Of Information</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 114; LEFT: 24px; POSITION: absolute; TOP: 288px" runat="server"
				Font-Bold="True" ForeColor="#404040">Date And Time of  Information Recive At Police Station :</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 115; LEFT: 24px; POSITION: absolute; TOP: 128px" runat="server"
				Font-Bold="True" ForeColor="#404040">OCCURENCE OF OFFENCE Date& Time : </asp:Label>
			<asp:Label id="Label17" style="Z-INDEX: 116; LEFT: 704px; POSITION: absolute; TOP: 448px" runat="server"
				Width="56px" Height="24px">Kms</asp:Label>
			<asp:Button id="btnnext_add" style="Z-INDEX: 117; LEFT: 194px; POSITION: absolute; TOP: 851px"
				runat="server" Width="145px" Height="30px" Text="Modify &amp; Go Back" BackColor="#E0E0E0"
				BorderStyle="Outset" BorderColor="Black" BorderWidth="3px" onclick="btnnext_add_Click"></asp:Button>
			<%--<HR style="Z-INDEX: 120; LEFT: 8px; WIDTH: 715px; POSITION: absolute; TOP: 904px; HEIGHT: 2px"
				width="715" color="#ccccff" SIZE="2" runat="server">--%>
				<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 118; LEFT: 456px; POSITION: absolute; TOP: 600px"
					runat="server" ErrorMessage="Hno cannot be blank" ControlToValidate="txthno"></asp:RequiredFieldValidator>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 119;
                left: 336px; position: absolute; top: 119px"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 125; left: 390px; position: absolute; top: 849px" TabIndex="9"
                Text="Cancel" Width="128px" />
		</form>
	</body>
</HTML>
