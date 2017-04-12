<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarProduto.aspx.cs" Inherits="produtos_CadastrarProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../estilo.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="titulo">
    
        <h2>Cadastro de Produtos</h2>
    
    </div>
        <div id="area">
        <fieldset>
        <div class="campo">
        <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Width="300px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label2" runat="server" Text="Tipo: "></asp:Label>
        <asp:TextBox ID="txtTipo" runat="server" Width="300px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label3" runat="server" Text="Quantidade: "></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" Width="300px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label4" runat="server" Text="Preço da Compra: "></asp:Label>
        <asp:TextBox ID="txtCompra" runat="server" Width="300px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label5" runat="server" Text="Preço da Venda: "></asp:Label>
        <asp:TextBox ID="txtVenda" runat="server" Width="300px"></asp:TextBox>
        </div>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" class="botao" Text="Cadastrar" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/produtos/IndexProduto.aspx">Voltar</asp:HyperLink>
        </fieldset>
        </div>
    </form>
</body>
</html>
