<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catSexo.aspx.cs" Inherits="FabricaChocolates.catSexo" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 195px">
                <dx:ASPxLabel ID="lblSexo" runat="server" Text="Sexo" Theme="iOS">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="txtSexo" runat="server" Theme="iOS" Width="170px">
                </dx:ASPxTextBox>
                <dx:ASPxButton ID="btnGuardar" runat="server" Text="Guardar" Theme="iOS">
                </dx:ASPxButton>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 195px">&nbsp;</td>
            <td>
                
                <dx:ASPxGridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="idSexo" Theme="iOS">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Visible="False">
                    </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="idSexo" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Descripcion" ShowInCustomizationForm="True" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FabricaDBConnectionString %>" DeleteCommand="DELETE FROM [catSexo] WHERE [idSexo] = @idSexo" InsertCommand="INSERT INTO [catSexo] ([Descripcion]) VALUES (@Descripcion)" SelectCommand="SELECT [idSexo], [Descripcion] FROM [catSexo]" UpdateCommand="UPDATE [catSexo] SET [Descripcion] = @Descripcion WHERE [idSexo] = @idSexo">
                    <DeleteParameters>
                        <asp:Parameter Name="idSexo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Descripcion" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="idSexo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
