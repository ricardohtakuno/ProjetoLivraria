<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarUsuario.aspx.cs" Inherits="usuarios_AlterarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Sistema de Livraria - Alterar</h2>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Width="222px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Sobrenome: "></asp:Label>
        <asp:TextBox ID="txtSobrenome" runat="server" Width="185px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Usuário: "></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server" Width="205px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="E-MAIL: "></asp:Label>
        <asp:TextBox ID="txtEMAIL" runat="server" Width="195px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="txtSenha" runat="server" Width="210px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Data do Cadastro: "></asp:Label>
        <asp:TextBox ID="txtData" runat="server" Width="139px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" OnClick="btnAlterar_Click" Text="Alterar" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Voltar</asp:HyperLink>
    </form>
</body>
</html>
