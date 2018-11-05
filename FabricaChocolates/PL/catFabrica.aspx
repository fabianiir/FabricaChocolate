<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catFabrica.aspx.cs" Inherits="FabricaChocolates.Fabrica" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <table class="nav-justified">
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">
                <dx:ASPxLabel ID="lblNombre" runat="server" Text="Nombre" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td class="modal-sm" style="width: 195px; font-family: Tahoma, Geneva, sans-serif; font-size: 12px;">
                <dx:ASPxTextBox ID="txtbNombre" runat="server" Width="170px">
                </dx:ASPxTextBox>
            </td>
            <td>
                <br />
               
            </td>
        </tr>

              <tr>
            <td style="width: 96px">
                <dx:ASPxLabel ID="lblDireccion" runat="server" Text="Direccion" Theme="iOS">
                </dx:ASPxLabel>
                  </td>
            <td class="modal-sm" style="width: 195px">
                <dx:ASPxTextBox ID="txtDireccion" runat="server" Width="170px">
                </dx:ASPxTextBox>
                  </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">
                <dx:ASPxButton ID="btnGuardar" runat="server" Text="Guardar" Theme="iOS" OnClick="ASPxButton1_Click">
                </dx:ASPxButton>
            </td>
            <td>&nbsp;</td>
           
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td>
              <dx:ASPxGridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="idFabrica" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                  <SettingsPager Visible="False">
                  </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                  <Columns>
                      <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                      </dx:GridViewCommandColumn>
                      <dx:GridViewDataTextColumn FieldName="idFabrica" ReadOnly="True" VisibleIndex="1">
                          <EditFormSettings Visible="False" />
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                      </dx:GridViewDataTextColumn>
                      <dx:GridViewDataTextColumn FieldName="Direccion" VisibleIndex="3">
                      </dx:GridViewDataTextColumn>
                  </Columns>
              </dx:ASPxGridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" DeleteCommand="DELETE FROM [tbFabrica] WHERE [idFabrica] = @idFabrica" InsertCommand="INSERT INTO [tbFabrica] ([Nombre], [Direccion]) VALUES (@Nombre, @Direccion)" SelectCommand="SELECT [idFabrica], [Nombre], [Direccion] FROM [tbFabrica]" UpdateCommand="UPDATE [tbFabrica] SET [Nombre] = @Nombre, [Direccion] = @Direccion WHERE [idFabrica] = @idFabrica">
                  <DeleteParameters>
                      <asp:Parameter Name="idFabrica" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Nombre" Type="String" />
                      <asp:Parameter Name="Direccion" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Nombre" Type="String" />
                      <asp:Parameter Name="Direccion" Type="String" />
                      <asp:Parameter Name="idFabrica" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
          </td>
          <td>&nbsp;</td>
          </tr>
    </table>
</asp:Content>
