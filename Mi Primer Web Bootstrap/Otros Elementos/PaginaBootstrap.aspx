<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaBootstrap.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.PaginaBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
</head>
<body>
    <!-- jQuery , Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <div>
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb">
                   <li class="breadcrumb-item"><a href="http://www.google.com">Google</a></li>
                   <li class="breadcrumb-item"><a href="http://yahoo.com.mx">Yahoo</a></li>
                   <li class="breadcrumb-item active" aria-current="Pagina Actual">Data</li>0
              </ol>
           </nav>
        </div>
            <div class="btn-group">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Action
        </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="http://www.google.com" target="_parent">Google - parent</a>
                    <a class="dropdown-item" href="http://www.yahoo.com.mx" target="_self">Yahoo - self</a>
                    <a class="dropdown-item" href="https://www.bing.com/" target="_top">Bing - top</a>
                    <a class="dropdown-item" href="https://yandex.com/" target="_blank">Yandex - blank </a>
                    <a class="dropdown-item" href="https://i.duckduckgo.com/" target="_blank">DuckDuckGo</a>
               </div>
            </div>
        <div class="container">
            <div class="row">
                <div class="col-md border border-primary">
                    <div class="btn-group">
                        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Espacio 1
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="http://www.google.com" target="_parent">Google - parent</a>
                            <a class="dropdown-item" href="http://www.yahoo.com.mx" target="_self">Yahoo - self</a>
                        </div>
                    </div>
                </div>
                <div class="col-md border border-primary">
                    <div class="btn-group">
                        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Espacio 2
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="https://www.bing.com/" target="_top">Bing - top</a>
                            <a class="dropdown-item" href="https://yandex.com/" target="_blank">Yandex - blank </a>
                        </div>
                    </div>
                </div>
                <div class="col-md border border-primary">
                    <div class="btn-group">
                        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Espacio 3
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="https://i.duckduckgo.com/" target="_blank">DuckDuckGo</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <center>
        <div class="container">
            <div class="row">
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div> 
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div>
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div> 
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div>
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div> 
                <div class="col-md-1 border border-primary">
                    div1
                </div>
                 <div class="col-md-1 border border-primary">
                     div1
                </div>
            </div>
            <div class="row">
                 <div class="col-md-4 border border-primary">
                    div1
                </div>
                 <div class="col-md-4 border border-primary">
                     div1
                </div> 
                <div class="col-md-4 border border-primary">
                    div1
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 border border-primary">
                    div1
                </div>
                <div class="col-md-8 border border-primary">
                    div1
                </div>
                </div>
            <div class="row">
                <div class="col-md-6 border border-primary">
                    div1
                </div>
                <div class="col-md-6 border border-primary">
                    div1
                </div>
            </div>
            <div class="row border">
                 <div class="col-md-12 border border-primary">
                    div1
                </div>
            </div>
        </div>
            </center>
    </form>
</body>
</html>
