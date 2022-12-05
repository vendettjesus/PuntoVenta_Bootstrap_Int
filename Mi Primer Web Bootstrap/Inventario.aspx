<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Inventario.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Inventario" %>

<asp:Content ID="InventarioMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:SqlDataSource ID="producto" runat="server"
        ConnectionString="Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022."
        ProviderName="MySql.Data.MySqlClient"
        SelectCommand="SELECT * FROM producto;" OnSelecting="producto_Selecting">
    </asp:SqlDataSource>--%>
    <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-dark table-responsive-md table-hover border-secondary" DataKeyNames="id_producto" CellPadding="1" class="col-md-12" CellSpacing="1" HorizontalAlign="Justify" Width="100%">
        <Columns>
            <asp:BoundField DataField="id_producto" HeaderText="ID Producto" />
            <asp:BoundField DataField="precio" HeaderText="Precio" />
            <asp:BoundField DataField="id_sucursal" HeaderText="Id Sucursal" />
            <asp:BoundField DataField="id_proveedor" HeaderText="Id Proveedor" />
            <asp:BoundField DataField="id_categoria" HeaderText="Id Categoría" />
            <asp:BoundField DataField="nombre_producto" HeaderText="Nombre Producto" />
            <asp:BoundField DataField="unidad_medida" HeaderText="Unidad de Medida" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton href="ProductosConsultas.aspx" runat="server" ID="Select" class="btn btn-primary me-sm-6 m-1" Text="Seleccion" type="button"></asp:LinkButton>
                    <asp:LinkButton href="ProductosModificar.aspx" runat="server" ID="Edit" class="btn btn-warning me-sm-6 m-1" Text="Editar" type="button"></asp:LinkButton>
                    <asp:LinkButton href="ProductosEliminar.aspx" runat="server" ID="Delete" class="btn btn-danger me-sm-6 m-1" Text="Borrar" type="button"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
