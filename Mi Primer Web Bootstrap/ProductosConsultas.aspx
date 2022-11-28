<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ProductosConsultas.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductosConsultas" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                <div class="container">
                    <div class="row">

                        <div class="col-md-2 p-1">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item list-group-item-action" id="list-home-list" href="ProductosAgregar.aspx" role="tab" aria-controls="agrega">Agregar</a>
                                <a class="list-group-item list-group-item-action" id="list-profile-list"  href="ProductosEliminar.aspx" role="tab" aria-controls="elimina">Eliminar</a>
                                <a class="list-group-item list-group-item-action" id="list-messages-list" href="ProductosModificar.aspx" role="tab" aria-controls="modifica">Modificar</a>
                                <a class="list-group-item list-group-item-action active" id="list-settings-list" href="ProductosConsultas.aspx" role="tab" aria-controls="consulta">Consultas</a>
                            </div>
                        </div>
                        
                        <br />
                        <div class="col-md-8 p-1">
                            <div class="card ">
                                <h5 class="card-header text-center">Eliminar Producto</h5>
                                    <div class="card-body">
                                        
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label">Id produco</label>
                                                <input type="text" class="form-control" id="id_producto" placeholder="1023" disabled>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label">Nombre Producto</label>
                                                <input type="text" class="form-control" id="nombreProducto" placeholder="Coca-cola">
                                              </div>
                                           
                                        
                                        

                                        <!-- Boton Guardar Cancelar -->
                                            <div class="mb-3">
                                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                                    <button class="btn btn-success me-sm-6" Text="Guardar" type="button">Guardar Cambios</button>
                                                    <button class="btn btn-danger"  Text="Cancelar" type="button">Cancelar</button>
                                                </div>
                                            </div>
                                            
                                        

                                        <!-- Modal -->
                                        <div class="modal fade" id="guardarRegistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Datos Guardados</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        Se han guardado los datos correctamente.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Continuar...</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>