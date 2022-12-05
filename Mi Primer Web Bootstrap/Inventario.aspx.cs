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

    public partial class Inventario : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        MySqlConnection mySql = new MySqlConnection(cadenaConexionMySQL);
        Controlador controlador = new Controlador();
        Conexion conexion = new Conexion();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT * FROM producto";
            MySqlDataAdapter ad = new MySqlDataAdapter(query, cadenaConexionMySQL);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            gvProduct.DataSource = dt;
            gvProduct.DataBind();
            

            
        }

        protected void producto_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

    }
}