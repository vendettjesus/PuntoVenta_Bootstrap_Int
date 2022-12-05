<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ProductoRegistrarCat.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductoRegistrarCat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item  list-group-item-action text-bg-dark" id="list-add-list" href="ProductosAgregar.aspx" role="tab">Agregar</a>
                    <a class="list-group-item  list-group-item-action text-bg-dark" id="list-delete-list" href="ProductosEliminar.aspx" role="tab">Eliminar</a>
                    <a class="list-group-item  list-group-item-action text-bg-dark" id="list-modify-list" href="ProductosModificar.aspx" role="tab">Modificar</a>
                    <a class="list-group-item  list-group-item-action text-bg-dark" id="list-query-list" href="ProductosConsultas.aspx" role="tab">Consultas</a>
                    <a class="list-group-item  list-group-item-action active" id="list-category-list" href="ProductoRegistrarCat.aspx" role="tab">Registrar Categoría</a>
                </div>
            </div>
                <div class="col-md-8 p-1">
                    <div class="card">
                        <h5 class="card-header text-center alert alert-dark">Registrar nueva categoría de producto</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10 p-2">
                                    <asp:Label runat="server" for="name">Nombre Categoría</asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8 pb-2">
                                    <asp:TextBox runat="server" type="text" class="form-control float-start" ID="nombre_categoria" required="required"></asp:TextBox>
                                </div> 
                                <div class="col-md-4 pb-2">
                                    <asp:Button runat="server" ID="Button1" Text="Guardar" class="btn btn-primary float-start" OnClick="BtnGuardarCateg_Click" />
                                </div>
                                <center>
                                    <asp:Label runat="server" ID="lblprocedimiento" ForeColor="Green" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
