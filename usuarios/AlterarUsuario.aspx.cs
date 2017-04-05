using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_AlterarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string codigo = Request.QueryString["ID_CADASTRO"];
            lblId.Text = codigo;

            using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_USUARIOS where ID_CADASTRO = " + codigo, con))
                {
                    try
                    {
                        con.Open();
                        SqlDataReader sdrInfUsuarios = cmd.ExecuteReader();
                        sdrInfUsuarios.Read();
                        txtSobrenome.Text = sdrInfUsuarios.GetString(2);
                        txtNome.Text = sdrInfUsuarios.GetString(1);
                        txtUsuario.Text = sdrInfUsuarios.GetString(3);
                        txtEMAIL.Text = sdrInfUsuarios.GetString(4);
                        txtSenha.Text = sdrInfUsuarios.GetString(5);
                        txtData.Text = sdrInfUsuarios.GetString(6);

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

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["ID_CADASTRO"];

        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=LIVRARIA;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE TB_USUARIOS SET  NOME = @NOM, SOBRENOME =  @SOB, NOME_USUARIO = @USU, EMAIL = @EMA, SENHA = @SEN, DATA_CADASTRO = @DAT WHERE ID_CADASTRO = " + codigo, con))
            {
                cmd.Parameters.AddWithValue("NOM", txtNome.Text);
                cmd.Parameters.AddWithValue("SOB", txtSobrenome.Text);
                cmd.Parameters.AddWithValue("USU", txtUsuario.Text);
                cmd.Parameters.AddWithValue("EMA", txtEMAIL.Text);
                cmd.Parameters.AddWithValue("SEN", txtSenha.Text);
                cmd.Parameters.AddWithValue("DAT", txtData.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblErro.Text = "Usuário alterado com sucesso";
                    }
                }
                catch (Exception ex)
                {
                    lblErro.Text = "Houve algum problema: " + ex;
                }
            }
        }
    }
}