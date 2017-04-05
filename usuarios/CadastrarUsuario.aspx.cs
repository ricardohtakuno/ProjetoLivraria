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
        using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_LIVRARIA;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TB_USUARIOS (NOME, SOBRENOME, USUARIO, E-MAIL, SENHA, DATA DO CADASTRO) VALUES (@TIT, @AUT, @CON)", con))
            {
                cmd.Parameters.AddWithValue("TIT", txtTitulo.Text);
                cmd.Parameters.AddWithValue("AUT", txtAutor.Text);
                cmd.Parameters.AddWithValue("CON", txtConteudo.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.Text = "Post cadastrado com sucesso";
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