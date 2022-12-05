using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class Almacen : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        MySqlConnection mySql = new MySqlConnection(cadenaConexionMySQL);
        Controlador controlador = new Controlador();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT * FROM sucursal_almacen";
            MySqlDataAdapter ad = new MySqlDataAdapter(query, cadenaConexionMySQL);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            gvAlmacen.DataSource = dt;
            gvAlmacen.DataBind();
        }
    }
}