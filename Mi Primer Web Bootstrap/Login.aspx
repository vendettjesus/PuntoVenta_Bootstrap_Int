<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
</head>




<body>
    <!-- jQuery , Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.1.slim.js" integrity="sha256-tXm+sa1uzsbFnbXt8GJqsgi2Tw+m4BLGDof6eUPjbtk=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <div class="container">
            <div runat="server" id="loginAlerta" class="alert alert-danger alert-dismissible fade show " role="alert">
                 <strong>Usuario y/o contraseña incorrectos!</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
             </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header text-center">
                            <strong>Bienvenido al Sistema</strong> 
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="UserName"><strong>Usuario</strong></label>
                                <asp:TextBox ID="TextNombre" runat="server" class="form-control" placeholder="Introduzca Su Usuario" required="required"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="Password"><strong>Contraseña</strong></label>
                                <asp:TextBox type="password" ID="TextPassword" runat="server" class="form-control" placeholder="Introduzca Su Contraseña" TextMode="Password" required="required"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" class="btn btn-primary float-md-end" OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
