                                            <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <!-- Conexion a Bootstrap-->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <title>Test Nav</title>
</head>
<body>
     <!-- jQuery , Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
 <!-- Menú De La Pagina -->
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
                                    <a href="#" class="nav-link active">Pagina 2</a>
                                </li>
                                <li class="nav-item">
                                    <a href="profesores.aspx" class="nav-link">Profesores</a>
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
            <br />
            <div class="col-12">
                <div class="row">   
                    <div class="col-lg-3 border border-dark">
                        <br />
                        <div class="jumbotron">
                            <h1 class="display-7"> IZQUIERDO</h1>
                            <p class="lead"> Este Es Un Jumbotron, Espacio Col-3 De Lado Izquierdo
                            <hr class="my-4">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                    Modal
                                </button>
                        </div>
                        <!-- Inicio de Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Este es un modal</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p> Felicidades. Ha Logrado Mostrar Un Mensaje Mediante Un Modal</p>     
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fin de Modal -->
                    </div>
                    <div class="col-lg-6 border border-dark">
                        <br />
                        <div class="jumbotron">
                            <h1 class="display-5">Reto Del Día De Hoy!</h1>
                            <p class="lead">Este Es Un Jumbotron, Una Clase Que Puede Implementar En Una Etiqueta Div Y Nos Sirve De Contenedor</p>
                            <hr class="my-4">
                            <p>Puedes Utilizar Esta Clase Para Mostrar Contenido De Tal Manera Que Puedas Resaltarlo En Un Contenedor Mas Grande</p>
                            <a class="btn btn-primary btn-lg" href="#ModalSpiner" data-toggle="modal" role="button">Aquí Hay Otro Reto</a> 
                            <div class="modal fade" id="ModalSpiner" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="eModalSpiner">Modal y Spiner</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="d-flex justify-content-center">
                                                <div class="spinner-border text-warning" role="status">
                                                    <span class="sr-only">Loading...</span>
                                                </div>
                                                <div class="spinner-border text-success" role="status">
                                                    <span class="sr-only">Loading...</span>
                                                </div>
                                                <div class="spinner-border text-danger" role="status">
                                                    <span class="sr-only">Loading...</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="row">
                            <div class="col-sm-12 border border-dark">
                                <br>
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Esta Es Una Card</h5>
                                        <p class="card-text">Use Este Elemento Para Mostrar Noticias Ó Texto Breve</p>
                                        <a href="#ModalForm" data-toggle="modal" class="btn btn-primary">Otro Reto</a>
                                    </div>
                                    <!-- Inicio de Modal -->
                                    <div class="modal fade" id="ModalForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="eModalForm">Modal y Form</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="#" method="post">
                                                        <label for="nom">Nombre</label>
                                                        <input type="text" name="non" class="form-control" />
                                                        <label for="ape">Primer Apellido:</label>
                                                        <input type="text" name="ape" class="form-control" />
                                                        <br />
                                                        <button class="btn btn-primary">
                                                            Enviar
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Fin de Modal -->
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 border border-dark">
                                <br />
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Está Es Otra Card</h5>
                                        <p class="card-text">Use Este Elemento Para Mostrar Noticias Ó Texto Breve</p>
                                        <a href="#modalgruop" data-toggle="modal" class="btn btn-primary">Otro Reto</a>
                                        <!-- Inicio de Modal -->
                                        <div class="modal fade" id="modalgruop" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="eModal">Modal Y Listgruop Con Badges</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <ul class="list-group">
                                                            <li class="list-group-item d-flex justify-content-between align-items-center">Reprobados
                                                                <span class="badge badge-primary badge-pill">22</span>
                                                            </li>
                                                            <li class="list-group-item d-flex justify-content-between align-items-center">Medio Reprobados
                                                                <span class="badge badge-primary badge-pill">1</span>
                                                            </li>
                                                            <li class="list-group-item d-flex justify-content-between align-items-center">Aprobados
                                                                 <span class="badge badge-primary badge-pill">0</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <!-- Fin de Modal -->
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                                     <!-- Fin Menu De La Pagina -->
                </div>
            </div>
    </form>

    
</body>
</html>
