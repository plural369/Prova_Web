using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Web
{
    public partial class Inserir2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into aluno
                                (alu_ra, alu_nome, alu_sexo, alu_data_nasc, alu_email,
                                alu_endere, alu_curso, alu_ano_ingre)
                                values
                                (@alu_ra, @alu_nome, @alu_sexo, @alu_data_nasc, @alu_email,
                                @alu_endere, @alu_curso, @alu_ano_ingre) ";

                cmd.Parameters.AddWithValue("alu_ra", txtRa.Text);
                cmd.Parameters.AddWithValue("alu_nome", txtNome.Text);
                cmd.Parameters.AddWithValue("alu_sexo", ddlSexo.Text);
                cmd.Parameters.AddWithValue("alu_data_nasc", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("alu_email", txtEmail.Text);
                cmd.Parameters.AddWithValue("alu_endere", txtEndereco.Text);
                cmd.Parameters.AddWithValue("alu_curso", txtCurso.Text);
                cmd.Parameters.AddWithValue("alu_ano_ingre", txtAno.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                Response.Redirect("Listar.aspx");

            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha" + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }


        }
    }
}