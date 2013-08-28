using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            cIATNoticiaNegocios Noticia = new cIATNoticiaNegocios(11, "S", 2633, "jon");
            Noticia.Titulo = txtTitulo.Text;
            Noticia.Dsc_Noticia = txtRuta.Text;

            Noticia.Insertar();
        }
    }
}
