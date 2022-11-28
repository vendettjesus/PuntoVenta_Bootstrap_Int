using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Sucursal
    {
        int id_sucursal;
        string nombre_sucursal;
        string direccion_sucursal;
        



        public Sucursal()
        {
        }



        public Sucursal(int id_sucursal, string nombre_sucursal, string direccion_sucursal)
        {
            Id_sucursal = id_sucursal;
            Nombre_sucursal = nombre_sucursal;
            Direccion_sucursal = direccion_sucursal;
        }



        public int Id_sucursal { get => id_sucursal; set => id_sucursal = value; }
        public string Nombre_sucursal { get => nombre_sucursal; set => nombre_sucursal = value; }
        public string Direccion_sucursal { get => direccion_sucursal; set => direccion_sucursal = value; }
    }
}
