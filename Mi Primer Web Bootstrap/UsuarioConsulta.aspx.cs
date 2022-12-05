using Biblioteca_De_Clases;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class UsuarioConsulta : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        MySqlConnection mySql = new MySqlConnection(cadenaConexionMySQL);
        Controlador c = new Controlador();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscaID_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM Usuarios WHERE id_usuario =" + id_usuario.Text;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaUsuarios.DataSource = conexion.ConsultarRegistrosMySQL(query);


            try
            {
                TablaUsuarios.DataBind();
            }
            catch
            {

            }
        }

        protected void BtnBuscaNombre_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM Usuarios WHERE usuario = '" + usuario.Text.ToUpper() + "';";
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaUsuarios.DataSource = conexion.ConsultarRegistrosMySQL(query);

            try
            {

                TablaUsuarios.DataBind();
            }
            catch
            {

            }
        }
    }
}