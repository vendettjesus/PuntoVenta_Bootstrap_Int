<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Usuarios" %>

<asp:Content ID="UsuariosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <div class="col-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action active" id="list-home-list" href="Usuario.aspx" role="tab" aria-controls="home">Altas</a>
                    <a class="list-group-item list-group-item-action" id="list-profile-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="profile">Bajas</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" href="UsuarioCambio.aspx" role="tab" aria-controls="messages">Cambios</a>
                    <a class="list-group-item list-group-item-action" id="list-settings-list" href="UsuarioConsulta.aspx">Consultas</a>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <h5 class="card-header">Altas de usuarios</h5>
                    <div class="card-body">
                        
                           
                            <div class="form-group mb-3">
                                <label for="name">Id Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_Usuario" disabled></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="usuario"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="Contrasena">Contraseña</label>
                                <asp:TextBox runat="server" type="password" class="form-control" id="Contrasena"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3">
                                <label for="id_tipoUsuario">Id Tipo Usuario</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_tipoUsuario"></asp:TextBox>
                            </div>
                            <%--<div class="form-group mb-4">
                            </div>--%>
                            <%-- elemento vacío --%>
                        
                            <div class="form-group mb-3">
                            </div>
                            <div class="form-group mb-4">
                                <label for="id_empleado">Id Empleado</label>
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_empleado"></asp:TextBox>
                            </div>
                            <hr />
                            <div class="form-group col-md-3">
                                <asp:Button runat="server" Text="Borrar Formulario" class="btn btn-outline-danger"/>
                            </div>
                            <div class="form-group col-md-6">
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Button runat="server" Text="Guardar" class="btn btn-outline-success float-right" OnClick="Unnamed2_Click"/>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="guardarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
