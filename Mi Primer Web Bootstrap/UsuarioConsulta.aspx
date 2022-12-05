<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="UsuarioConsulta.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.UsuarioConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-home-list" href="Usuarios.aspx" role="tab" aria-controls="home">Agregar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-profile-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="profile">Eliminar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-messages-list" href="UsuarioCambio.aspx" role="tab" aria-controls="messages">Actualizar</a>
                    <a class="list-group-item list-group-item-action active" id="list-settings-list" href="UsuarioConsulta.aspx">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-dark">Consultar Usuario</h5>
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
                                <asp:TextBox runat="server" type="text" class="form-control float-right" ID="id_usuario"></asp:TextBox>
                            </div>
                            <div class="col-md-2 pb-3">
                                    <!--BOTON BUsQUEDA POR ID-->
                                <asp:Button runat="server" ID="BtnBuscaID" Text="Buscar por ID" class="btn btn-primary" OnClick="BtnBuscaID_Click"/>
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
                                <asp:TextBox runat="server" type="text" class="form-control float-right" ID="usuario" ></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                <asp:Button runat="server" ID="btnBuscaNombre" Text="Buscar por Usuario" class="btn btn-primary float-left" OnClick="BtnBuscaNombre_Click" />
                            </div>
                        </div>
                                <!--LINEA DIVISORA-->
                                <center>
                                <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                </center>
                                <center>
                                <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </center>  
                                <div class="mb-3">
                                <asp:GridView ID="TablaUsuarios" runat="server" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="id_usuario" HeaderText="ID Usuario" />
                                        <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                                        <asp:BoundField DataField="id_tipoUsuario" HeaderText="ID Tipo Usuario" />
                                        <asp:BoundField DataField="id_empleado" HeaderText="ID Empleado" />
                                    </Columns>
                                </asp:GridView>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
