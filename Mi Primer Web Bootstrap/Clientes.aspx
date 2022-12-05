<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Clientes.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Clientes" %>

<asp:Content ID="ClientesMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> 
       <asp:GridView ID="gvClientes" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-dark table-responsive table-hover border-secondary" DataKeyNames="id_cliente" CellPadding="1" class="col-md-12" CellSpacing="1" HorizontalAlign="Center" Width="793px">
            <Columns>
                <asp:BoundField DataField="id_cliente" HeaderText="Id_cliente" />
                <asp:BoundField DataField="nombreCliente" HeaderText="Nombre de sucursal" />
                <asp:BoundField DataField="domicilio" HeaderText="Direccion de sucursal" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
