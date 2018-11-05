<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catEmpleados.aspx.cs" Inherits="FabricaChocolates.catEmpleados" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <table style="width:100%; height: 265px;">
        <tr>
            <td style="width: 91px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 91px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">
                Nombre</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Height="22px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 91px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">Apellido</td>
            <td>
                
                <asp:TextBox ID="txtApellido" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
                  <tr>
            <td style="width: 91px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">Edad</td>
            <td>
                
                <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            </td>
        </tr>
                  <tr>
            <td style="width: 91px">&nbsp;</td>
            <td class="modal-sm" style="width: 195px">Dirección</td>
            <td>
                
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
                  <tr>
            <td style="width: 91px; height: 45px;"></td>
            <td class="modal-sm" style="width: 195px; height: 45px;">Departamento</td>
            <td style="height: 45px">
                
                <asp:DropDownList ID="lstDepto" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Nombre" OnSelectedIndexChanged="lstDepto_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" SelectCommand="SELECT [Nombre] FROM [tbDepartamento]"></asp:SqlDataSource>
            </td>
        </tr>
              <tr>
            <td style="width: 91px; height: 104px;"></td>
            <td class="modal-sm" style="width: 195px; height: 104px;">&nbsp;</td>
            <td style="height: 104px">
                
                
                <asp:DropDownList ID="lstSexo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Descripcion">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [catSexo]"></asp:SqlDataSource>
                
                
               <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
                
                
                <dx:ASPxGridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Visible="False">
                    </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="1" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="2" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Edad" VisibleIndex="3" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Direccion" VisibleIndex="4" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="5" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre1" VisibleIndex="6" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" SelectCommand="SELECT tbEmpleado.Nombre, Apellido, Edad, Direccion, catSexo.Descripcion, tbDepartamento.Nombre FROM tbEmpleado
 INNER JOIN catSexo ON tbEmpleado.Sexo= catSexo.idSexo INNER JOIN tbDepartamento ON tbEmpleado.idDepartamento=tbDepartamento.idDepartamento
" DeleteCommand="DELETE FROM [tbEmpleado] WHERE [idEmpleado] = @idEmpleado" InsertCommand="INSERT INTO [tbEmpleado] ([Apellido], [Edad], [idDepartamento], [Sexo], [Direccion], [Nombre]) VALUES (@Apellido, @Edad, @idDepartamento, @Sexo, @Direccion, @Nombre)" UpdateCommand="UPDATE [tbEmpleado] SET [Apellido] = @Apellido, [Edad] = @Edad, [idDepartamento] = @idDepartamento, [Sexo] = @Sexo, [Direccion] = @Direccion, [Nombre] = @Nombre WHERE [idEmpleado] = @idEmpleado">
                    <DeleteParameters>
                        <asp:Parameter Name="idEmpleado" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="idDepartamento" Type="Int32" />
                        <asp:Parameter Name="Sexo" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="idDepartamento" Type="Int32" />
                        <asp:Parameter Name="Sexo" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="idEmpleado" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                
                <br />
                
                
            </td>
        </tr>

    </table>
</asp:Content>

