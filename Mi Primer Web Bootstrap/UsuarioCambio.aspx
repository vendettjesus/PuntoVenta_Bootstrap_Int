<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="UsuarioCambio.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.UsuarioCambio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-home-list" href="Usuarios.aspx" role="tab" aria-controls="agrega">Agregar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-profile-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="eliminar">Eliminar</a>
                    <a class="list-group-item list-group-item-action active" id="list-messages-list" href="UsuarioCambio.aspx" role="tab" aria-controls="modifica">Actualizar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-settings-list" href="UsuarioConsulta.aspx">Consulta</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-dark">Actualizar Usuario</h5>
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
                                        <asp:Button runat="server" Text="Buscar por ID" class="btn btn-primary" OnClick="Unnamed1_Click"/>
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
                                        <asp:Button runat="server" Text="Buscar por Usuario" class="btn btn-primary float-left" OnClick="Unnamed2_Click" />
                                    </div>
                                </div>
                                <center>
                                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                </center>
                                <center>
                                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </center>  
                                <div class="mb-3">
                        
                        <!--LINEA DIVISORA-->
                        <hr class="my-4">
                        <div class="form-row">
                            <div class="form-group col-md-8">
                            </div>
                            <div class="form-group col-md-8">
                                <!--ETIQUETA DEL CAMPO ID USUARIO-->
                                <label for="name">Id Usuario</label>
                                <!--TEXTBOX DEL CAMPO ID USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_Usuario"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-8">
                                <!--ETIQUETA DEL CAMPO USUARIO -->
                                <label for="name">Usuario</label>
                                <!--TEXTBOX DEL CAMPO USUARIO -->
                                <asp:TextBox runat="server" type="text" class="form-control" id="usuario"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-8">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-8">
                                <!--ETIQUETA DEL CAMPO TIPO USUARIO-->
                                ID Tipo Usuario
                                <!--TEXTBOX DEL CAMPO ID TIPO USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_tipoUsuario"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-8">
                                ID Empleado
                                <!--TEXTBOX DEL CAMPO USUARIO-->
                                <asp:TextBox runat="server" type="text" class="form-control" id="id_empleado" autocomplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-8">
                                Contraseña
                                <!--TEXTBOX DEL CAMPO Contraseña-->
                                <asp:TextBox runat="server" type="password" class="form-control" id="contrasena" autocomplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row pt-4">
                            <div class="form-group col-md-6">
                            </div>
                            <div class="form-group col-md-3">
                                <!--BOTON PARA GUARDAR, BORRAR REGISTRO O ACTUALIZAR-->
                                <!-- Button to Open the Modal -->
                                <asp:Button runat="server" type="button" Text="Guardar Cambios" ID="GuardarCambios" class="btn btn-primary"  OnClick="GuardarCambios_Click">
                                </asp:Button>

                                <!-- The Modal -->
                                <div class="modal fade" id="myModal">
                                  <div class="modal-dialog">
                                    <div class="modal-content">

                                      <!-- Modal Header -->
                                      <div class="modal-header alert alert-primary">
                                        <h4 class="modal-title">Usuario Actualizado</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                      </div>

                                      <!-- Modal body -->
                                      <div class="modal-body">
                                        El usuario ha sido actualizado con éxito!
                                      </div>

                                      <!-- Modal footer -->
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                      </div>

                                    </div>
                                  </div>
                                </div>
                            </div>
                            
                            <div class="form-group col-md-3">
                                <!--BOTON PARA BORRAR FORMULARIO-->
                                <asp:Button runat="server" Text="Borrar Formulario" class="btn btn-danger float-end" OnClick="Unnamed3_Click"/>
                            </div>
                        </div>            
                        </div>
                </div>
            </div>
        </div>
    </div>

        <script type="text/javascript">
            function openModal() {
                $('myModal').modal('show');
            }
        </script>
</asp:Content>
