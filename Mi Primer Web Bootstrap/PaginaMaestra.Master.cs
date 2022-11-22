using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_De_Clases;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class PaginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Permisos permisos = (Permisos)Session["permisos"];
            //if (permisos != null)
            //{
            //    if (permisos.Id_usuario <= 0)
            //    {
            //        Response.Redirect("/Login.aspx");
            //    }
            //}
            //else
            //{
            //    Response.Redirect("/Login.aspx");
            //}
            string activepage = Request.RawUrl;
            if (activepage.Contains("Default.aspx"))
            {
                homeMenu.Attributes.Add("class", "nave-item active");
            }
            else if (activepage.Contains("Productos.aspx"))
            {
                ProductosMenu.Attributes.Add("class", "nave-item active");
            }
            else if (activepage.Contains("Almacen"))
            {
                AlmacenMenu.Attributes.Add("class", "nave-item active");
            }
            else if (activepage.Contains("Clientes"))
            {
                ClientesMenu.Attributes.Add("class", "nave-item active");
            }
            else if (activepage.Contains("Usuario.aspx"))
            {
                UsuariosMenu.Attributes.Add("class", "nave-item active");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["permisos"] = null;
            Response.Redirect("/Login.aspx");
        }
    }
}