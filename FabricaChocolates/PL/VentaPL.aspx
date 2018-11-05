<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VentaPL.aspx.cs" Inherits="FabricaChocolates.PL.VentaPL" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>   <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>   <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Banco" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" EnableTheming="True" Theme="iOS">
                </dx:ASPxComboBox>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                </asp:EntityDataSource>
            </td>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Pagar" Theme="iOS">
                </dx:ASPxButton>
            </td>
        </tr>

    </table>

</asp:Content>
