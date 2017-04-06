using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class produtos_IndexProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection("Server=RICARDO-PC\\SQLEXPRESS;Database=DB_LIVRARIA;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_PRODUTOS", con))
                {
                    con.Open();
                    dtlProdutos.DataSource = cmd.ExecuteReader();
                    dtlProdutos.DataBind();
                }
            }
        }
    }
}