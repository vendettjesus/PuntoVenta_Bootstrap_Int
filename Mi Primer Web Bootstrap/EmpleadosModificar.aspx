<%@ Page  Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EmpleadosModificar.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.EmpleadosModificar" %>

<asp:Content ID="EmpleadosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-home-list" href="Empleados.aspx" role="tab" aria-controls="home">Agregar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-profile-list"  href="EmpleadosEliminar.aspx" role="tab" aria-controls="profile">Eliminar</a>
                    <a class="list-group-item list-group-item-action active" id="list-messages-list" href="EmpleadosModificar.aspx" role="tab" aria-controls="messages">Modificar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-settings-list" href="EmpleadosConsulta.aspx" role="tab">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-dark">Agregar Empleado</h5>
                    <div class="card-body">
                            <center>
                            <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                            </center>
                            <center>
                            <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                            </center>
                           
                            <div class="form-group">
                                <label for="name">Id Empleado</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_Empleado"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Nombre Empleado</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="nombreEmpleado" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="rfc">RFC</label>
                                <asp:TextBox runat="server" type="Text" class="form-control" id="rfc" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="direccion">Dirección</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="direccion" required="required"></asp:TextBox>
                            </div>
                        
                            <div class="form-group mb-3">
                            </div>
                            <div class="form-group mb-4">
                                <label for="telefono">Teléfono</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="telefono" required="required"></asp:TextBox>
                            </div>
                            <div class="collapse">
                                    <label for="accion">Nuevo</label>
                                    <input runat="server" type="text" class="form-control" id="accion" value="editar" />
                                </div>
                            <hr />
                            <div class="mb-3">
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                        <asp:Button runat="server" ID="BtnModificarEmpleado" class="btn btn-primary me-sm-6" Text="Guardar" type="button" OnClick="BtnModificarEmpleado_Click"></asp:Button>
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
