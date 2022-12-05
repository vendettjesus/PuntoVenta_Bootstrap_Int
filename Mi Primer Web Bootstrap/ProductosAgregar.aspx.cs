using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using MySql.Data.MySqlClient;
using System.Data;
using Biblioteca_De_Clases;
using System.Collections;

namespace Mi_Primer_Web_Bootstrap
{
    
    public partial class ProductosAgregar : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void BtnAgregarProd_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                {
                    sqlConn.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("sp_productos", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_id_producto", Convert.ToInt32(id_producto.Value == "" ? "0" : id_producto.Value));
                    sqlCmd.Parameters.AddWithValue("_precio", Convert.ToDecimal(precio.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_sucursal", Convert.ToInt32(id_sucursal.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_proveedor", Convert.ToInt32(id_proveedor.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_categoria", Convert.ToInt32(id_categoria.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_nombre_producto", nombre_producto.Value.ToUpper().Trim());
                    sqlCmd.Parameters.AddWithValue("_unidad_medida", unidad_medida.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "nuevo");
                    sqlCmd.ExecuteNonQuery();

                    
                    lblSuccessMessage.Text = "El producto se ha agregado con exito!";
                    
                }
            }
            catch 
            {
                
                lblErrorMessage.Text = "Verifica que los Datos sean correctos!";
                
            }

            
        }
        void Clear()
        {
            id_producto.Value = "";
            precio.Value = id_sucursal.Value = id_proveedor.Value = id_categoria.Value = id_producto.Value = nombre_producto.Value = unidad_medida.Value =  "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}