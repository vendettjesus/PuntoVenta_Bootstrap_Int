using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_De_Clases
{
   public class Empleados
    {
        int id_empleado;
        string nombreEmpleado;
        string rfc;
        string direccion;
        string telefono;



        public Empleados()
        {
        }



        public Empleados(int id_empleado, string nombreEmpleado, string rfc, string direccion, string telefono)
        {
            Id_empleado = id_empleado;
            NombreEmpleado = nombreEmpleado;
            Rfc = rfc;
            Direccion = direccion;
            Telefono = telefono;
            
        }



        public int Id_empleado { get => id_empleado; set => id_empleado = value; }
        public string NombreEmpleado { get => nombreEmpleado; set => nombreEmpleado = value; }
        public string Rfc { get => rfc; set => rfc = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        
    }
}
