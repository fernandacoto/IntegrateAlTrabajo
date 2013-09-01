using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmRegistroAdultoMayor : System.Web.UI.Page
    {
        cIATPersonaNegocios Persona = new cIATPersonaNegocios(1, "A", 2, "B");
        cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        cIATEstudioNegocios Estudio = new cIATEstudioNegocios(1, "A", 2, "B");
        cIATExperienciaLaboralNegocios ExperienciaLaboral = new cIATExperienciaLaboralNegocios(1, "A", 2, "B");
        cIATIdiomaNegocios Idioma = new cIATIdiomaNegocios(1, "A", 2, "B");
        cIATContactoNegocios TelefonoHabitacion = new cIATContactoNegocios(1, "A", 2, "B");
        cIATContactoNegocios TelefonoCelular = new cIATContactoNegocios(1, "A", 2, "B");
        cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mvRegistroAdultoMayor.ActiveViewIndex = 0;
                cargarTodosDropDownList();
            }
        }

        #region DatosIniciales

        private void cargarDropDownListSexo()
        {
            drpSexo.Items.Clear();
            ListItem ItemSexo1 = new ListItem("M");
            ListItem ItemSexo2 = new ListItem("F");
            drpSexo.Items.Add(ItemSexo1);
            drpSexo.Items.Add(ItemSexo2);
        }

        private void cargarDropDownListProvincias()
        {
            drpProvincia.Items.Clear();
            cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");
            DataTable TablaProvincia = Provincia.SeleccionarTodos();

            for (int i = 0; i < TablaProvincia.Rows.Count; i++)
            {
                ListItem ItemProvincia = new ListItem(TablaProvincia.Rows[i]["Nom_Provincia"].ToString(), TablaProvincia.Rows[i]["Id_Provincia"].ToString());
                drpProvincia.Items.Add(ItemProvincia);
            }
        }

        private void cargarDropDownListCantones()
        {
            drpCanton.Items.Clear();
            cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");

            Canton.FK_IdProvincia = Int32.Parse(drpProvincia.SelectedValue);
            DataTable TablaCanton = Canton.Buscar();

            for (int i = 0; i < TablaCanton.Rows.Count; i++)
            {
                ListItem ItemCanton = new ListItem(TablaCanton.Rows[i]["Nom_Canton"].ToString(), TablaCanton.Rows[i]["Id_Canton"].ToString());
                drpCanton.Items.Add(ItemCanton);
            }
        }

        private void cargarDropDownListDistritos()
        {
            drpDistrito.Items.Clear();
            cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");

            Distrito.FK_IdCanton = Int32.Parse(drpCanton.SelectedValue);
            DataTable TablaDistrito = Distrito.Buscar();

            for (int i = 0; i < TablaDistrito.Rows.Count; i++)
            {
                ListItem ItemDistrito = new ListItem(TablaDistrito.Rows[i]["Nom_Distrito"].ToString(), TablaDistrito.Rows[i]["Id_Distrito"].ToString());
                drpDistrito.Items.Add(ItemDistrito);
            }
        }

        private void cargarTodosDropDownList()
        {
            cargarDropDownListSexo();
            cargarDropDownListProvincias();
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        #endregion

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            Validate("gvDatosPersonales");

            if (Page.IsValid)
            {
                Persona.Nom_Persona = txtNombrePersona.Text;
                Persona.Apellido1 = txtApellido1.Text;
                Persona.Apellido2 = txtApellido2.Text;
                Persona.Num_Cedula = txtCedula.Text;
                Persona.Fec_Nacimiento = DateTime.Parse(txtFechaNacimiento.Text);
                Persona.Sexo = drpSexo.SelectedValue;
                Persona.FK_IdDistrito = Int16.Parse(drpDistrito.SelectedValue);

                TelefonoHabitacion.Detalle = txtTelefonoHabitacion.Text;
                TelefonoCelular.Detalle = txtCelular.Text;
                CorreoElectronico.Detalle = txtCorreoElectronico.Text;

                mvRegistroAdultoMayor.ActiveViewIndex = 1;
            }
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

        protected void drpProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        protected void drpCanton_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDropDownListDistritos();
        }

        protected void btnCancelar1_Click(object sender, EventArgs e)
        {

        }
    }
}