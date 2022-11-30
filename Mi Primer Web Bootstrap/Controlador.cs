using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Biblioteca_De_Clases;
using System.Data;
using System.Net;

namespace Mi_Primer_Web_Bootstrap
{
    public class Controlador
    {
        Conexion conexion = new Conexion(); 

        public int Login(Permisos permisos)
        {
            string query= "SELECT id_usuario FROM Usuarios " +
                "WHERE usuario = '" + permisos.Usuario + "' " +
                "AND contrasena='"+permisos.Contrasena+"'";

            try
            {
                int id_usuario = Convert.ToInt32(conexion.ObtenerUnSoloValor(query));
                return id_usuario;
            }
            catch
            {
                return 0;
            }

        }
        public int InsertarUsuario(Biblioteca_De_Clases.Usuarios u)
        {

            string ipPublica = new WebClient().DownloadString("http://icanhazip.com");
            string query = "INSERT INTO Usuarios (usuario, id_tipoUsuario, id_empleado, contrasena)" +
            " VALUES ('" + u.Usuario + "','" + u.Id_tipoUsuario + "','" + u.Id_empleado + "')";
            return conexion.EjecutarQueryMySQL(query);

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


        //public Biblioteca_De_Clases.Usuarios AltaUsuario(string usuarios)
        //{
        //string msg = "";
        //    if (usuario != null)
        //    {
        //        AbrirConexionMySQL();
        //MySqlCommand cmd = new MySqlCommand("sp_usuario", miConn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("id_usuario", MySqlDbType.Int32).Value = 0;
        //        cmd.Parameters.AddWithValue("_usuario", usuarios.Usuario);
        //        cmd.Parameters.AddWithValue("_id_tipoUsuario", usuarios.Id_tipoUsuario);
        //        cmd.Parameters.AddWithValue("_id_empleado", usuarios.Id_empleado);
        //        cmd.Parameters.AddWithValue("_contrasena", usuarios.Contrasena);
        //        cmd.Parameters.Add("accion", MySqlDbType.VarChar).Value = "nuevo";


        //        miConn.Open();
        //        int i = cmd.ExecuteNonQuery();
        //miConn.Close();

        //        if (i > 0)
        //        {
        //            msg = "Los datos se han guardado con éxito";
        //        }
        //        else
        //        {
        //            msg = "Error, verifique los datos";
        //        }

        //    }
        //    return msg;
        //}

    }
}
// Todo Esto Va En Usuario (ALTAS)
// Evento Del Boton
// Biblioteca_De_Clases.Usuario u= new Biblioteca_De_Clases.Usuarios();

//u.Usuario = Usuario.Text;
//u.Contrasena = Contrasena.Text;
//u.Usuario = Usuario. Text;
// Instanciar El Controlador
// Controlador c = new Controlador();
// c.InsertarUsuario(u);
// usuario.Text = "";
//contrasena.Text = 
//
//

//Usuario Bajas
// Evento Doble Click
//protected void
// public BibliotecaClases.Usuarios BuscarUsuarioID(int id_usuario)
//{
   // string query = "Select u.id_usuario, u.usuario, u.usuario from " +
    //"Usuarios u Where u.id_Usuario =" + id_Usuario;
    //DEBE AGREGAR EL using System.Data;
    //DataTable dt = conexion.ConsultarRegistros(query);
    //BibliotecaClases.Usuario u = new BibliotecaClases.Usuario();

    //u.Id_usuario = Convert.ToInt32(dt.Rows[0]["id_usuario"]);
    //u.Nombre = dt.Rows[0]["nombre"].ToString();
    //u.Usuario_ = dt.Rows[0]["usuario"].ToString();

    //return u;
//}