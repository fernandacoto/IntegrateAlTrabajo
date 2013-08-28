<%@ Page Title="About Us" Language="C#" MasterPageFile="~/AdultoMayor.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
    </h2>
    <p>
        &nbsp;<asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
            Text="Guardar" />
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Titulo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Ruta" runat="server" Text="Ruta"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRuta" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
