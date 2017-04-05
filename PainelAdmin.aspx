<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PainelAdmin.aspx.cs" Inherits="PainelAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Sair</asp:HyperLink>
        </p>
        <h1>Livraria&nbsp; </h1>
        <h2>Painel administrativo</h2>
        <p style="font-weight: 700">
            <asp:Label ID="lblUsuarios" runat="server" Text="Usuarios"></asp:Label>
        </p>
        <ul>
            <li>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/usuarios/CadastrarUsuario.aspx">Cadastrar novo</asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Listar todos</asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/usuarios/PesquisarUsuario.aspx">Pesquisar</asp:HyperLink>
            </li>
        </ul>
        <p style="font-weight: 700">
            Produtos</p>
        <ul>
            <li>Cadastrar novo</li>
            <li>Listar todos</li>
            <li>Pesquisar</li>
        </ul>
    
    </div>
    </form>
</body>
</html>
