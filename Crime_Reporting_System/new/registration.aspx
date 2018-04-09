<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="new_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>



</head>
<body background="../Images/bagroundimg.bmp">
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="cmdsubmit" runat="server" OnClick="cmdsubmit_Click" Style="left: 408px;
            position: relative; top: 345px; z-index: 100;" Text="Submit" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
            ForeColor="#0000C0" Style="z-index: 101; left: 323px; position: relative; top: 1px"
            Width="184px">User Registration</asp:Label><br />
        <br />
        <br />
        <br />
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtvoteid"
            ErrorMessage="Enter Correct voterId" Style="z-index: 105; left: 554px; position: absolute;
            top: 251px" ValidationExpression="([0-9]{3,10})" Width="176px"></asp:RegularExpressionValidator>
        <table style="left: 150px;  position: relative; top: -57px; z-index: 103;" id="TABLE1">
            <tr>
                <td style="width: 200px; height: 11px;">
                    User Name*</td>
                <td style="width: 60px; height: 11px;">
                    <asp:TextBox ID="txtusername" runat="server" Style="position: relative" Width="175px"></asp:TextBox></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                        ErrorMessage="Enter User name" Style="position: relative" Width="180px"></asp:RequiredFieldValidator></td>
            </tr>
            
           <tr>
                <td style="width: 200px; height: 26px">
                    Password*</td>
                <td style="width: 60px; height: 26px">
                    <asp:TextBox ID="txtpassword" runat="server" Style="position: relative" TextMode="Password" Width="173px"></asp:TextBox></td>
                 <td style="height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="Enter Password" Style="position: relative" Width="180px"></asp:RequiredFieldValidator></td>
            </tr>
            
         <tr>
                <td style="width: 200px; height: 11px">
                    Retype password*</td>
                <td style="width: 60px; height: 11px;">
                    <asp:TextBox ID="txtrepassword" runat="server" Style="position: relative" TextMode="Password" Width="173px"></asp:TextBox></td>
                 <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepassword"
                        ErrorMessage="Enter retype password" Style="position: relative; z-index: 100;" Width="180px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                        ControlToValidate="txtrepassword" ErrorMessage="passwords are mismatch" Style="position: absolute; z-index: 102; left: 394px; top: 63px;" Width="180px"></asp:CompareValidator></td>
            </tr>
                <tr>
                <td style="width: 200px; height: 11px">
                    Address</td>
                <td style="width: 60px; height: 11px">                    
                    <asp:TextBox ID="TextBox1" runat="server" Style=" position: relative; "
                        TextMode="MultiLine"></asp:TextBox></td>
                 <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter Address compulsory" Style=" position: relative;
                        " Width="180px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 200px; height: 11px;">
                    Mobile Number</td>
                <td style="width: 60px; height: 11px;">
                    <asp:TextBox ID="txtmobile" runat="server" Style="position: relative" Width="175px"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobile"
                            ErrorMessage="Enter correct mobile number" Style="z-index: 100; left: 395px;
                            position: absolute; top: 134px" ValidationExpression="([0-9]{10})" Width="176px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 200px; height: 11px">
                    Your Nearest Police station</td>
                <td style="width: 60px; height: 11px">
                    <asp:DropDownList ID="ddlps" runat="server" Style="position: relative" Width="179px">
                        <asp:ListItem>kUKATPALLY</asp:ListItem>
                        <asp:ListItem>SR Nagar</asp:ListItem>
                        <asp:ListItem>PANJAGUTTA</asp:ListItem>
                        <asp:ListItem>RANGAREDDY</asp:ListItem>
                        <asp:ListItem>NALGONDA</asp:ListItem>
                    </asp:DropDownList></td>
                    <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 200px; height: 11px">
                    Your voter Id number</td>
                <td style="width: 60px; height: 11px">
                    <asp:TextBox ID="txtvoteid" runat="server" Style=" position: relative;" Width="172px"></asp:TextBox></td>
                        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtvoteid"
                        ErrorMessage="Enter User Voter Id" Style="position: relative" Width="180px"></asp:RequiredFieldValidator></td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server" Style="left: 400px; position: relative; top: -30px; z-index: 104;" Font-Bold="True" ForeColor="Fuchsia"></asp:Label>
    </form>
</body>
</html>
