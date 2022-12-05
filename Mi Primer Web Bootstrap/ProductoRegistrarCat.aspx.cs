using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Primer_Web_Bootstrap
{
    public partial class ProductoRegistrarCat : System.Web.UI.Page
    {
        Controlador controlador = new Controlador();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardarCateg_Click(object sender, EventArgs e)
        {
            Biblioteca_De_Clases.CategoriaProducto r = new Biblioteca_De_Clases.CategoriaProducto();

            r.Nombre_categoria = Convert.ToString(nombre_categoria.Text);
            controlador.RegistrarCate(r);

            lblprocedimiento.Text = "La categoría se guardo con éxito";
        }
    }
}