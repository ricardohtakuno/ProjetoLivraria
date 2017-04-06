using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_PesquisarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        lblId.Text = codigo;

        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_USUARIOS where ID_USUARIO = " + codigo, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader sdrInfUsuarios = cmd.ExecuteReader();
                    sdrInfUsuarios.Read();
                    lblSobrenome.Text = sdrInfUsuarios.GetString(2);
                    lblNome.Text = sdrInfUsuarios.GetString(1);
                    lblUsuario.Text = sdrInfUsuarios.GetString(3);
                    lblEMAIL.Text = sdrInfUsuarios.GetString(4);
                    lblSenha.Text = sdrInfUsuarios.GetString(5);
                    lblData.Text = sdrInfUsuarios.GetDateTime(6).ToString();
                }
                catch
                {
                    //mensagem de erro
                    lblErro.Text = "Erro de banco de dados. Contate o suporte.";
                }
            }
        }
    }
}