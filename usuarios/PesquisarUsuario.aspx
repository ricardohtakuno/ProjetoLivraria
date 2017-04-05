<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PesquisarUsuario.aspx.cs" Inherits="usuarios_PesquisarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Sistema de Livraria - Pesquisar Usuário</h2>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nome: "></asp:Label>
        <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Sobrenome: "></asp:Label>
        <asp:Label ID="lblSobrenome" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Nome do Usuário: "></asp:Label>
        <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="E-MAIL: "></asp:Label>
        <asp:Label ID="lblEMAIL" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Senha: "></asp:Label>
        <asp:Label ID="lblSenha" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Data do Cadastro: "></asp:Label>
        <asp:Label ID="lblData" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Voltar</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
    </form>
</body>
</html>
