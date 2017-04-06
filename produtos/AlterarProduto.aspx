<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarProduto.aspx.cs" Inherits="produtos_AlterarProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Sistema de Livraria - Alterar Produto</h2>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Width="229px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Tipo: "></asp:Label>
        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Quantidade: "></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Preço da Compra: "></asp:Label>
        <asp:TextBox ID="txtCompra" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Preço da Venda: "></asp:Label>
        <asp:TextBox ID="txtVenda" runat="server" Width="185px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Data do Cadastro: "></asp:Label>
        <asp:TextBox ID="txtData" runat="server" Width="179px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" OnClick="btnAlterar_Click" Text="Alterar" />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/produtos/IndexProduto.aspx">Voltar</asp:HyperLink>
    </form>
</body>
</html>
