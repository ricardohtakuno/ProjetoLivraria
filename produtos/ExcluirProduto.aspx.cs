using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class produtos_ExcluirProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        lblId.Text = codigo;

        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_PRODUTOS where ID_PRODUTO = " + codigo, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader sdrInfUsuarios = cmd.ExecuteReader();
                    sdrInfUsuarios.Read();
                    lblNome.Text = sdrInfUsuarios.GetString(1);
                    lblTipo.Text = sdrInfUsuarios.GetString(2);
                    lblQuantidade.Text = sdrInfUsuarios.GetInt32(3).ToString();
                    lblCompra.Text = sdrInfUsuarios.GetDecimal(4).ToString();
                    lblVenda.Text = sdrInfUsuarios.GetDecimal(5).ToString();
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

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];

        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("DELETE FROM TB_PRODUTOS where ID_PRODUTO = " + codigo, con))
            {
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblNome.Text = "";
                    lblTipo.Text = "";
                    lblQuantidade.Text = "";
                    lblCompra.Text = "";
                    lblVenda.Text = "";
                    lblData.Text = "";
                    lblId.Text = "";

                    lblErro.Text = "Produto excluido com sucesso. CLICK no voltar para retornar à tela inicial.";
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