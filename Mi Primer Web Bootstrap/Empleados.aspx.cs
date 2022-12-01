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
    public partial class Empleados : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void BtnAgregarEmpleado_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                {
                    sqlConn.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("sp_empleados", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_id_empleado", Convert.ToInt32(id_Empleado.Text == "" ? "0" : id_Empleado.Text));
                    sqlCmd.Parameters.AddWithValue("_nombreEmpleado", nombreEmpleado.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_RFC", rfc.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_direccion", direccion.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_telefono", telefono.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "nuevo");
                    sqlCmd.ExecuteNonQuery();


                    lblSuccessMessage.Text = "El empleado se ha agregado con exito!";

                }
            }
            catch
            {

                lblErrorMessage.Text = "Verifica que los Datos sean correctos!";
                //lblErrorMessage.Text = ex.Message;
            }
        }

        void Clear()
        {
            id_Empleado.Text = "";
            nombreEmpleado.Text = rfc.Text = direccion.Text = telefono.Text = accion.Value = "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }

    }
}