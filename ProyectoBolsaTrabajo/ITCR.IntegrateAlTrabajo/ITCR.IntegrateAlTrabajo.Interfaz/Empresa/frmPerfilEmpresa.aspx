<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPerfilEmpresa.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Empresa.frmPerfilEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 99%;
            height: 22px;
        }
        .style9
        {
            height: 25px;
        }
        .style12
        {
            width: 15px;
            height: 25px;
        }
        .style13
        {
            width: 100px;
            height: 25px;
        }
        .style14
        {
            width: 250px;
            height: 25px;
        }
        .style15
        {
            width: 20px;
            height: 25px;
        }
        .style16
        {
            width: 100%;
        }
        .style17
        {
            width: 116px;
        }
        .style19
        {
            width: 298px;
        }
        .style20
        {
            width: 31px;
        }
        .style21
        {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style3">
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                <asp:Label ID="lblPerfil" runat="server" Text="Perfil"></asp:Label>
            </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style9" colspan="5">
                <asp:Panel ID="pnlPerfil" runat="server" BorderColor="#666666" 
                    BorderStyle="Solid">
                    <table class="style16">
                        <tr>
                            <td class="style17">
                                <asp:Label ID="lblNombreEmpresa" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Label ID="lblContenidoNombreEmpresa" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="lblCedulaJuridica" runat="server" Text="Cédula Jurídica"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Label ID="lblContenidoCedulaJuridica" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Label ID="lblContenidoDescripcion" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Label ID="lblContenidoTelefono" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:Label ID="lblContenidoEmail" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnEditar" runat="server" Text="Editar Perfil" />
                                &nbsp;
                                <asp:Button ID="btnEliminar" runat="server" onclick="btnEliminar_Click" 
                                    Text="Eliminar Cuenta" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style12">
                </td>
        </tr>
    </table>
</asp:Content>
