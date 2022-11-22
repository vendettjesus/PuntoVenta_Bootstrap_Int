<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alum.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.alum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Conexion a Bootstrap-->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>Alumnos</title>
</head>
<body>
    <!-- jQuery , Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row border border-success">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navegador" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                            <!-- En Caso De Que No La Pida Adaptativa Borrar Etiqueta Button y Div Con Clase Collapse -->
                        </button>
                        <!-- Contenedor Que Almacena Los Contenidos Del Menú -->
                        <div class="collapse navbar-collapse" id="Navegador">
                            <!-- Etiqueta ul que Almacena Las Opciones Del Menú -->
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="WebForm1.aspx" class="nav-link">Pagina Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Pagina2.aspx" class="nav-link ">Pagina 2</a>
                                </li>
                                <li class="nav-item">
                                    <a href="profesores.aspx" class="nav-link">Profesores</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">Alumnos</a>
                                </li>
                                <li class="nav-item">
                                    <a href="admin.aspx" class="nav-link">Administrativos</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">Pagina 6</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row p-4">
                <div class="col-2">
                    <div class="list-group" id="list-tab" role="tablist">
                         <!-- Data-toggle para el funcionamiento del modal o list-group -->
                        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#" role="tab" aria-controls="altas">Altas</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#" role="tab" aria-controls="bajas">Bajas</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#" role="tab" aria-controls="cambios">Cambios</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#" role="tab" aria-controls="consultas">Consultas</a>
                    </div>
                </div>
                <div class="col-10">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="list-altas" role="tabpanel" aria-labelledby="list-home-list">
                            <div class="card">
                                <div class="card-header">
                                    <h2>Alumnos</h2>
                                </div>
                                <div class="card-body">
                                    <form action="#" method="post">
                                        <div class="row">
                                            <div class="col-3">
                                                <label for="idemp" class="from-label"><strong>Matrícula</strong></label>
                                                <input type="text" name="idemp" class="form-control" disabled />
                                            </div>
                                            <div class="col-9">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <label for="nom" class="form-label"><strong>Nombre(s)</strong></label>
                                                <input type="text" name="nom" id="nom" class="form-control" />
                                            </div>
                                            <div class="col-4">
                                                <label for="apep"><strong>Apellido Paterno</strong></label>
                                                <input type="text" name="apep" id="apep" class="form-control" />
                                            </div>
                                            <div class="col-4">
                                                <label for="apem" class="form-label"><strong>Apellido Materno</strong></label>
                                                <input type="text" name="apem" id="apem" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <label for="dic" class="col-form-label"><strong>Dirección</strong></label>
                                                <input type="text" name="dic" id="dic" class="form-control" placeholder="Calle, Numero, Colonia, CP" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <label class="col-form-label"><strong>Correo Electrónico Personal</strong></label>
                                                <input type="email" name="cep" class="form-control" placeholder="correoelectronico@mail.com" />
                                            </div>
                                            <div class="col-6">
                                                <label class="col-form-label"><strong>Coreo Electrónico Institucional</strong></label>
                                                <input type="email" name="cep" class="form-control" placeholder="Matricula@utags.edu.mx" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <label class="col-form-label" for="TipoP"><strong>Carrera</strong></label>
                                                <select class="form-control" id="Tipop" >
                                                    <option>Seleccione un tipo</option>
                                                    <option>TICS</option>
                                                    <option>Energías Renovables</option>
                                                    <option>Administración</option>
                                                    <option>Procesos</option>
                                                    <option>Contaduria</option>
                                                    <option>Mecatronica</option>
                                                </select>
                                            </div>
                                             <div class="col-6">
                                                <label class="col-form-label" for="Estatus"><strong>Estatus</strong></label>
                                                <select class="form-control" id="Estatus" >
                                                    <option>Seleccione un tipo</option>
                                                    <option>Activo</option>
                                                    <option>Baja Temporal</option>
                                                    <option>Baja Definitiva</option>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="row p-3">
                                            <div class="col-6"> <a href="#cancelar" data-toggle="modal" class="btn btn-outline-warning">Cancelar</a></div>
                                            <div class="col-6"><a href="#guardar" data-toggle="modal" class="float-right btn btn-outline-primary">Guardar</a></div>
                                        </div>
                                        <!--Modales-->
                                        <!-- Inicio de Modal -->
                                        <div class="modal fade" id="cancelar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalcancelar">Cancelar</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Se Perderan Los Datos Capturados</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Anular</button>
                                                        <a href="alum.aspx" class="btn btn-primary">Continuar</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Fin de Modal -->
                                        <!-- Inicio de Modal -->
                                        <div class="modal fade" id="guardar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalguardar">Guardar</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Se Han Guardado Los Datos Correctamente</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a href="alum.aspx"  class="btn btn-primary" >Continuar...</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Fin de Modal -->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
