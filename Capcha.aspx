<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Capcha.aspx.vb" Inherits="Capcha_Capcha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form1 {
            width: 500px;
            margin: 20px auto;
            padding: 10px;
            background-color: #f4f4f4;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .textbox {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        #btnLogin {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }       
        #btnLogin:hover {
            background-color: #45a049;
        }      
        #Label1 {
            color: #333;
            font-size: 14px;
            margin-top: 10px;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" CssClass="textbox" ID="txtInstituteName" placeholder="Institute Name:"></asp:TextBox>
            <asp:TextBox ID="txtInstituteID" runat="server" CssClass="textbox" placeholder="Institute ID:"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" placeholder="Password:"></asp:TextBox>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="textbox" placeholder="Confirm Password:"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" placeholder="Email:"></asp:TextBox>
            <asp:TextBox ID="txtWebsite" runat="server" CssClass="textbox" placeholder="Website:"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" placeholder="Address:"></asp:TextBox>
            <asp:TextBox ID="txtOther1" runat="server" CssClass="textbox" placeholder="Other1:"></asp:TextBox> 

            <div class="g-recaptcha" data-sitekey="6LeYmq8pAAAAABU-FC4HBPvq3KrNXLEp5MmGP8JF"></div>

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btnLogin" />
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </form>

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

</body>
</html>
