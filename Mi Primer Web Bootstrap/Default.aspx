<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12">
            <div id="carouselExampleCaptions" class="carousel slide pt-3 pb-2" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Imagenes/alumnos.jpg" class="d-block" width="1080" height="500" >
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Alumnos</h5>
                            <p>Sistema para el control de Alumnos</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Imagenes/profesor.jpg" class="d-block" width="1080" height="500" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Profesores</h5>
                            <p>Sistema para el control de Profesores</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Imagenes/administrativo.jpg" class="d-block" width="1080" height="500" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Administrativos</h5>
                            <p class="text-muted">Sistema para el control de Administrativos</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <br />
    <div class="row pb-5">
        <div class="col-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <img src="Imagenes/alumnos2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Modulo Alumnos</h5>
                            <p class="card-text">Modulo para administrar Alumnos, puede dar de Alta, Baja, cambiar datos, o consultarlos...</p>
                            <a href="#" class="btn btn-primary">Ir al modulo</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="col-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <img src="Imagenes/profesor4.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Modulo Profesores</h5>
                            <p class="card-text">En este modulo prodra realizar la gestion de Profesores, Altas, Bajas, Cambios y consultas...</p>
                            <a href="Profesor.aspx" class="btn btn-primary">Ir al modulo</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="col-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <img src="Imagenes/administrativo2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Modulo Administrativos</h5>
                            <p class="card-text">Aqui podra gestionar la informacion de los Administrativos, Altas, Bajas, Cambios y Consultas de informacion...</p>
                            <a href="#" class="btn btn-primary">Ir al modulo</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
