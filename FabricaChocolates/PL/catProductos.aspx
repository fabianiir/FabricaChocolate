<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catProductos.aspx.cs" Inherits="FabricaChocolates.PL.catProductos" %>

<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Nombre" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="txtNombre" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Descripcion" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="txtDescripcion" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Precio" Theme="iOS">
                </dx:ASPxLabel>
              </td>
            <td>
                <dx:ASPxTextBox ID="txtPrecio" runat="server" Width="170px" Theme="iOS">
                </dx:ASPxTextBox>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Guardar" Theme="iOS">
                </dx:ASPxButton>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="idProducto" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Visible="False">
                    </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Precio" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" DeleteCommand="DELETE FROM [tbProducto] WHERE [idProducto] = @idProducto" InsertCommand="INSERT INTO [tbProducto] ([Nombre], [Descripcion], [Precio]) VALUES (@Nombre, @Descripcion, @Precio)" SelectCommand="SELECT [Nombre], [Descripcion], [Precio], [idProducto] FROM [tbProducto]" UpdateCommand="UPDATE [tbProducto] SET [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Precio] = @Precio WHERE [idProducto] = @idProducto">
                    <DeleteParameters>
                        <asp:Parameter Name="idProducto" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="Precio" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="Precio" Type="Int32" />
                        <asp:Parameter Name="idProducto" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
