<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catProveedor.aspx.cs" Inherits="FabricaChocolates.PL.catProveedor" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%">
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Nombre" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>  <dx:ASPxTextBox ID="txtNombre" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox></td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Giro" Theme="iOS">
                </dx:ASPxLabel>

            </td>
            <td>
                <dx:ASPxTextBox ID="txtGiro" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td><dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="RFC" Theme="iOS">
                </dx:ASPxLabel></td>
            <td>  <dx:ASPxTextBox ID="txtRFC" runat="server" Theme="iOS" Width="170px" MaxLength="10">
                </dx:ASPxTextBox></td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Homoclave" Theme="iOS">
                </dx:ASPxLabel>

            </td>
            <td>  <dx:ASPxTextBox ID="txtHomoclave" runat="server" Theme="iOS" Width="170px" MaxLength="3">
                </dx:ASPxTextBox></td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Guardar" Theme="iOS" OnClick="ASPxButton1_Click">
                </dx:ASPxButton>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="idProveedor" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Visible="False">
                    </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Giro" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="RFC" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="HomoClave" VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" DeleteCommand="DELETE FROM [tbProveedor] WHERE [idProveedor] = @idProveedor" InsertCommand="INSERT INTO [tbProveedor] ([Nombre], [Giro], [RFC], [HomoClave]) VALUES (@Nombre, @Giro, @RFC, @HomoClave)" SelectCommand="SELECT [idProveedor], [Nombre], [Giro], [RFC], [HomoClave] FROM [tbProveedor]" UpdateCommand="UPDATE [tbProveedor] SET [Nombre] = @Nombre, [Giro] = @Giro, [RFC] = @RFC, [HomoClave] = @HomoClave WHERE [idProveedor] = @idProveedor">
                    <DeleteParameters>
                        <asp:Parameter Name="idProveedor" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Giro" Type="String" />
                        <asp:Parameter Name="RFC" Type="String" />
                        <asp:Parameter Name="HomoClave" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Giro" Type="String" />
                        <asp:Parameter Name="RFC" Type="String" />
                        <asp:Parameter Name="HomoClave" Type="String" />
                        <asp:Parameter Name="idProveedor" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              </td>
            <td>&nbsp;</td>
        </tr>

    </table>
</asp:Content>
