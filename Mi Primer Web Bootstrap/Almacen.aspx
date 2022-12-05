<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Almacen.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Almacen" %>

<asp:Content ID="AlmacenMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> 
        <%--<asp:SqlDataSource ID="sucursal_almacen" runat="server"
            ConnectionString="Database=puntoventa; Data Source=proyectoutags.mysql.database.azure.com; User Id=adminUtags; Password=qwerty.2022."
            ProviderName="Mysql.Data.MySqlClient"
            SelectCommand="SELECT * FROM sucursal_almacen;">

        </asp:SqlDataSource>--%>
        <asp:GridView ID="gvAlmacen" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-dark table-responsive-md table-hover border-secondary" DataKeyNames="id_sucursal" CellPadding="1" class="col-md-12" CellSpacing="1" HorizontalAlign="Center" Width="694px">
            <Columns>
                <asp:BoundField DataField="id_sucursal" HeaderText="Id Sucursal" />
                <asp:BoundField DataField="nombre_sucursal" HeaderText="Nombre de Sucursal" />
                <asp:BoundField DataField="direccion_sucursal" HeaderText="Dirección de Sucursal" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
