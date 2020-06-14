using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Web
{
    public partial class Listar : System.Web.UI.Page
    {
        #region Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarAlunos();
        }
        #endregion

        #region ListaUsuarios();

        private void ListarAlunos()
        {
            string query = @"select * from aluno";
            DataTable dt = new DataTable();

            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                rptAluno.DataSource = dt;
                rptAluno.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Falha" + ex.Message;
            }
        }
        #endregion
    }
}