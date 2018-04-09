<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="forms_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/baground.jpg" bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div style="background-image: url(../Images/baground.jpg); background-color: white">
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Style="left: 418px;
            position: relative; top: 385px; z-index: 100;"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 101;
            left: 369px; position: absolute; top: 18px" Text="Registration Form"></asp:Label>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/forms/loginmain.aspx"
            Style="z-index: 105; left: 710px; position: absolute; top: 15px">BACK</asp:HyperLink>
        <table style="left: 210px; width: 550px; position: relative; top: 48px; z-index: 104;">
            <tr>
                <td style="width: 152px; height: 26px;">
                    User Name*</td>
                <td style="width: 100px; height: 26px;">
                    <asp:TextBox ID="txtusername" runat="server" Style="position: relative"></asp:TextBox></td>
                    <td style="height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                        ErrorMessage="Enter User name" Style="position: relative" Width="153px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 152px; height: 25px">
                    Password*</td>
                <td style="width: 100px; height: 25px">
                    <asp:TextBox ID="txtpassword" runat="server" Style="position: relative" TextMode="Password" Width="149px"></asp:TextBox></td>
                 <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="Enter Password" Style="position: relative"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 152px; height: 25px;">
                    Retype password*</td>
                <td style="width: 100px; height: 25px;">
                    <asp:TextBox ID="txtrepassword" runat="server" Style="position: relative" TextMode="Password" Width="149px"></asp:TextBox></td>
                   <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepassword"
                        ErrorMessage="Enter retype password" Style="position: relative;" Width="160px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                        ControlToValidate="txtrepassword" ErrorMessage="passwors are mismatch" Style="position: relative;" Width="161px"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 152px; height: 87px">
                    Position*</td>
                <td style="width: 100px; height: 87px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="left: 1px; position: relative;
                        top: 8px">
                        <asp:ListItem>CIRCLEINSPECTER</asp:ListItem>
                        <asp:ListItem>SUBINSPECTER</asp:ListItem>
                        <asp:ListItem>CONISTABLE</asp:ListItem>
                    </asp:RadioButtonList></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList1"
                        ErrorMessage="Select one" Style="position: relative; top: -4px; left: 7px;"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td style="width: 152px">
                    Date of Joining</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdoj" runat="server" Style="position: relative" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 152px">
                    working in Police station</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlps" runat="server" Style="position: relative" Width="154px">
                        <asp:ListItem>kUKATPALLY</asp:ListItem>
                        <asp:ListItem>SR Nagar</asp:ListItem>
                        <asp:ListItem>PANJAGUTTA</asp:ListItem>
                        <asp:ListItem>RANGAREDDY</asp:ListItem>
                        <asp:ListItem>NALGONDA</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 152px; height: 23px">
                    Your job ID*</td>
                <td style="width: 100px; height: 23px">
                    <asp:TextBox ID="txtjobid" runat="server" Style="position: relative"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtjobid"
                        ErrorMessage="Job Id compulsory" Style="position: relative" Width="163px"></asp:RequiredFieldValidator></td>
            </tr>
        </table>
        
       <asp:Button ID="cmdsubmit" runat="server" OnClick="cmdsubmit_Click" Style="left: 372px;
            position: relative; top: 132px; z-index: 103;" Text="Submit" />
       </div>
    </form>
</body>
</html>
