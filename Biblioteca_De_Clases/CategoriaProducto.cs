using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{

    public class CategoriaProducto
    {
        string nombre_categoria;



        public CategoriaProducto()
        {
        }

        public CategoriaProducto(string nombre_categoria)
        {
            Nombre_categoria = nombre_categoria;
        }

        public string Nombre_categoria { get => nombre_categoria; set => nombre_categoria = value; }
    }
}
