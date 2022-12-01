using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class Usuarios : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void BtnAgregarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                {
                    sqlConn.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("sp_usuarios", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_id_usuario", Convert.ToInt32(id_Usuario.Text == "" ? "0" : id_Usuario.Text));
                    sqlCmd.Parameters.AddWithValue("_usuario", usuario.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_id_tipoUsuario", Convert.ToInt32(id_tipoUsuario.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_empleado", Convert.ToInt32(id_empleado.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_contrasena", Contrasena.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "nuevo");
                    sqlCmd.ExecuteNonQuery();


                    lblSuccessMessage.Text = "El Usuario se agregó con éxito!";

                }
            }
            catch
            {

                lblErrorMessage.Text = "Verifica que los Datos sean correctos!";

            }
        }

        void Clear()
        {
            id_Usuario.Text = "";
            usuario.Text = id_tipoUsuario.Text = id_empleado.Text = Contrasena.Text = accion.Value = "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }

    }
}