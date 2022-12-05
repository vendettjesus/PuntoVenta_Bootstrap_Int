<%@ Page  Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EmpleadosEliminar.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.EmpleadosEliminar" %>

<asp:Content ID="EmpleadosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-home-list" href="Empleados.aspx" role="tab" aria-controls="home">Agregar</a>
                    <a class="list-group-item list-group-item-action active" id="list-profile-list"  href="EmpleadosEliminar.aspx" role="tab" aria-controls="profile">Eliminar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-messages-list" href="EmpleadosModificar.aspx" role="tab" aria-controls="messages">Modificar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-settings-list" href="EmpleadosConsulta.aspx" role="tab">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                            <div class="card ">
                                <h5 class="card-header text-center alert alert-dark">Eliminar Empleado</h5>
                                    <div class="card-body">
                                <div class="row">
                                    <div class="col-md-10">
                                        <!--ETIQUETA BUsQUEDA POR ID-->
                                        <label for="BtnBusquedaProdId">Id Empleado</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXT BOX BUsQUEDA POR ID-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="id_empleado_a"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2 pb-3">
                                        <!--BOTON BUsQUEDA POR ID-->
                                        <asp:Button runat="server" Text="Buscar por ID" ID="BtnBusquedaPorId" OnClick="BtnBusquedaPorId_Click" class="btn btn-primary"/>
                                    </div>
                                </div>
                            
                            
                                <div class="row">
                                    
                                    <div class="col-md-10 pb-2">
                                        <!--ETIQUETA BUsQUEDA POR NOMBRE-->
                                        <label for="BtnBusquedaProdNomb">Nombre Empleado</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXTBOX BUsQUEDA POR NOMBRE-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right"  ID="nombre_empleado" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                        <asp:Button runat="server" Text="Buscar por Nombre" ID="BtnBusquedaPorNomb" OnClick="BtnBusquedaPorNomb_Click" class="btn btn-primary float-left" />
                                    </div>
                                </div> 
                                 <div class="mb-3">
                                    <asp:GridView ID="TablaEmpleados" runat="server" AutoGenerateColumns="false" BorderColor="Black" Font-Size="Small">
                                        <Columns>
                                            <asp:BoundField DataField="id_empleado" HeaderText="ID Empleado" />
                                            <asp:BoundField DataField="nombreEmpleado" HeaderText="Nombre Empleado" />
                                            <asp:BoundField DataField="RFC" HeaderText="RFC" />
                                            <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                                            <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
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
                                    <label for="id_empleado" class="form-label">Id Empleado</label>
                                    <input runat="server" type="text" class="form-control" id="id_empleado_" placeholder=" "/>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="nombreEmpleado" class="form-label">Nombre Empleado</label>
                                    <input runat="server" type="text" class="form-control" id="nombreEmpleado_" placeholder="" value="">
                                    </div>
                                <div class="mb-3 collapse">
                                    <label for="RFC" class="form-label">RFC</label>
                                    <input runat="server" type="text" class="form-control" id="RFC_" placeholder=" " value=" "/>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="" class="form-label">Direccion</label>
                                    <input runat="server" type="text" class="form-control" id="direccion_" placeholder="" value=" "/>
                                </div>
                                <div class="mb-3 collapse">
                                    <label for="" class="form-label">Id Categoría de Producto</label>
                                    <input runat="server" type="text" class="form-control" id="telefono_" placeholder="" value=" "/>
                                </div>
                                <div class="collapse">
                                    <label for="accion">Nuevo</label>
                                    <input runat="server" type="text" class="form-control" id="accion" value="eliminar" />
                                </div>
                                           
                                        
                                        

                                        <!-- Boton Guardar Cancelar -->
                                            <div class="mb-3">
                                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                                    <asp:Button runat="server" ID="BtnEliminarEmpleado" class="btn btn-primary me-sm-6" Text="Eliminar" type="button" OnClick="BtnEliminarEmpleado_Click"></asp:Button>
                                                    <asp:Button ID="BtnCancelar" runat="server" class="btn btn-danger"  Text="Cancelar" type="button" OnClick="BtnCancelar_Click"></asp:Button>
                                                </div>
                                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
