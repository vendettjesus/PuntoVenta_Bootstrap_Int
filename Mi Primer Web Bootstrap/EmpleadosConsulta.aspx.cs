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
    
    public partial class EmpleadosConsulta : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        MySqlConnection mySql = new MySqlConnection(cadenaConexionMySQL);
        Controlador c = new Controlador();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void BtnAgregarEmpleado_Click(object sender, EventArgs e)
        {

           
        }

        void Clear()
        {
            id_empleado.Text = "";
            
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void BtnBusquedaPorId_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM empleado WHERE id_empleado =" + id_empleado.Text;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaEmpleados.DataSource = conexion.ConsultarRegistrosMySQL(query);
            id_empleado.Text = " ";
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
            string query = "SELECT * FROM empleado WHERE nombre_empleado = '" + nombreEmpleado.Text.ToUpper() + "';";
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
    }
}