using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Clientes
    {
        int id_cliente;
        string nombreCliente;
        string domicilio;
        



        public Clientes()
        {
        }



        public Clientes(int id_cliente, string nombreCliente, string domicilio)
        {
            Id_Cliente = id_cliente;
            NombreCliente = nombreCliente;
            Domicilio = domicilio;
        }



        public int Id_Cliente { get => id_cliente; set => id_cliente = value; }
        public string NombreCliente { get => nombreCliente; set => nombreCliente = value; }
        public string Domicilio { get => domicilio; set => domicilio = value; }
    }
}
