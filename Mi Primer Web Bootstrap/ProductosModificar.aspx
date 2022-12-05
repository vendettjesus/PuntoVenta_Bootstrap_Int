<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="ProductosModificar.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductosModificar" %>

<asp:Content ID="ProductosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 p-1">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-add-list" href="ProductosAgregar.aspx" role="tab">Agregar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-delete-list" href="ProductosEliminar.aspx" role="tab">Eliminar</a>
                                <a class="list-group-item  list-group-item-action active" id="list-modify-list" href="ProductosModificar.aspx" role="tab">Modificar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-query-list" href="ProductosConsultas.aspx" role="tab">Consultas</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-category-list" href="ProductoRegistrarCat.aspx" role="tab">Registrar Categoría</a>
                            </div>
                        </div>
                        
                        <br />
                        <div class="col-md-8 p-1">
                            <div class="card ">
                                <h5 class="card-header text-center alert alert-dark">Modificar Producto</h5>
                                    <div class="card-body">
                                 <center>
                                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                </center>
                                <center>
                                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </center>       
                                <div class="mb3">
                                    <label for="id_producto" class="form-label">Id producto</label>
                                    <input runat="server" type="text" class="form-control" id="id_producto" required="required">
                                </div>
                                <div class="mb-3">
                                    <label for="nombre_producto" class="form-label">Nombre Producto</label>
                                    <input runat="server" type="text" class="form-control" id="nombre_producto" placeholder="Coca-cola" required="required">
                                    </div>
                                <div class="mb-3">
                                    <label for="precio" class="form-label">Precio</label>
                                    <input type="number" runat="server" class="form-control" id="precio" placeholder="Inserte cantidad" required="required"/>
                                </div>
                                <div class="mb-3">
                                    <label for="unidad_medida" class="form-label">Unidad</label>
                                    <select runat="server" class="form-select" id="unidad_medida" aria-label="Default select example">
                                        <option selected>Seleccione una unidad</option>
                                        <option value="Kg">Kg</option>
                                        <option value="Lt">Lt</option>
                                        <option value="Pza">Pza</option>
                                        <option value="Pqte">Pqte</option>
                                        </select>
                                </div>
                                <div class="mb-3">
                                    <label for="id_proveedor" class="form-label">Id proveedor</label>
                                    <input runat="server" type="text" class="form-control" id="id_proveedor" placeholder="Elige el Proveedor" required/>
                                </div>
                                <div class="mb-3">
                                    <label for="id_categoria" class="form-label">Id Categoría de Producto</label>
                                    <input runat="server" type="text" class="form-control" id="id_categoria" placeholder="Elige la Categoría" required="required"/>
                                </div>
                                <div class="mb-3">
                                    <label for="id_sucursal" class="form-label">Id Sucursal</label>
                                    <input runat="server" type="text" class="form-control" id="id_sucursal" placeholder="Elige la Sucursal" required="required"/>
                                </div>
                                <div class="collapse">
                                    <label for="accion">Nuevo</label>
                                    <input runat="server" type="text" class="form-control" id="accion" value="nuevo" />
                                </div>
                                        
                                        

                                        <!-- Boton Guardar Cancelar -->
                                            <div class="mb-3">
                                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                                    <asp:Button ID="btnModificarProducto" runat="server" class="btn btn-primary me-sm-6" Text="Guardar" type="button" OnClick="BtnModificarProducto_Click"></asp:Button>
                                                    <button class="btn btn-danger"  Text="Cancelar" type="button">Cancelar</button>
                                                </div>
                                            </div>
                                        <!-- Modal -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
