<%@ Page  Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EmpleadosConsulta.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.EmpleadosConsulta" %>

<asp:Content ID="EmpleadosMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-home-list" href="Empleados.aspx" role="tab" aria-controls="home">Agregar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-profile-list"  href="EmpleadosEliminar.aspx" role="tab" aria-controls="profile">Eliminar</a>
                    <a class="list-group-item list-group-item-action text-bg-dark" id="list-messages-list" href="EmpleadosModificar.aspx" role="tab" aria-controls="messages">Modificar</a>
                    <a class="list-group-item list-group-item-action active" id="list-settings-list" href="EmpleadosConsulta.aspx" role="tab">Consultas</a>
                </div>
            </div>
            <div class="col-md-8 p-1">
                <div class="card">
                    <h5 class="card-header text-center alert alert-dark">Agregar Empleado</h5>
                    <div class="card-body">
                                                            <div class="row">
                                    <div class="col-md-10">
                                        <!--ETIQUETA BUsQUEDA POR ID-->
                                        <label for="BtnBusquedaPordId">Id Empleado</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXT BOX BUsQUEDA POR ID-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right" ID="id_empleado"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2 pb-3">
                                        <!--BOTON BUsQUEDA POR ID-->
                                        <asp:Button runat="server" Text="Buscar por ID" ID="BtnBusquedaPorId" OnClick="BtnBusquedaPorId_Click" class="btn btn-primary"/>
                                    </div>
                                </div>
                            
                            
                                <div class="row">
                                    
                                    <div class="col-md-10 pb-2">
                                        <!--ETIQUETA BUsQUEDA POR NOMBRE-->
                                        <label for="BtnBusquedaPorNomb">Nombre Empleado</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 pb-2">
                                        <!--TEXTBOX BUsQUEDA POR NOMBRE-->
                                        <asp:TextBox runat="server" type="text" class="form-control float-right"  ID="nombreEmpleado" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <!--BOTON BUsQUEDA POR NOMBRE-->
                                        <asp:Button runat="server" Text="Buscar por Nombre" ID="BtnBusquedaPorNomb" OnClick="BtnBusquedaPorNomb_Click" class="btn btn-primary float-left" />
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
                                            <asp:GridView ID="TablaEmpleados" runat="server" AutoGenerateColumns="false" Font-Size="Small">
                                                <Columns>
                                                    <asp:BoundField DataField="id_empleado" HeaderText="ID Empleado" />
                                                    <asp:BoundField DataField="nombreEmpleado" HeaderText="Nombre" />
                                                    <asp:BoundField DataField="RFC" HeaderText="RFC" />
                                                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                                                    <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    
                            <!-- Modal -->
                            
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
