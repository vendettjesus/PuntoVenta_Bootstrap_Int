<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestra.Master" CodeBehind="Ventas.aspx.cs" Inherits="Mi_Primer_Web_Bootstrap.Ventas" %>

<asp:Content ID="VentasMenu" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div> 
       
        <div class="row">

                <div id="list-example" class="list-group col-md-6">
                <asp:ListBox ID="ListBox2" runat="server" ></asp:ListBox>

                   <div class="container col-md-6 mt-5">
        <div class="row align-items-center">
            <div class="col-xs-12 col-sm-6 col-md-3 fundo-mod margem borda">
                    
                <div class="justify-content-center centro">
                    
                    <table class="table table-dark">
                        <tr>
                            
                            <td colspan="4" ><div id="historico" onclick="mostrarHora();"></div></td>
                        </tr>
                        <tr>
                            
                            <td colspan="4"><input type="text" name="visor" id="visor" class="col-xs-12 col-sm-12 col-md-12" /></td>
                        </tr>
                        <tr>
                            <td><input type="button" id="botao7" value="7" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao8" value="8" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao9" value="9" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao/" value="/" class="btn btn-info mesmo-tamanho" onclick="btn_divide(value);" /></td>
                        </tr>
                        <tr>
                            <td><input type="button" id="botao4" value="4" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao5" value="5" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao6" value="6" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao*" value="*" class="btn btn-info mesmo-tamanho" onclick="btn_multiplica(value);"/></td>
                        </tr>
                        <tr>
                            <td><input type="button" id="botao1" value="1" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao2" value="2" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao3" value="3" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao-" value="-" class="btn btn-info mesmo-tamanho" onclick="btn_subtrai(value);" /></td>
                        </tr>
                        <tr>
                            <td><input type="button" id="botao0" value="0" class="btn btn-secondary mesmo-tamanho" onclick="botao(value);"/></td>
                            <td><input type="button" id="botao=" value="=" class="btn btn-info mesmo-tamanho" onclick="btn_igual(value);"/></td>
                            <td><input type="button" id="botaoC" value="C" class="btn btn-danger mesmo-tamanho" onclick="reset(value);"/></td>
                            <td><input type="button" id="soma" value="+" class="btn btn-info mesmo-tamanho" onclick="btn_soma(value);"/></td>
                        </tr>
                    </table>
                </div>
                
            </div>
        </div>
    </div>
            
            
            </div>

            <div class="col-md-6 p-1">
            <button id="producto1" runat="server" OnClick='producto1_Click' type="button"> <img src="https://cdn-icons-png.flaticon.com/512/3082/3082025.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/1461/1461643.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/1237/1237004.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/1651/1651831.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/110/110496.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://www.pngplay.com/wp-content/uploads/9/Wheat-Bread-No-Background.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/552/552680.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/184/184517.png" height ="80" width="100" /></button>

            <button type="button"> <img src="https://www.pngkit.com/png/detail/375-3750663_tecate-png-tecate-beer.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/94/94279.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://freepngdesign.com/content/uploads/images/p-2743-3-bohemia-beer-cerveza-logo-png-transparent-logo-574188492957.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Uuz5BsPqKECg373FViD-jx922dFss8RCLvWq42Q652XyKWmpyAfNu5JxH2W4QK9uCbs&usqp=CAU" height ="80" width="100" /></button>
            <button type="button"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Jarritos_Logo.svg/800px-Jarritos_Logo.svg.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://seeklogo.com/images/T/takis-morado-logo-F7FC6138AC-seeklogo.com.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://m.media-amazon.com/images/I/61jIg6p2llL._AC_SX679_.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/4773/4773427.png" height ="80" width="100" /></button>

            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/119/119372.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://www.sams.com.mx/images/product-images/img_small/000879036s.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://w7.pngwing.com/pngs/148/236/png-transparent-drink-mix-juice-tang-logo-tang-food-text-label.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/527/527658.png" height ="80" width="100" /></button>
            <button type="button"> <img src="https://img.freepik.com/vector-premium/ilustracion-vectorial-plato-o-tazon-sopa-frijol-picante-comida-mexicana-aislada-blanco_364586-685.jpg?w=2000" height ="80" width="100" /></button>
            <button type="button"> <img src="https://www.marialabonita.com/wp-content/uploads/2018/07/Salsa-Casera-Mexicana-La-Costena-Frasco-250g.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://static.vecteezy.com/system/resources/thumbnails/010/332/233/small/canned-tuna-icon-isolated-contour-symbol-illustration-vector.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://lagranbodega.vteximg.com.br/arquivos/ids/280613-600-600/7501020513134.jpg?v=637362997463570000" height ="80" width="100" /></button>
            <button type="button"> <img src="https://s.cornershopapp.com/product-images/335524.jpg?versionId=AazTiQ8YsyqwAdIMuvPNt6LDWnWfNBSF" height ="80" width="100" /></button>
            <button type="button"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6tKySkXZOYpw2QmYhKRph9LGWcedXVSBxWw&usqp=CAU" height ="80" width="100" /></button>
            <button type="button"> <img src="https://www.shutterstock.com/image-vector/classic-pack-wooden-matches-light-260nw-1619287876.jpg" height ="80" width="100" /></button>
            <button type="button"> <img src="https://cdn-icons-png.flaticon.com/512/2689/2689423.png" height ="80" width="100" /></button>

            </div>

            <script>
                function producto(fruta,cantidad) {
                    console.log("Producto" + fruta + " " + cantidad);
                    alert("Producto   " + fruta + " " + cantidad)
                }
            </script>

        </div>
    </div>
</asp:Content>
