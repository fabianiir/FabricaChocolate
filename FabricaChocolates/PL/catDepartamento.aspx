<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catDepartamento.aspx.cs" Inherits="FabricaChocolates.catDepartamento" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            
            <td class="modal-sm" style="width: 195px; font-family: Tahoma, Geneva, sans-serif; font-size: 12px;">
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Departamento" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="txtDepartamento" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
                <br />
               
            </td>
        </tr>

              <tr>
            
            <td class="modal-sm" style="width: 195px">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Gerente" Theme="iOS">
                </dx:ASPxLabel>
                </td>
            <td>
                <dx:ASPxTextBox ID="txtGerente" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
                <br />
            </td>
        </tr>
            <tr>
                <td><dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Fabrica" Theme="iOS">
                    </dx:ASPxLabel></td>
                <td>
                    <asp:DropDownList ID="lstFabrica" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Nombre" Height="18px" Width="166px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" SelectCommand="SELECT [Nombre] FROM [tbFabrica]"></asp:SqlDataSource>
                </td>
                <td>    <dx:ASPxButton ID="btnGuardar" runat="server" Text="Guardar" Theme="iOS" OnClick="btnGuardar_Click">
                </dx:ASPxButton></td>
            </tr>
            
        <tr>
            
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>
                
                <dx:ASPxGridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Visible="False">
                    </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="0">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Gerente" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre1" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" DeleteCommand="DELETE FROM [tbDepartamento] WHERE [idDepartamento] = @idDepartamento" InsertCommand="INSERT INTO [tbDepartamento] ([Nombre], [Gerente], [idFabrica]) VALUES (@Nombre, @Gerente, @idFabrica)" SelectCommand="SELECT tbDepartamento.Nombre, tbDepartamento.Gerente, tbFabrica.Nombre FROM tbDepartamento
 INNER JOIN tbFabrica ON tbDepartamento.idFabrica= tbFabrica.idFabrica" UpdateCommand="UPDATE [tbDepartamento] SET [Nombre] = @Nombre, [Gerente] = @Gerente, [idFabrica] = @idFabrica WHERE [idDepartamento] = @idDepartamento">
                    <DeleteParameters>
                        <asp:Parameter Name="idDepartamento" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Gerente" Type="String" />
                        <asp:Parameter Name="idFabrica" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Gerente" Type="String" />
                        <asp:Parameter Name="idFabrica" Type="Int32" />
                        <asp:Parameter Name="idDepartamento" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
