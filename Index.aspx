<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Livraria</h1>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Insira o usuário e senha para acessar"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Usuário: "></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server" Width="205px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="txtSenha" runat="server" Width="213px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text="Mensagem"></asp:Label>
    </form>
</body>
</html>
