<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <!-- Conexion a Bootstrap-->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Test Nav</title>
</head>
<body>
    <script language="JavaScript" type="text/javascript">
        alert("Este Es Un Mensaje JavaScript");
    </script>
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
                                    <a class="nav-link" href="#" class="nav-link active">Pagina Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Pagina2.aspx" class="nav-link">Pagina 2</a>
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
                            <p> class="lead"> Este Es Un Jumbotron, Espacio Col-3 De Lado Izquierdo </p>
                            <hr class="my-4">
                            <a class="btn btn-primary btn-lg" href="#" role="button">Otro Reto</a>
                        </div>
                    </div>
                    <div class="col-lg-6 border border-dark">
                        <br />
                        <div class="jumbotron">
                            <h1 class="display-5">Reto Del Día De Hoy!</h1>
                            <p class="lead">Este Es Un Jumbotron, Una Clase Que Puede Implementar En Una Etiqueta Div Y Nos Sirve De Contenedor</p>
                            <hr class="my-4">
                            <p>Puedes Utilizar Esta Clase Para Mostrar Contenido De Tal Manera Que Puedas Resaltarlo En Un Contenedor Mas Grande</p>
                            <a class="btn btn-primary btn-lg" href="#" role="button">Aquí Hay Otro Reto</a>
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
                                        <a href="#" class="btn btn-primary">Otro Reto</a>
                                    </div>
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
                                        <a href="#" class="btn btn-primary">Otro Reto</a>
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

     <!-- jQuery , Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
