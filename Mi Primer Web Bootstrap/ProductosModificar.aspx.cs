using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using Biblioteca_De_Clases;
using System.Diagnostics;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class ProductosModificar : System.Web.UI.Page
    {
        static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            {
                Clear();
            }
            
        }

        protected void BtnModificarProducto_Click(object sender, EventArgs e)
        {
            ////Debug.Assert(precio.Value.Length > 0, "el precio esta vacío, men");
            
            try
            {
                using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                {
                    
                    sqlConn.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("sp_productos", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_id_producto", Convert.ToInt64(id_producto.Value));
                    sqlCmd.Parameters.AddWithValue("_precio", Convert.ToInt64(precio.Value));
                    sqlCmd.Parameters.AddWithValue("_id_sucursal", Convert.ToInt64(id_sucursal.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_proveedor", Convert.ToInt64(id_proveedor.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_id_categoria", Convert.ToInt64(id_categoria.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("_nombre_producto", nombre_producto.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("_unidad_medida", unidad_medida.Value.Trim());
                    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "editar");
                    sqlCmd.ExecuteNonQuery();


                    lblSuccessMessage.Text = "El producto se ha modificado con exito!";

                }
            }
            catch
            {
                //lblErrorMessage.Text = ex.Message;
                lblErrorMessage.Text = "Verifica que los Datos sean correctos!";

            }


        }
        void Clear()
        {
            //id_producto.Value = "";
            precio.Value = id_sucursal.Value = id_proveedor.Value = id_categoria.Value = nombre_producto.Value = unidad_medida.Value = "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
    
}