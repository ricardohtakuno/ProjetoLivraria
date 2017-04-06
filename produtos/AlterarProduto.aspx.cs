using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class produtos_AlterarProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
                        txtNome.Text = sdrInfUsuarios.GetString(1);
                        txtTipo.Text = sdrInfUsuarios.GetString(2);
                        txtQuantidade.Text = sdrInfUsuarios.GetInt32(3).ToString();
                        txtCompra.Text = sdrInfUsuarios.GetDecimal(4).ToString();
                        txtVenda.Text = sdrInfUsuarios.GetDecimal(5).ToString();
                        txtData.Text = sdrInfUsuarios.GetDateTime(6).ToString();

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
        string codigo = Request.QueryString["id"];

        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE TB_PRODUTOS SET  NOME = @NOM, TIPO =  @TIP, QUANTIDADE = @QUA, PRECO_COMPRA = @COM, PRECO_VENDA = @VEN, DATA_CADASTRO = @DAT WHERE ID_PRODUTO = " + codigo, con))
            {
                cmd.Parameters.AddWithValue("NOM", txtNome.Text);
                cmd.Parameters.AddWithValue("TIP", txtTipo.Text);
                cmd.Parameters.AddWithValue("QUA", int.Parse(txtQuantidade.Text));
                cmd.Parameters.AddWithValue("COM", decimal.Parse(txtCompra.Text));
                cmd.Parameters.AddWithValue("VEN", decimal.Parse(txtVenda.Text));
                cmd.Parameters.AddWithValue("DAT", txtData.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblErro.Text = "Produto alterado com sucesso";
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