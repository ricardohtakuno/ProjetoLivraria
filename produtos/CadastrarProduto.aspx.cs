using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class produtos_CadastrarProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TB_PRODUTOS (NOME, TIPO, QUANTIDADE, PRECO_COMPRA, PRECO_VENDA) VALUES (@NOM, @TIP, @QUA, @COM, @VEN)", con))
            {
                cmd.Parameters.AddWithValue("NOM", txtNome.Text);
                cmd.Parameters.AddWithValue("TIP", txtTipo.Text);
                cmd.Parameters.AddWithValue("QUA", int.Parse(txtQuantidade.Text));
                cmd.Parameters.AddWithValue("COM", decimal.Parse(txtCompra.Text));
                cmd.Parameters.AddWithValue("VEN", decimal.Parse(txtVenda.Text));

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblErro.Text = "Produto cadastrado com sucesso";
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