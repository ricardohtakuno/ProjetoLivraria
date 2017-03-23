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
            <li>Cadastrar novo</li>
            <li>Listar todos</li>
            <li>Pesquisar</li>
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
