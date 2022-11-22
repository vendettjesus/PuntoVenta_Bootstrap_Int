using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class UsuarioBaja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Controlador c = new Controlador();
        protected void btnBuscaID_Click(object sender, EventArgs e)
        {
            Biblioteca_De_Clases.Usuarios u = c.BuscarUsuarioID(Convert.ToInt32(buscaID.Text));

            id_usuario.Text = u.Id_usuario.ToString();
            usuario.Text = u.Usuario;
            id_tipoUsuario.Text = u.Id_tipoUsuario.ToString();
            id_empleado.Text = u.Id_empleado.ToString();

            buscaID.Text = "";
        }

        protected void btnBuscaNombre_Click(object sender, EventArgs e)
        {
            Biblioteca_De_Clases.Usuarios u = c.BuscarUsuarioNombre(buscaNombre.Text);

            id_usuario.Text = u.Id_usuario.ToString();
            usuario.Text = u.Usuario;
            id_tipoUsuario.Text = u.Id_tipoUsuario.ToString();
            id_empleado.Text = u.Id_empleado.ToString();

            buscaNombre.Text = "";
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            c.EliminarUsuario(Convert.ToInt32(id_usuario.Text));

            id_usuario.Text = "";
            usuario.Text = "";
            id_tipoUsuario.Text = "";
            id_empleado.Text = "";
        }
    }
}