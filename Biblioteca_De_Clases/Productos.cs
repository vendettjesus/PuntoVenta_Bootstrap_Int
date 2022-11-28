using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Productos 
    {
        int id_producto;
        decimal precio;
        int id_sucursal;
        int id_proveedor;
        int id_categoria;
        string nombre_producto;
        string unidad_medida;

        //Producto en la base de datos



        public Productos()
        {
        }



        public Productos(int id_producto, decimal precio, int id_sucursal, int id_proveedor, int id_categoria, string nombre_producto, string unidad_medida)
        {
            Id_producto = id_producto;
            Precio = precio;
            Id_sucursal = id_sucursal;
            Id_proveedor = id_proveedor;
            Id_categoria = id_categoria;
            Nombre_producto = nombre_producto;
            Unidad_medida = unidad_medida;
        }

        public int Id_producto { get => id_producto; set => id_producto = value; }
        public decimal Precio { get => precio; set => precio = value; }
        public int Id_sucursal { get => id_sucursal; set => id_sucursal = value; }
         public int Id_proveedor { get => id_proveedor; set => id_proveedor = value; }
        public int Id_categoria { get => id_categoria; set => id_categoria = value; }
        public string Nombre_producto { get => nombre_producto; set => nombre_producto = value; }
        public string Unidad_medida { get => unidad_medida; set => unidad_medida = value; }
    }
        
}
       
    