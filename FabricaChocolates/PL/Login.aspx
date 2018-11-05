<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FabricaChocolates.Login" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <table style="width: 100%; height: 227px;">
        <tr>
            <td class="modal-sm" style="width: 368px">&nbsp;</td>
            <td style="width: 226px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 368px">&nbsp;</td>
            <td style="width: 226px">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Iniciar Sesion" AssociatedControlID="ASPxLabel1" class="d-flex justify-content-center" Theme="iOS"></dx:ASPxLabel>
                <dx:ASPxTextBox ID="txtbUsuario" runat="server" Width="170px" Theme="iOS" NullText="Usuario">
                </dx:ASPxTextBox>
                <br />
                <dx:ASPxTextBox ID="txtbPassword" runat="server" NullText="Contraseña" Password="True" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 368px">
                
            </td>
            <td style="width: 226px">
                <dx:ASPxButton ID="btnSesion" runat="server" OnClick="btnSesion_Click" Text="Entrar" Theme="iOS">
                </dx:ASPxButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
