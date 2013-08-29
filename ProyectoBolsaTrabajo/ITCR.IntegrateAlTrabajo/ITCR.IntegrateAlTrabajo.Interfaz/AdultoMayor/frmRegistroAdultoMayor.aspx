<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegistroAdultoMayor.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor.frmRegistroAdultoMayor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style8
        {
            width: 98%;
        }
        .style9
        {
            height: 25px;
            width: 15px;
        }
        .style10
        {
            height: 25px;
            width: 15px;
        }
        .style11
        {
            height: 25px;
            }
        .style12
        {
            height: 25px;
            width: 250px;
        }
        .style13
        {
            height: 25px;
            width: 20px;
        }
        .style14
        {
            width: 100%;
        }
        .style17
        {
            width: 25px;
            height: 25px;
        }
        .style20
        {
            width: 118px;
            height: 25px;
        }
        .style22
        {
            height: 25px;
            width: 100px;
        }
        .style24
        {
            height: 25px;
        }
        .style25
        {
            width: 299px;
            height: 25px;
        }
        .style26
        {
            width: 109px;
            height: 25px;
        }
        .style27
        {
            width: 298px;
            height: 25px;
        }
        .style28
        {
            width: 27px;
            height: 25px;
        }
        .style29
        {
            width: 117px;
            height: 25px;
        }
        .style30
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style8">
        <tr>
            <td class="style10">
            </td>
            <td class="style22">
            </td>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
            <td class="style22">
            </td>
            <td class="style12">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:Label ID="lblRegistroAdultoMayor" runat="server" 
                    Text="Registro de Adulto Mayor"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="5">
                <asp:MultiView ID="mvRegistroAdultoMayor" runat="server">
                    <asp:View ID="vPaso1" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso1" runat="server" Text="Paso 1 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblDatosPersonales" runat="server" Text="Datos personales"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblApellido1" runat="server" Text="Primer apellido"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtApellido1" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblApellido2" runat="server" Text="Segundo apellido"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtApellido2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpSexo" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblTelefonoHabitacion" runat="server" 
                                        Text="Teléfono de habitación"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtTelefonoHabitacion" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblTelefonoCelular" runat="server" Text="Teléfono celular"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo electrónico"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpProvincia" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblCanton" runat="server" Text="Cantón"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpCanton" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="drpDistrito" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    <asp:Button ID="btnCancelar1" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSiguiente1" runat="server" onclick="btnSiguiente1_Click" 
                                        Text="Siguiente" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso2" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso2" runat="server" Text="Paso 2 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblDatosAutenticacion" runat="server" 
                                        Text="Datos de autenticación"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblConfirmacionContraseña" runat="server" 
                                        Text="Segundo apellido"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtConfirmacionContraseña" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblIndicioContraseña" runat="server" 
                                        Text="Indicio de contraseña"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="txtIndicioContraseña" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    <asp:Button ID="btnCancelar2" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSiguiente2" runat="server" Text="Siguiente" 
                                        onclick="btnSiguiente2_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso3" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso3" runat="server" Text="Paso 3 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblEstudios" runat="server" Text="Estudios"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelIngresoDatos" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblAñoInicial1" runat="server" Text="Año inicial"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtAñoInicialEstudio" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    <asp:Label ID="lblAñoFinal1" runat="server" Text="Año final"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtAñoFinalEstudio" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblInstitucion" runat="server" Text="Institución"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtInstitucionEstudio" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblTitulo" runat="server" Text="Título"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtTituloEstudio" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:Button ID="btnAgregarEstudio" runat="server" Text="Agregar" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelTablaDatosEstudios" runat="server" BorderStyle="None" 
                                        BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                        <asp:DataGrid ID="dgEstudios" runat="server" AutoGenerateColumns="False" 
                                            BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" 
                                            Font-Names="Verdana" Font-Size="Smaller" ForeColor="Black" Height="19px" 
                                            Width="99%">
                                            <AlternatingItemStyle BackColor="Gainsboro" />
                                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundColumn HeaderText="Año inicial"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Año final"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Institución"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Título"></asp:BoundColumn>
                                            </Columns>
                                        </asp:DataGrid>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAtras1" runat="server" Text="Atrás" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancelar3" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSiguiente3" runat="server" onclick="btnSiguiente3_Click" 
                                        Text="Siguiente" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso4" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso4" runat="server" Text="Paso 4 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblExperienciasLaborales" runat="server" 
                                        Text="Experiencias laborales"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelIngresoDatos0" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblAñoInicial2" runat="server" Text="Año inicial"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtAñoInicialExperienciaLaboral" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                </td>
                                                <td class="style29">
                                                    <asp:Label ID="lblAñoFinal2" runat="server" Text="Año final"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtAñoFinalExperienciaLaboral" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                                                </td>
                                                <td class="style27">
                                                    <asp:TextBox ID="txtInstitucionEstudio0" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    <asp:Label ID="lblPuesto" runat="server" Text="Puesto"></asp:Label>
                                                </td>
                                                <td class="style11">
                                                    <asp:TextBox ID="txtPuesto" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td class="style28">
                                                    &nbsp;</td>
                                                <td class="style29">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    <asp:Button ID="btnAgregarExperienciaLaboral" runat="server" Text="Agregar" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelTablaDatosExperienciasLaborales" runat="server" 
                                        BorderStyle="None" BorderWidth="2px" Height="250px" ScrollBars="Auto">
                                        <asp:DataGrid ID="dgExperienciasLaborales" runat="server" 
                                            AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderStyle="Solid" 
                                            CssClass="GridMantenimiento" Font-Names="Verdana" Font-Size="Smaller" 
                                            ForeColor="Black" Height="19px" Width="99%">
                                            <AlternatingItemStyle BackColor="Gainsboro" />
                                            <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundColumn HeaderText="Año inicial">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Año final"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Empresa"></asp:BoundColumn>
                                                <asp:BoundColumn HeaderText="Puesto"></asp:BoundColumn>
                                            </Columns>
                                        </asp:DataGrid>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAtras2" runat="server" Text="Atrás" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancelar4" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSiguiente4" runat="server" onclick="btnSiguiente4_Click" 
                                        Text="Siguiente" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso5" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso5" runat="server" Text="Paso 5 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblIdiomasPasatiempos" runat="server" 
                                        Text="Idiomas y pasatiempos"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelIdiomas" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblIdiomas" runat="server" Text="Idiomas"></asp:Label>
                                                </td>
                                                <td class="style30">
                                                    <asp:CheckBox ID="chkIngles" runat="server" Text="Inglés" />
                                                </td>
                                                <td class="style30">
                                                    <asp:CheckBox ID="chkPortugues" runat="server" Text="Portugués" />
                                                </td>
                                                <td class="style30">
                                                    <asp:CheckBox ID="chkOtro" runat="server" Text="Otro" />
                                                </td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style26">
                                                    &nbsp;</td>
                                                <td class="style30">
                                                    <asp:CheckBox ID="chkFrances" runat="server" Text="Francés" />
                                                </td>
                                                <td class="style30">
                                                    <asp:CheckBox ID="chkMandarin" runat="server" Text="Mandarín" />
                                                </td>
                                                <td class="style30">
                                                    &nbsp;</td>
                                                <td class="style11">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelIdiomas0" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px">
                                        <table class="style14">
                                            <tr>
                                                <td class="style26">
                                                    <asp:Label ID="lblPasatiempos" runat="server" Text="Pasatiempos"></asp:Label>
                                                </td>
                                                <td class="style30">
                                                    <asp:TextBox ID="txtPasatiempos" runat="server" Height="80px" 
                                                        TextMode="MultiLine" Width="740px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAtras3" runat="server" Text="Atrás" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancelar5" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSiguiente5" runat="server" onclick="btnSiguiente5_Click" 
                                        Text="Siguiente" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="vPaso6" runat="server">
                        <table class="style14">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="lblPaso6" runat="server" Text="Paso 6 de 6"></asp:Label>
                                </td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                </td>
                                <td class="style20">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2">
                                    <asp:Label ID="lblTerminosCondicionesUso" runat="server" 
                                        Text="Términos y condiciones de uso"></asp:Label>
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="5">
                                    <asp:Panel ID="PanelTerminosCondiciones" runat="server" BorderStyle="Solid" 
                                        BorderWidth="2px" Height="200px">
                                        <table class="style14">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblTextoTerminosCondiciones" runat="server" 
                                                        Text="Texto de términos y condiciones"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="chkAceptarTerminos" runat="server" 
                                                        Text="Acepto los términos y condiciones anteriores" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    &nbsp;</td>
                                <td class="style25">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td class="style11">
                                    <asp:Button ID="btnCancelar6" runat="server" Text="Cancelar" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnFinalizar" runat="server" onclick="btnSiguiente2_Click" 
                                        Text="Finalizar" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
