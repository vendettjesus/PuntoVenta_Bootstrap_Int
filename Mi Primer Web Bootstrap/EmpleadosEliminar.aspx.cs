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
    public partial class EmpleadosEliminar : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        Conexion conexion = new Conexion();
        Controlador controlador = new Controlador();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnAgregarEmpleado_Click(object sender, EventArgs e)
        {
            
        }

        void Clear()
        {
            id_empleado_.Value = "";
            nombreEmpleado_.Value = RFC_.Value = direccion_.Value = telefono_.Value = accion.Value = "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void BtnBusquedaPorId_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM empleado WHERE id_empleado =" + id_empleado_a.Text;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaEmpleados.DataSource = conexion.ConsultarRegistrosMySQL(query);

            try
            {
                TablaEmpleados.DataBind();
            }
            catch
            {

            }
        }

        protected void BtnBusquedaPorNomb_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM empleado WHERE nombreEmpleado = '" + nombre_empleado.Text.ToUpper() + "';";
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaEmpleados.DataSource = conexion.ConsultarRegistrosMySQL(query);

            try
            {

                TablaEmpleados.DataBind();
            }
            catch
            {

            }
            
        }

        protected void BtnEliminarEmpleado_Click(object sender, EventArgs e)
        {
            try
            {

                using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                {
                    sqlConn.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("sp_empleados", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_id_empleado", Convert.ToInt32(id_empleado_.Value));
                    sqlCmd.Parameters.AddWithValue("_nombreEmpleado", nombreEmpleado_.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("_RFC", RFC_.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("_direccion", direccion_.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("_telefono", telefono_.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "eliminar");
                    sqlCmd.ExecuteNonQuery();


                    lblSuccessMessage.Text = "El empleado se ha retirado con exito!";

                }
            }
            catch
            {

                lblErrorMessage.Text = "Verifica que los Datos sean correctos!";
                //lblErrorMessage.Text = ex.Message;
            }
        }
    }
}