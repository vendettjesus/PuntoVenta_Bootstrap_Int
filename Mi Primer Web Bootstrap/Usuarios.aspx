<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Usuarios" %>

<asp:Content ID="UsuariosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action active" id="list-adduser-list" href="Usuarios.aspx" role="tab" aria-controls="adduser">Agregar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-deleteuser-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="deleteuser">Eliminar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-edituser-list" href="UsuarioCambio.aspx" role="tab" aria-controls="edituser">Actualizar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-query-list" href="UsuarioConsulta.aspx">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-dark">Agregar Usuario</h5>
                    <div class="card-body">
                            <center>
                            <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                            </center>
                            <center>
                            <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                            </center>
                           
                            <div class="form-group mb-3 collapse">
                                <label for="name">Id Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_Usuario" disabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="usuario" placeholder="Nombre de Usuario" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="contrasena">Contraseña</label>
                                <asp:TextBox runat="server" type="password" class="form-control" id="Contrasena" required="required" placeholder=" "></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="id_tipoUsuario">Id Tipo Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_tipoUsuario" required="required"></asp:TextBox>
                            </div>
                        
                            <div class="form-group mb-3">
                            </div>
                            <div class="form-group mb-4">
                                <label for="id_empleado">Id Empleado</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_empleado" required="required"></asp:TextBox>
                            </div>
                            <div class="collapse">
                                    <label for="accion">Nuevo</label>
                                    <input runat="server" type="text" class="form-control" id="accion" value="nuevo" />
                                </div>
                            <hr />
                                <div class="mb-3">
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                        <asp:Button runat="server" ID="BtnAgregarUsuario" class="btn btn-primary me-sm-6" Text="Guardar" type="button" OnClick="BtnAgregarUsuario_Click"></asp:Button>
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
