using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace Biblioteca_De_Clases
{
   public class Conexion
    {
        //MYSQL
        static string servidor = "proyectoutags.mysql.database.azure.com"; //Nombre o ip del servidor de MySQL
        static string bd = "puntoventa"; //Nombre de la base de datos
        static string usuario = "adminUtags"; //Usuario de acceso a MySQL
        static string password = "qwerty.2022."; //Contraseña de usuario de acceso a MySQL
        static string datos = null; //Variable para almacenar el resultado

        //CADENA DE CONEXION    
        static string cadenaConexionMySQL = "Database=" + bd + "; Data Source=" + servidor + "; User Id=" + usuario + "; Password=" + password + "";

        //Instancia para conexión a MySQL, recibe la cadena de conexión
        public MySqlConnection conexionBD = new MySqlConnection(cadenaConexionMySQL);
        public MySqlDataReader reader = null; //Variable para leer el resultado de la consulta

        MySqlConnection miConn;


        //Abriri LA Conexion
        private void AbrirConexionMySQL()
        {
            miConn = new MySqlConnection(cadenaConexionMySQL);
            miConn.Open();
        }

        //Cerrar conexion
        private void CerrarConexionMySQL()
        {
            miConn.Close();
        }

        //Prueba Conexion
        public bool ProbarConexionMySQL()
        {
            try
            {
                AbrirConexionMySQL();
                CerrarConexionMySQL();
                return true;
            }
            catch
            {
                return false;
            }
        }


        //Muestra Los Resultados De La Consulta
        public DataTable ConsultarRegistrosMySQL(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                AbrirConexionMySQL();
                MySqlCommand comando = new MySqlCommand(query, miConn);
                MySqlDataAdapter datos = new MySqlDataAdapter(comando);
                datos.Fill(dt);
                CerrarConexionMySQL();
                return dt;
            }
            catch
            {
                return dt;
            }
        }


        // Ejecuta Consultas Del Tipo 1. Insert Into o "Insercion De Datos" 2. Update o "actualizacion De Datos" 3. Delete o "Eliminacion De Datos"
        public int EjecutarQueryMySQL(string query)
        {
            try
            {
                AbrirConexionMySQL();
                MySqlCommand comando = new MySqlCommand(query, miConn);
                //asegurarse de cerrar conexion
                //return comando.ExecuteNonQuery();
                int resultado = comando.ExecuteNonQuery();
                CerrarConexionMySQL();
                return resultado;
            }
            catch
            {
                return 0;
            }
        }


        public string ObtenerUnSoloValor(string query)
        {
            try
            {
                AbrirConexionMySQL();
                MySqlCommand comando = new MySqlCommand(query, miConn);
                string resultado = "";
                resultado = Convert.ToString(comando.ExecuteScalar());
                CerrarConexionMySQL();
                return resultado;
            }
            catch
            {
                return "";
            }
        }

        
        //public string AltaUsuario(Biblioteca_De_Clases.Usuarios usuarios)
        //{
        //    string msg = "";
        //    if (usuario != null)
        //    {
        //        AbrirConexionMySQL();
        //        MySqlCommand cmd = new MySqlCommand("sp_usuario", miConn);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("id_usuario", MySqlDbType.Int32).Value = 0;
        //        cmd.Parameters.AddWithValue("_usuario", usuarios.Usuario);
        //        cmd.Parameters.AddWithValue("_id_tipoUsuario", usuarios.Id_tipoUsuario);
        //        cmd.Parameters.AddWithValue("_id_empleado", usuarios.Id_empleado);
        //        cmd.Parameters.AddWithValue("_contrasena", usuarios.Contrasena);
        //        cmd.Parameters.Add("accion", MySqlDbType.VarChar).Value = "nuevo";


        //        miConn.Open();
        //        int i = cmd.ExecuteNonQuery();
        //        miConn.Close();

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

        ////Cadena De Conexion
        //private string cadenaConexion = "Data Source= sqlserver2020.cdpi2ajkypfw.us-east-2.rds.amazonaws.com; " +
        //    "initial catalog=ControlEscolar; user id= sqlserver; password= tics.2020;";
        ////Controlador para realizar conexion entre SQL y C# ---al SQL Server con la cadena de conexion;
        //SqlConnection miConexion;
    }
}
