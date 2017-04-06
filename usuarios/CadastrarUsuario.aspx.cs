using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_CadastrarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TB_USUARIOS (NOME, SOBRENOME, NOME_USUARIO, EMAIL, SENHA) VALUES (@NOM, @SOB, @USU, @EMA, @SEN)", con))
            {
                cmd.Parameters.AddWithValue("NOM", txtNome.Text);
                cmd.Parameters.AddWithValue("SOB", txtSobrenome.Text);
                cmd.Parameters.AddWithValue("USU", txtUsuario.Text);
                cmd.Parameters.AddWithValue("EMA", txtEMAIL.Text);
                cmd.Parameters.AddWithValue("SEN", txtSenha.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.Text = "Usuário cadastrado com sucesso";
                    }
                }
                catch (Exception ex)
                {
                    lblMensagem.Text = "Houve algum problema: " + ex;
                }
            }
        }
    }
}