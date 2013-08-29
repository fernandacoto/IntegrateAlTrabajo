using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmRegistroAdultoMayor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistroAdultoMayor.ActiveViewIndex = 0;
            }
        }

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 1;
        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 2;
        }

        protected void btnSiguiente3_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 3;
        }

        protected void btnSiguiente4_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 4;
        }

        protected void btnSiguiente5_Click(object sender, EventArgs e)
        {
            mvRegistroAdultoMayor.ActiveViewIndex = 5;
        }
    }
}