<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarUsuario.aspx.cs" Inherits="usuarios_CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Cadastro de Usuários</h2>
        <p>
            &nbsp;</p>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Width="218px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Sobrenome: "></asp:Label>
        <asp:TextBox ID="txtSobrenome" runat="server" Width="185px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Usuário: "></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server" Width="208px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="E-MAIL: "></asp:Label>
        <asp:TextBox ID="txtEMAIL" runat="server" Width="202px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="txtSenha" runat="server" Width="217px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Data do Cadastro: "></asp:Label>
        <asp:TextBox ID="txtData" runat="server" Width="143px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cadastrar" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PainelAdmin.aspx">Voltar</asp:HyperLink>
    </form>
</body>
</html>
