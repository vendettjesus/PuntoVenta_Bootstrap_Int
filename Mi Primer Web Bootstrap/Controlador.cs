using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Biblioteca_De_Clases;
using System.Data;
using System.Net;
using MySql.Data.MySqlClient;

namespace Mi_Primer_Web_Bootstrap
{
    public class Controlador
    {
        Conexion conexion = new Conexion();
        //static string cadenaConexionMySQL = "Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022.";
        public int Login(Permisos permisos)
        {


            string query = "SELECT id_usuario FROM Usuarios " +
                "WHERE usuario = '" + permisos.Usuario + "' " +
                "AND contrasena='" + permisos.Contrasena + "'";

            


            try
            {
                //using (MySqlConnection sqlConn = new MySqlConnection(cadenaConexionMySQL))
                //{
                //    sqlConn.Open();
                //    MySqlCommand sqlCmd = new MySqlCommand("sp_validarusuario", sqlConn);
                //    sqlCmd.CommandType = CommandType.StoredProcedure;

                //    sqlCmd.Parameters.AddWithValue("_usuario", permisos.Usuario);
                //    sqlCmd.Parameters.AddWithValue("_contrasena", permisos.Contrasena);

                //    MySqlDataReader dr = sqlCmd.ExecuteReader();

                //    if (dr.Read())
                //    {
                //        return dr.GetInt32(0);
                //    }
                    

                //}
                int id_usuario = Convert.ToInt32(conexion.ObtenerUnSoloValor(query));
                return id_usuario;
            }
            catch
            {
                return 0;
            }

        }

        public Biblioteca_De_Clases.Usuarios BuscarUsuarioID(int id_usuario)
        {
            string query = "Select * from " +
            "Usuarios u Where u.id_usuario =" + id_usuario;
            //DEBE AGREGAR EL using System.Data;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);
            Biblioteca_De_Clases.Usuarios u = new Biblioteca_De_Clases.Usuarios();

            u.Id_usuario = Convert.ToInt32(dt.Rows[0]["idUsuario"]);
            u.Usuario = dt.Rows[0]["usuario"].ToString();
            u.Id_tipoUsuario = Convert.ToInt32(dt.Rows[0]["id_tipoUsuario"]);
            u.Id_empleado = Convert.ToInt32(dt.Rows[0]["id_empleado"]);


            return u;
        }
        public Biblioteca_De_Clases.Usuarios BuscarUsuarioNombre(string nombre)
        {
            string query = "Select * from " +
            "Usuarios u Where u.usuario ='" + nombre + "'";
            //DEBE AGREGAR EL using System.Data;
            DataTable dt = conexion.ConsultarRegistrosMySQL(query);
            Biblioteca_De_Clases.Usuarios u = new Biblioteca_De_Clases.Usuarios();

            u.Id_usuario = Convert.ToInt32(dt.Rows[0]["idUsuario"]);
            u.Usuario = dt.Rows[0]["usuario"].ToString();
            u.Id_tipoUsuario = Convert.ToInt32(dt.Rows[0]["id_tipoUsuario"]);
            u.Id_empleado = Convert.ToInt32(dt.Rows[0]["id_empleado"]);
            return u;
        }
        public int EliminarUsuario(int Id_usuario)
        {
            string query = "DELETE FROM Usuarios WHERE id_usuario =" + Id_usuario.ToString();
            return conexion.EjecutarQueryMySQL(query);            
        }


    }
}

