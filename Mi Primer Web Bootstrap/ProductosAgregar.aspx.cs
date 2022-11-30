using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using MySql.Data.MySqlClient;

namespace Mi_Primer_Web_Bootstrap
{
    
    public partial class ProductosAgregar : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        readonly MySqlConnection con = new MySqlConnection(cadenaConexionMySQL);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregarProd_Click(object sender, EventArgs e)
        {
            
        }

    }
}