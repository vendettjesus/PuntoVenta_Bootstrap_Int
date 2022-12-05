using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_De_Clases;
using System.ComponentModel;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class ProductosEliminar : System.Web.UI.Page
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

        protected void BtnEliminarProd_Click(object sender, EventArgs e)
        {
            try
            {
                c.EliminarProducto(Convert.ToInt32(id_producto.Value));
                //using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                //{
                //    sqlConn.Open();
                //    MySqlCommand sqlCmd = new MySqlCommand("sp_productos", sqlConn);
                //    sqlCmd.CommandType = CommandType.StoredProcedure;
                //    sqlCmd.Parameters.AddWithValue("_id_producto", Convert.ToInt32(id_producto.Value.Trim()));
                //    sqlCmd.Parameters.AddWithValue("_precio", Convert.ToDecimal(precio.Value == "" ? "0" : precio.Value));
                //    sqlCmd.Parameters.AddWithValue("_id_sucursal", Convert.ToInt32(id_sucursal.Value == "" ? "0" : id_sucursal.Value));
                //    sqlCmd.Parameters.AddWithValue("_id_proveedor", Convert.ToInt32(id_proveedor.Value == "" ? "0" : id_proveedor.Value));
                //    sqlCmd.Parameters.AddWithValue("_id_categoria", Convert.ToInt32(id_categoria.Value == "" ? "0" : id_categoria.Value));
                //    sqlCmd.Parameters.AddWithValue("_nombre_producto", nombre_producto.Value = " ");
                //    sqlCmd.Parameters.AddWithValue("_unidad_medida", unidad_medida.Value = " ");
                //    sqlCmd.Parameters.AddWithValue("accion", accion.Value = "eliminar");
                //    sqlCmd.ExecuteNonQuery();


                  lblSuccessMessage.Text = "El producto se ha retirado del catálogo con exito!";

                //}
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
                //lblErrorMessage.Text = "Verifica que los Datos sean correctos!";

            }


        }
        void Clear()
        {
            nombre_producto_a.Text = "";
            id_producto.Value = "";
            precio.Value = id_sucursal.Value = id_proveedor.Value = id_categoria.Value = id_producto.Value = nombre_producto.Value = unidad_medida.Value = nombre_producto_a.Text = id_producto_a.Text = "";
            lblErrorMessage.Text = lblSuccessMessage.Text = "";


        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void BtnBusquedaProdId_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM producto WHERE id_producto =" + id_producto_a.Text;
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

        protected void BtnBusquedaProdNomb_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM producto WHERE nombre_producto = '" + nombre_producto_a.Text.ToUpper() + "';";
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);

            TablaProductos.DataSource = conexion.ConsultarRegistrosMySQL(query);

            try
            {

                TablaProductos.DataBind();
            }
            catch
            {

            }
            Clear();
        }
    }
}