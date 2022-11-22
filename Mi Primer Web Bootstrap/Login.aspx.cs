using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginAlerta.Visible = false;
        }

        //Accion del boton
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Instanacia De La Clase Controlador
            Controlador controlador = new Controlador();
            Permisos permisos = new Permisos();
            // Asignacion DeAtributos De Clase
            permisos.Usuario = TextNombre.Text;
            permisos.Contrasena = TextPassword.Text;
            permisos.Id_usuario = controlador.Login(permisos);

            int Id_usuario = controlador.Login(permisos);

            //Comprobar los datos que ingreso en el formulario, validar Nombre y 
            if (Id_usuario > 0)
            {
                permisos.Id_usuario = Id_usuario;
                // Necesitamos Llevar Los Datos Que Se Encuentran En Permisos
                //Para La Cual Haremos El Llamado De La Variable
                Session["permisos"] = permisos;
                TextNombre.Text = "";
                TextPassword.Text = "";
                loginAlerta.Visible = false;
                Response.Redirect("/Default.aspx");
            }
            else
            {
                loginAlerta.Visible = true;
            }
        }
    }
}