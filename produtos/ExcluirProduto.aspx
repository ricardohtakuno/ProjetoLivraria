<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExcluirProduto.aspx.cs" Inherits="produtos_ExcluirProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Sistema de Livraria - Excluir Produto</h2>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nome: "></asp:Label>
        <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Tipo: "></asp:Label>
        <asp:Label ID="lblTipo" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Quantidade: "></asp:Label>
        <asp:Label ID="lblQuantidade" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Preço da Compra: "></asp:Label>
        <asp:Label ID="lblCompra" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Preço da Venda: "></asp:Label>
        <asp:Label ID="lblVenda" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Data do Cadastro: "></asp:Label>
        <asp:Label ID="lblData" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Tem certeza que deseja excluir?"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnExcluir" runat="server" OnClick="btnExcluir_Click" Text="Sim, pode continuar" />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/produtos/IndexProduto.aspx">Voltar</asp:HyperLink>
    </form>
</body>
</html>
