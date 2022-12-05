<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ProductosEliminar.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.ProductosEliminar" %>

<asp:Content ID="ProductosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 p-1">
                            <div class="list-group" id="list-tab" role="tablist">
                               <a class="list-group-item  list-group-item-action text-bg-dark" id="list-add-list" href="ProductosAgregar.aspx" role="tab">Agregar</a>
                                <a class="list-group-item  list-group-item-action active" id="list-delete-list" href="ProductosEliminar.aspx" role="tab">Eliminar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-modify-list" href="ProductosModificar.aspx" role="tab">Modificar</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-query-list" href="ProductosConsultas.aspx" role="tab">Consultas</a>
                                <a class="list-group-item  list-group-item-action text-bg-dark" id="list-category-list" href="ProductoRegistrarCat.aspx" role="tab">Registrar Categoría</a>
                            </div>
                        </div>
                        
                        <br />
                        <div class="col-md-8 p-1">
                            <div class="card ">
                                <h5 class="card-header text-center alert alert-dark">Eliminar Producto</h5>
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
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="id_producto_a"></asp:TextBox>
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
                                        <asp:TextBox runat="server" type="text" class="form-control float-right"  ID="nombre_producto_a" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                        <asp:Button runat="server" Text="Buscar por Nombre" ID="BtnBusquedaProdNomb" OnClick="BtnBusquedaProdNomb_Click" class="btn btn-primary float-left" />
                                    </div>
                                </div> 
                                 <div class="mb-3">
                                    <asp:GridView ID="TablaProductos" runat="server" AutoGenerateColumns="false" BorderColor="Black" Font-Size="Small">
                                        <Columns>
                                            <asp:BoundField DataField="id_producto" HeaderText="ID Producto" />
                                            <asp:BoundField DataField="precio" HeaderText="Precio" />
                                            <asp:BoundField DataField="id_sucursal" HeaderText="ID Sucursal" />
                                            <asp:BoundField DataField="id_proveedor" HeaderText="ID Proveedor" />
                                            <asp:BoundField DataField="id_categoria" HeaderText="ID Categoría" />
                                            <asp:BoundField DataField="nombre_producto" HeaderText="Nombre Producto" />
                                            <asp:BoundField DataField="unidad_medida" HeaderText="Unidad de Medida" />
                                        </Columns>
                                        <EditRowStyle BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:GridView>
                                </div>       
                                <center>
                                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                </center>
                                <center>
                                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </center>       
                                <div class="mb-3">
                                    <label for="id_producto" class="form-label">Id producto</label>
                                    <input runat="server" type="text" class="form-control" id="id_producto" placeholder=" ">
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="nombre_producto" class="form-label">Nombre Producto</label>
                                    <input runat="server" type="text" class="form-control" id="nombre_producto" placeholder="Coca-cola" value="0">
                                    </div>
                                <div class="mb-3 collapse">
                                    <label for="precio" class="form-label">Precio</label>
                                    <input runat="server" type="number" class="form-control" id="precio" placeholder="36.56" value="0">
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="unidad_medida" class="form-label">Unidad</label>
                                    <select runat="server" class="form-select" id="unidad_medida" aria-label="Default select example" value=" ">
                                        <option selected>Seleccione una unidad</option>
                                        <option value="Kg">Kg</option>
                                        <option value="Lt">Lt</option>
                                        <option value="Pza">Pza</option>
                                        <option value="Pqte">Pqte</option>
                                        </select>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="id_proveedor" class="form-label">Id proveedor</label>
                                    <input runat="server" type="text" class="form-control" id="id_proveedor" placeholder="Elige el Proveedor" value="0"/>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="id_categoria" class="form-label">Id Categoría de Producto</label>
                                    <input runat="server" type="text" class="form-control" id="id_categoria" placeholder="Elige la Categoría" value="0"/>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="id_sucursal" class="form-label">Id Sucursal</label>
                                    <input runat="server" type="text" class="form-control" id="id_sucursal" placeholder="Elige la Sucursal" value="0"/>
                                </div>
                                <div class="collapse">
                                    <label for="accion">Nuevo</label>
                                    <input runat="server" type="text" class="form-control" id="accion" value="eliminar" />
                                </div>
                                           
                                        
                                        

                                        <!-- Boton Guardar Cancelar -->
                                            <div class="mb-3">
                                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                                    <asp:Button runat="server" ID="BtnEliminarProd" class="btn btn-primary me-sm-6" Text="Eliminar" type="button" OnClick="BtnEliminarProd_Click"></asp:Button>
                                                    <asp:Button ID="BtnCancelar" runat="server" class="btn btn-danger"  Text="Cancelar" type="button" OnClick="BtnCancelar_Click"></asp:Button>
                                                </div>
                                            </div>
                                            
                                        

                                        <!-- Modal -->
                                        
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </asp:Content>
