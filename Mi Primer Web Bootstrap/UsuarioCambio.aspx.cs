using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class UsuarioCambio : System.Web.UI.Page
    {
        Controlador controlador = new Controlador();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            ///CODIGO PARA HACER EL UPDATE
           
            
        }
        /*Boton guardar formulario*/
        protected void GuardarCambios_Click(object sender, EventArgs e)
        {
            
            Biblioteca_De_Clases.Usuarios u = new Biblioteca_De_Clases.Usuarios();
            try
            {
                u.Id_usuario = Convert.ToInt32(id_Usuario.Text);
                u.Usuario = Convert.ToString(usuario.Text);
                u.Id_empleado = Convert.ToInt32(id_empleado.Text);
                u.Id_tipoUsuario = Convert.ToInt32(id_tipoUsuario.Text);
                u.Contrasena = Convert.ToString(contrasena.Text);
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                lblSuccessMessage.Text = "La actualización se guardó con éxito";
                controlador.ActualizarUsuario(u);
                
                
            }
            catch
            {
                
            }
        }
        /*Boton de buscar ID */
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(buscaID.Text);
                Biblioteca_De_Clases.Usuarios u = new Biblioteca_De_Clases.Usuarios();
                u = controlador.BuscarUsuarioID(id);
                id_Usuario.Text = u.Id_usuario.ToString();
                usuario.Text = u.Usuario.ToString();

                id_empleado.Text = u.Id_empleado.ToString();
                id_tipoUsuario.Text = u.Id_tipoUsuario.ToString();
                //contrasena.Text = u.Contrasena.ToString();
                lblErrorMessage.Text = "";
            }
            catch
            {
                lblErrorMessage.Text = "No existe el usuario con el id " + buscaID.Text;
                
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    int id = Convert.ToInt32(buscaNombre.Text);
            //    Biblioteca_De_Clases.Usuarios u = new Biblioteca_De_Clases.Usuarios();
            //    u = controlador.BuscarUsuarioNombre(id);
            //    usuario.Text = u.Usuario.ToString();

            //    id_empleado.Text = u.Id_empleado.ToString();
            //    id_tipoUsuario.Text = u.Id_tipoUsuario.ToString();
            //    //contrasena.Text = u.Contrasena.ToString();
            //    lblErrorMessage.Text = "";
            //}
            //catch 
            //{
            //    lblErrorMessage.Text = "No existe el usuario con el nombre " + buscaNombre.Text;

            //}
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Clear();
        }

        void Clear()
        {
            usuario.Text = id_empleado.Text = id_tipoUsuario.Text = id_Usuario.Text = contrasena.Text = lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }
    }
}