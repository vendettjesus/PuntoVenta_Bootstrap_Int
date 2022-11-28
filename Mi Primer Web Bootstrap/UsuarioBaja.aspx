<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="UsuarioBaja.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.UsuarioBaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action" id="list-home-list" href="Usuarios.aspx" role="tab" aria-controls="agrega">Agregar</a>
                    <a class="list-group-item list-group-item-action active" id="list-profile-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="elimina">Eliminar</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" href="UsuarioCambio.aspx" role="tab" aria-controls="messages">Modificar</a>
                    <a class="list-group-item list-group-item-action" id="list-settings-list" href="UsuarioConsulta.aspx">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center">Eliminar Usuario</h5>
                    <div class="card-body">
                        <div class="row">
                                    <div class="col-md-10">
                                        <!--ETIQUETA BUsQUEDA POR ID-->
                                        <label for="name">Id usuario</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXT BOX BUsQUEDA POR ID-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="buscaID"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2 pb-3">
                                        <!--BOTON BUsQUEDA POR ID-->
                                        <asp:Button runat="server" Text="Buscar por ID" class="btn btn-primary"/>
                                    </div>
                                </div>
                            
                            
                                <div class="row">
                                    
                                    <div class="col-md-10 pb-2">
                                        <!--ETIQUETA BUsQUEDA POR NOMBRE-->
                                        <label for="name">Nombre</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXTBOX BUsQUEDA POR NOMBRE-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="buscaNombre" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                        <asp:Button runat="server" Text="Buscar por Usuario" class="btn btn-primary float-left" />
                                    </div>
                                </div>
                        <!--LINEA DIVISORA-->
                        <hr class="my-4">
                        <div class="form-row">
                            <div class="form-group col-md-2">
                            </div>
                            <div class="form-group col-md-2">
                                <!--ETIQUETA DEL CAMPO ID USUARIO-->
                                <label for="name">Id Usuario</label>
                                <!--TEXTBOX DEL CAMPO ID USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_usuario" disabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                                <!--ETIQUETA DEL CAMPO NOMBRE -->
                                <label for="name">Usuario</label>
                                <!--TEXTBOX DEL CAMPO NOMBRE -->
                                <asp:TextBox runat="server" type="text" class="form-control" id="usuario" disabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-2">
                            </div>
                            <div class="form-group col-md-4">
                                <!--ETIQUETA DEL CAMPO USUARIO-->
                                <label for="id_tipoUsuario">Id tipo usuario</label>
                                <!--TEXTBOX DEL CAMPO USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_tipoUsuario" disabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                                <!--ETIQUETA DEL CAMPO USUARIO-->
                                <label for="id_empleado">id empleado</label>
                                <!--TEXTBOX DEL CAMPO USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_empleado" disabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-2">
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <!--BOTON PARA BORRAR FORMULARIO-->
                                <asp:Button runat="server" Text="Borrar Formulario" class="btn btn-outline-danger"/>
                            </div>
                            <div class="form-group col-md-6">
                            </div>
                            <div class="form-group col-md-3">
                                <!--BOTON PARA GUARDAR, BORRAR REGISTRO O ACTUALIZAR-->
                                <asp:Button runat="server" Text="Eliminar Registro" class="btn btn-outline-success float-right" OnClick="Unnamed2_Click"/>
                            </div>
                            <!-- MODAL PARA MENSAJE -->
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
    </div>
</asp:Content>
