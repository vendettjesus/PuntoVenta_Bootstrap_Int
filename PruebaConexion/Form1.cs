using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PruebaConexion
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Biblioteca_De_Clases.Conexion c = new Biblioteca_De_Clases.Conexion();
            if (c.ProbarConexionMySQL() == true)
            {
                MessageBox.Show("Conexion correcta!");
            }
            else
            {
                MessageBox.Show("Conexion fallida");
            }
            //Biblioteca_De_Clases.Conexion c = new Biblioteca_De_Clases.Conexion();
            //string datos = null;
            //try
            //{
            //    string consulta = "SELECT nombre FROM alumno"; //Consulta a MySQL (Muestra las bases de datos que tiene el servidor)
            //    MySqlCommand comando = new MySqlCommand(consulta); //Declaración SQL para ejecutar contra una base de datos MySQL
            //    comando.Connection = c.conexionBD; //Establece la MySqlConnection utilizada por esta instancia de MySqlCommand
            //    c.conexionBD.Open(); //Abre la conexión
            //    c.reader = comando.ExecuteReader(); //Ejecuta la consulta y crea un MySqlDataReader

            //    while (c.reader.Read()) //Avanza MySqlDataReader al siguiente registro
            //    {
            //        datos += c.reader.GetString(0) + "\n"; //Almacena cada registro con un salto de linea
            //    }

            //    MessageBox.Show(datos); //Imprime en cuadro de dialogo el resultado
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show(ex.Message); //Si existe un error aquí muestra el mensaje
            //}
            //finally
            //{
            //    c.conexionBD.Close(); //Cierra la conexión a MySQL
            //}
        }
    }
}
