using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
  public class Permisos
    {
        private int id_usuario;
        private string usuario;
        private string contrasena;



        public Permisos()
        {
        }



        public Permisos(int id_usuario, string usuario, string contrasena)
        {
            Id_usuario = id_usuario;
            Usuario = usuario;
            Contrasena = contrasena;
        }



        public int Id_usuario { get => id_usuario; set => id_usuario = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public string Contrasena { get => contrasena; set => contrasena = value; }
    }
}
