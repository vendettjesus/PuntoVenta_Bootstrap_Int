<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ProductosConsultas.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductosConsultas" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                <div class="container">
                    <div class="row">

                        <div class="col-md-2 p-1">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-add-list" href="ProductosAgregar.aspx" role="tab">Agregar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-delete-list" href="ProductosEliminar.aspx" role="tab">Eliminar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-modify-list" href="ProductosModificar.aspx" role="tab">Modificar</a>
                                <a class="list-group-item  list-group-item-action active" id="list-query-list" href="ProductosConsultas.aspx" role="tab">Consultas</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-category-list" href="ProductoRegistrarCat.aspx" role="tab">Registrar Categoría</a>
                            </div>
                        </div>
                        
                        <br />
                        <div class="col-md-8 p-1">
                            <div class="card ">
                                <h5 class="card-header text-center alert alert-dark">Consulta Producto
                                </h5>
                                    <div class="card-body">
                                        
                                <div class="row">
                                    <div class="col-md-10">
                                        <!--ETIQUETA BUsQUEDA POR ID-->
                                        <label for="BtnBusquedaProdId">Id producto</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXT BOX BUsQUEDA POR ID-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="id_producto"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2 pb-3">
                                        <!--BOTON BUsQUEDA POR ID-->
                                        <asp:Button runat="server" Text="Buscar por ID" ID="BtnBusquedaProdId" OnClick="BtnBusquedaProdId_Click" class="btn btn-primary"/>
                                    </div>
                                </div>
                            
                            
                                <div class="row">
                                    
                                    <div class="col-md-10 pb-2">
                                        <!--ETIQUETA BUsQUEDA POR NOMBRE-->
                                        <label for="BtnBusquedaProdNomb">Nombre Producto</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXTBOX BUsQUEDA POR NOMBRE-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right"  ID="nombre_producto" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                        <asp:Button runat="server" Text="Buscar por Nombre" ID="BtnBusquedaProdNomb" OnClick="BtnBusquedaProdNomb_Click" class="btn btn-primary float-left" />
                                    </div>
                                </div>
                                        
                                        <center>
                                        <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                        </center>
                                        <center>
                                        <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                        </center>  
                                        <hr />
                                             <!--LINEA DIVISORA-->
                                        <div class="mb-3">
                                            <asp:GridView ID="TablaProductos" runat="server" AutoGenerateColumns="false" Font-Size="Small">
                                                <Columns>
                                                    <asp:BoundField DataField="id_producto" HeaderText="ID Producto" />
                                                    <asp:BoundField DataField="precio" HeaderText="Precio" />
                                                    <asp:BoundField DataField="id_sucursal" HeaderText="ID Sucursal" />
                                                    <asp:BoundField DataField="id_proveedor" HeaderText="ID Proveedor" />
                                                    <asp:BoundField DataField="id_categoria" HeaderText="ID Categoría" />
                                                    <asp:BoundField DataField="nombre_producto" HeaderText="Nombre Producto" />
                                                    <asp:BoundField DataField="unidad_medida" HeaderText="Unidad de Medida" />
                                                </Columns>
                                            </asp:GridView>
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