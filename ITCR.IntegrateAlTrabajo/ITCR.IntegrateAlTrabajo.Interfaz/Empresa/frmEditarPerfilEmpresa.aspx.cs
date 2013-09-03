﻿using System;
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
    public partial class frmEditarPerfilEmpresa : System.Web.UI.Page
    {
        private static cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        private static cIATUsuarioNegocios Usuario = new cIATUsuarioNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios Telefono = new cIATContactoNegocios(1, "A", 2, "B");
        private static cIATContactoNegocios CorreoElectronico = new cIATContactoNegocios(1, "A", 2, "B");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Nombre_Usuario"] = "insempresa";
                mvEditarPerfil.ActiveViewIndex = 0;
                cargarTodosDropDownList();
                cargar_datos_usuario();
            }
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
            cargarDropDownListProvincias();
            cargarDropDownListCantones();
            cargarDropDownListDistritos();
        }

        public void cargar_datos_usuario()
        {
            Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
            DataTable tablaUsuario = Usuario.Buscar();
            Int16 IdUsuario = 0;

            if (tablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(tablaUsuario.Rows[0]["Id_Usuario"].ToString());
            }
            Empresa.FK_IdUsuario = IdUsuario;
            DataTable tablaEmpresa = Empresa.Buscar();
            if (tablaEmpresa.Rows.Count > 0)
            {
                txtNombreE.Text = tablaEmpresa.Rows[0]["Nom_Empresa"].ToString();
                txtCedulaE.Text = tablaEmpresa.Rows[0]["Num_CedulaJuridica"].ToString();
                txtDscE.Text = tablaEmpresa.Rows[0]["Dsc_Empresa"].ToString();
            }
            Telefono.FK_IdUsuario = IdUsuario;
            Telefono.FK_IdTipoContacto = 1;
            DataTable tablaTelefono = Telefono.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                txtTelefono.Text = tablaTelefono.Rows[0]["Detalle"].ToString();
            }
            CorreoElectronico.FK_IdUsuario = IdUsuario;
            CorreoElectronico.FK_IdTipoContacto = 3;
            DataTable tablaEmail = CorreoElectronico.Buscar();
            if (tablaTelefono.Rows.Count > 0)
            {
                txtEmail.Text = tablaEmail.Rows[0]["Detalle"].ToString();
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Validate("gvDatosGenerales");
            if (Page.IsValid)
            {
                Usuario.Nom_Usuario = Convert.ToString(Session["Nombre_Usuario"]);
                DataTable tablaUsuario = Usuario.Buscar();

                if (tablaUsuario.Rows.Count > 0)
                {
                    txtNombreUsuario.Text = tablaUsuario.Rows[0]["Nom_Usuario"].ToString();
                    //txtAntiguaContraseña.Text
                }
                mvEditarPerfil.ActiveViewIndex = 1;
            }
        }

        protected void btnFinalizarE_Click(object sender, EventArgs e)
        {
            Validate("gvDatosCuenta");
            if (Page.IsValid)
            {
                mvEditarPerfil.ActiveViewIndex = 0;
            }
        }
    }
}