using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.Empresa
{
    public partial class frmRegistroEmpresa : System.Web.UI.Page
    {
        cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATContactoNegocios Telefono = new cIATContactoNegocios(1, "A", 2, "B");
        cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistroEmpresa.ActiveViewIndex = 0;
            }
        }

        protected void mvRegistroEmpresa_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btnSiguientePaso1_Click(object sender, EventArgs e)
        {
            Empresa.Nom_Empresa = txtNombreEmpresa.Text;
            Empresa.Num_CedulaJuridica = txtCedulaJuridica.Text;
            Empresa.Dsc_Empresa = txtDescripcion.Text;
            CorreoElectronico.Detalle = txtEmail.Text;
            Telefono.Detalle = txtTelefono.Text;
            //Empresa.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);

            mvRegistroEmpresa.ActiveViewIndex = 1;
        }

        protected void btnSiguientePaso2_Click(object sender, EventArgs e)
        {
            mvRegistroEmpresa.ActiveViewIndex = 2;
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {

        }
    }
}