using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class ProductosConsultas : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        MySqlConnection mySql = new MySqlConnection(cadenaConexionMySQL);
        Controlador c = new Controlador();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnBusquedaProdId_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM producto WHERE id_producto =" + id_producto.Text;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaProductos.DataSource = conexion.ConsultarRegistrosMySQL(query);
            id_producto.Text = " ";
            try
            {
                TablaProductos.DataBind();
            }
            catch 
            { 
            
            }
        }

        protected void BtnBusquedaProdNomb_Click(object sender, EventArgs e)
        {
            
            try
            {
                string query = "SELECT * FROM producto WHERE nombre_producto = '" + nombre_producto.Text.ToUpper() + "';";
                DataTable dt = conexion.ConsultarRegistrosMySQL(query);
                
                TablaProductos.DataSource = conexion.ConsultarRegistrosMySQL(query);
                
                try
                {
                    
                    TablaProductos.DataBind();
                }
                catch
                {
                    
                }
                
            }
            catch
            {

                //lblErrorMessage.Text = "Verifique los datos";
            }
            Clear();
        }

        void Clear()
        {
            id_producto.Text = nombre_producto.Text = "";
        }
    }
}