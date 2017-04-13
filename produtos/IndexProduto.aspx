<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndexProduto.aspx.cs" Inherits="produtos_IndexProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../estilo.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="titulo">
    
        <h1>Sistema de Livraria - Index</h1>
    
    </div>
        <br />
        <div id="area_index">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/produtos/CadastrarProduto.aspx">Cadastrar novo produto</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Lista de usuários"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="dtlProdutos" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("NOME") %>'></asp:Label>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("PRECO_VENDA") %>'></asp:Label>
                &nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ID_PRODUTO","PesquisarProduto.aspx?id={0}") %>' Text='<%# "Pesquisar Produto" %>'></asp:HyperLink>
                &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("ID_PRODUTO","AlterarProduto.aspx?id={0}") %>' Text='<%# "Alterar" %>'></asp:HyperLink>
                &nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("ID_PRODUTO","ExcluirProduto.aspx?id={0}") %>' Text='<%# "Excluir" %>'></asp:HyperLink>
                &nbsp;
            </ItemTemplate>
        </asp:DataList>
        </div>
    </form>
</body>
</html>
