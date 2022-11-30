using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Usuarios
    {
        int id_usuario;
        string usuario;
        int id_tipoUsuario;
        int id_empleado;
        string contrasena;



        public Usuarios()
        {
        }



        public Usuarios(int id_usuario, string usuario, int id_tipoUsuario, int id_empleado)
        {
            Id_usuario = id_usuario;
            Usuario = usuario;
            Id_tipoUsuario = id_tipoUsuario;
            Id_empleado = id_empleado;
            Contrasena = contrasena;
        }



        public int Id_usuario { get => id_usuario; set => id_usuario = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public int Id_tipoUsuario { get => id_tipoUsuario; set => id_tipoUsuario = value; }
        public int Id_empleado { get => id_empleado; set => id_empleado = value; }
        public string Contrasena { get => contrasena; set => contrasena = value; }
    }
}
