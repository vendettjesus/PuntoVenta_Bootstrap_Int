using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Inventario
    {
        int id_producto;
        int id_sucursal;
        int cantidad;
        



        public Inventario()
        {
        }



        public Inventario(int id_producto, int id_sucursal, int cantidad)
        {
            Id_producto = id_producto;
            Id_sucursal = id_sucursal;
            Cantidad = cantidad;
        }



        public int Id_producto { get => id_producto; set => id_producto = value; }
        public int Id_sucursal { get => id_sucursal; set => id_producto = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
    }
}
