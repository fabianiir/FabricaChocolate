<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catUsuario.aspx.cs" Inherits="FabricaChocolates.AltaUsuarios" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Inicio</a></li>
                        <li><a runat="server" href="~/About">Acerca de</a></li>
                        <li><a runat="server" href="~/Contact">Contacto</a></li>
                    </ul>
    <table style="width: 100%;">
       
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 154px"> <dx:ASPxLabel ID="lblUsuario" runat="server" Text="Usuario" Theme="iOS">
                </dx:ASPxLabel></td>
            <td style="width: 228px">
               
                <dx:ASPxTextBox ID="txtUsuario" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 154px">
                <dx:ASPxLabel ID="lblContraseña" runat="server" Text="Contraseña" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td style="width: 228px">
                <dx:ASPxTextBox ID="txtContraseña" runat="server" Theme="iOS" Width="170px" Password="True">
                </dx:ASPxTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 154px">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Repetir contraseña" Theme="iOS">
                </dx:ASPxLabel>
             </td>
            <td style="width: 228px">
                <dx:ASPxTextBox ID="txtRepetir" runat="server" Width="170px" Theme="iOS" Password="True"></dx:ASPxTextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Registrar" Theme="iOS" OnClick="ASPxButton1_Click">
                </dx:ASPxButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
