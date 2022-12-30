<%-- 
    Document   : listar
    Created on : 29 dic 2022, 19:29:28
    Author     : Agustin
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
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
            <h1>Productos</h1>
            <a href="Controlador?accion=add">Agregar nuevo producto</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Categoria</th>
                        <th>Precio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    ProductoDAO dao = new ProductoDAO();
                    List<Producto>list = dao.listar();
                    Iterator<Producto>iter=list.iterator();
                    Producto produc=null;
                    while(iter.hasNext()){
                        produc=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%=produc.getId()%></td>
                        <td><%=produc.getNombre()%></td>
                        <td><%=produc.getCategoria()%></td>
                        <td><%=produc.getPrecio()%></td>
                        <td>
                            <a href="Controlador?accion=editar&id=<%=produc.getId()%>">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%=produc.getId()%>">Eliminar</a>
                        </td>
                    </tr>  
                    <%}%>
                </tbody>

            </table>
        </div>
    </body>
</html>
