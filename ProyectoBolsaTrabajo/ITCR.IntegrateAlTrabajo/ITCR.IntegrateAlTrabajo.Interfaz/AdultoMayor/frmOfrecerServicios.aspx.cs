using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmOfrecerServicios : System.Web.UI.Page
    {
        cIATCategoriaTrabajoNegocios CategoriaTrabajo = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
        cIATDiaServicioNegocios DiaServicio = new cIATDiaServicioNegocios(1, "A", 2, "B");
        cIATServicioNegocios Servicio = new cIATServicioNegocios(1, "A", 2, "B");
        cIATTipoTrabajoNegocios TipoTrabajo = new cIATTipoTrabajoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvOfrecerServicios.ActiveViewIndex = 0;
                cargarTodosDropDownList();
            }
        }

        #region DatosIniciales

        private void cargarDropDownListSexo()
        {
            drpTipoServicio.Items.Clear();
            ListItem ItemTipoServicio1 = new ListItem("Voluntariado");
            ListItem ItemTipoServicio2 = new ListItem("Remunerado");
            drpTipoServicio.Items.Add(ItemTipoServicio1);
            drpTipoServicio.Items.Add(ItemTipoServicio2);
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListSexo();
        }

        #endregion

        protected void dgEstudios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancelar3_Click(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente3_Click(object sender, EventArgs e)
        {
            mvOfrecerServicios.ActiveViewIndex = 1;
        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {

        }
    }
}