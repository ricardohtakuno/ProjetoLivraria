<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndexUsuario.aspx.cs" Inherits="usuarios_IndexUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Sistema de Livraria</h1>
    
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/usuarios/CadastrarUsuario.aspx">Cadastrar novo Usuário</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Lista de Usuários"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="dtlUsuarios" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("NOME_USUARIO") %>'></asp:Label>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DATA_CADASTRO") %>'></asp:Label>
                &nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("ID_USUARIO","PesquisarUsuario.aspx?id={0}") %>' Text='<%# "Pesquisar Usuário" %>'></asp:HyperLink>
                &nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ID_USUARIO","AlterarUsuario.aspx?id={0}") %>' Text='<%# "Alterar" %>'></asp:HyperLink>
                &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("ID_USUARIO","ExcluirUsuario.aspx?id={0}") %>' Text='<%# "Excluir" %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
