using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Web
{
    public partial class Inserir : System.Web.UI.Page
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
                cmd.CommandText = @"insert into funcionario
                                    (fun_nome, fun_sexo, fun_data_nasc, fun_num_carte_traba,
                                    fun_tele_fixo, fun_tele_cel, fun_email,fun_endere)
                                    values
                                    (@fun_nome, @fun_sexo, @fun_data_nasc, @fun_num_carte_traba,
                                    @fun_tele_fixo, @fun_tele_cel, @fun_email, @fun_endere)";

                cmd.Parameters.AddWithValue("fun_nome", txtNome.Text);
                cmd.Parameters.AddWithValue("fun_sexo", ddlSexo.Text);
                cmd.Parameters.AddWithValue("fun_data_nasc", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("fun_num_carte_traba", txtCarteira.Text);
                cmd.Parameters.AddWithValue("fun_tele_fixo", txtTelfixo.Text);
                cmd.Parameters.AddWithValue("fun_tele_cel", txtTelcel.Text);
                cmd.Parameters.AddWithValue("fun_email", txtEmail.Text);
                cmd.Parameters.AddWithValue("fun_endere", txtEndere.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                Response.Redirect("Inserir.aspx");


            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}