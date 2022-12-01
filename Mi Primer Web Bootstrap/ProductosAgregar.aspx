<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ProductosAgregar.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductosAgregar" %>

<asp:Content ID="ProductosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container">
    <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action active" id="list-home-list" href="ProductosAgregar.aspx" role="tab" aria-controls="home">Agregar</a>
                    <a class="list-group-item list-group-item-action" id="list-profile-list"  href="ProductosEliminar.aspx" role="tab" aria-controls="profile">Eliminar</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" href="ProductosModificar.aspx" role="tab" aria-controls="messages">Modificar</a>
                    <a class="list-group-item list-group-item-action" id="list-settings-list" href="ProductosConsultas.aspx" role="tab">Consultas</a>
                </div>
            </div>
                        
            <br />
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-primary">Agregar Producto</h5>
                        <div class="card-body">
                                <center>
                                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                </center>
                                <center>
                                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </center>       
                                <div class="collapse">
                                    <label for="id_producto" class="form-label">Id producto</label>
                                    <input runat="server" type="text" class="form-control" id="id_producto" placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="nombre_producto" class="form-label">Nombre Producto</label>
                                    <input runat="server" type="text" class="form-control" id="nombre_producto" placeholder="Coca-cola" required="required">
                                    </div>
                                <div class="mb-3">
                                    <label for="precio" class="form-label">Precio</label>
                                    <input runat="server" type="number" class="form-control" id="precio" placeholder="36.56" required>
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
                                        <asp:Button runat="server" ID="BtnAgregarProd" class="btn btn-primary me-sm-6" Text="Guardar" type="button" OnClick="BtnAgregarProd_Click"></asp:Button>
                                        <asp:Button ID="BtnCancelar" runat="server" class="btn btn-danger"  Text="Cancelar" type="button" OnClick="BtnCancelar_Click"></asp:Button>
                                    </div>
                                </div>
                                    
                            <!-- Modal -->
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            
                                        </div>
                                        <div>
                                            
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                                        </div>
                                    </div>
                                    </div>
                                </div>

                            <script type="text/javascript">
                                function openModal() {
                                    $('#myModal').modal('show');
                                };
                                </script>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </asp:Content>
