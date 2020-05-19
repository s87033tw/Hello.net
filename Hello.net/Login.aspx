<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hello.net.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="使用者帳號"></asp:Label>
        <asp:TextBox ID="UserName" runat="server" Wrap="False" EnableViewState="False"></asp:TextBox>
        <br>
        <asp:Label ID="Label2" runat="server" Text="使用者密碼"></asp:Label>
        <asp:TextBox ID="Password" runat="server" Wrap="False" EnableViewState="False"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick1"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
