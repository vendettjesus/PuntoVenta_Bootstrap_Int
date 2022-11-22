<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="UsuarioConsulta.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.UsuarioConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-2 p-1">
                <div class="list-group" id="list-tab" role="tablist">
                   <a class="list-group-item list-group-item-action" id="list-home-list" href="Usuario.aspx" role="tab" aria-controls="home">Altas</a>
                    <a class="list-group-item list-group-item-action" id="list-profile-list"  href="UsuarioBaja.aspx" role="tab" aria-controls="profile">Bajas</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" href="UsuarioCambio.aspx" role="tab" aria-controls="messages">Cambios</a>
                    <a class="list-group-item list-group-item-action active" id="list-settings-list" href="UsuarioConsulta.aspx">Consultas</a>
                </div>
            </div>
            <div class="col-10 p-1">
                <div class="card">
                    <h5 class="card-header">Consulta de usuarios</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <asp:GridView ID="dgvProfesor" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
