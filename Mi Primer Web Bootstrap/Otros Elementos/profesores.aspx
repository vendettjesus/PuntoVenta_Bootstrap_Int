<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profesores.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.profesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Conexion a Bootstrap-->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <title>Profesores</title>
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
                                    <a href="#" class="nav-link active">Profesores</a>
                                </li>
                                <li class="nav-item">
                                    <a href="alum.aspx" class="nav-link">Alumnos</a>
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
                <!-- Inicio De List Group -->
                <div class="col-2">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#" role="tab" aria-controls="altas">Altas</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#" role="tab" aria-controls="bajas">Bajas</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#" role="tab" aria-controls="cambios">Cambios</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#" role="tab" aria-controls="consultas">Consultas</a>
                    </div>
                    <!--Fin De List Group-->
               </div>
                <div class="col-10">
                    <!-- almacen de opciones de list-group  -->
                    <div class="tab-content" id="nav-tabContent">
                        <!-- primera opcion del list-group  -->
                        <div class="tab-pane fade show active" id="list-altas" role="tabpanel" aria-labelledby="list-home-list">
                            <!-- Inicio card  -->
                            <div class="card">
                                <!-- Titulo de la card -->
                                <div class="card-header">
                                    <h2>Profesores</h2>
                                </div>
                                <!-- Cuerpo de la card -->
                                <div class="card-body">
                                    <!-- Formulario -->
                                    <form action="#" method="post">
                                        <!--  -->
                                        <div class="row">
                                            <div class="col-3">
                                                <label for="idemp" class="from-label"><strong>Id De Empleado</strong></label>
                                                <input type="text" name="idemp" class="form-control" disabled />
                                            </div>
                                            <div class="col-9">
                                            </div>
                                        </div>
                                        <!--  -->
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
                                        <!--  -->
                                        <div class="row">
                                            <div class="col-12">
                                                <label for="dic" class="col-form-label"><strong>Dirección</strong></label>
                                                <input type="text" name="dic" id="dic" class="form-control" placeholder="Calle, Numero, Colonia, CP" />
                                            </div>
                                        </div>
                                        <!--  -->
                                        <div class="row">
                                            <div class="col-6">
                                                <label class="col-form-label"><strong>Correo Electrónico Personal</strong></label>
                                                <input type="email" name="cep" class="form-control" placeholder="correoelectronico@mail.com" />
                                            </div>
                                            <div class="col-6">
                                                <label class="col-form-label"><strong>Correo Electrónico Institucional</strong></label>
                                                <input type="email" name="cep" class="form-control" placeholder="correoelectronico@utags.edu.mx" />
                                            </div>
                                        </div>
                                        <!--  -->
                                        <div class="row">
                                           <div class="col-4">
                                                <label class="col-form-label" for="TipoP"><strong>Tipo De Profesor</strong></label>
                                                <select class="form-control" id="Tipop">
                                                    <option>Seleccione un tipo</option>
                                                    <option>Tiempo Completo</option>
                                                    <option>Asignatura</option>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <label class="col-form-label" for="grado"><strong>Último Grado De Estudios</strong></label>
                                                <input type="text" name="grado" id="grado" class="form-control" placeholder="Licenciatura, Maestria..." />
                                            </div>
                                            <div class="col-4">
                                                <label class="col-form-label" for="area"><strong>Área De Imparticion</strong></label>
                                                <input type="text" name="area" id="area" class="form-control" />
                                            </div>
                                        </div>
                                        <!-- En esta fila se encuentran los botones del formulario -->
                                        <div class="row p-3">
                                            <!-- Boton de cancelar -->
                                            <div class="col-6"><a href="#cancelar" data-toggle="modal" class="btn btn-outline-danger">Cancelar</a></div>
                                            <!-- Boton de Guardar -->
                                            <div class="col-6"><a href="#guardar" data-toggle="modal" class="float-right btn btn-outline-success">Guardar</a></div>
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
                                                        <a href="profesores.aspx" class="btn btn-primary">Continuar</a>
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
                                                        <a href="profesores.aspx" class="btn btn-primary" >Continuar...</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Fin de Modal -->
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Fin Opcion -->
                        <!-- poner mas opciones -->
                    </div>
                    <!-- Fin de contenedor de opciones -->
                </div>
                <!-- Fin de formulario  -->
            </div>
            <!-- Fin de fila de contenido -->
        </div>
        
    </form>
</body>
</html>
