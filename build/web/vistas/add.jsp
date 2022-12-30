<%-- 
    Document   : add
    Created on : 29 dic 2022, 19:29:36
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Producto</h1>
            <form action="Controlador">
                Nombre:<br>
                <input type="text" name="txtNombre"><br>
                Categoria:<br>
                <input type="text" name="txtCategoria"><br>
                Precio:<br>                
                <input type="text" name="txtPrecio"><br>
                <input type="submit" name="accion" value="Agregar"><br>
            </form>
        </div>
    </body>
</html>
