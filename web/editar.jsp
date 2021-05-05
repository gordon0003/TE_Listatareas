<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Ltarea"%>
<%
    Ltarea ltarea = (Ltarea)request.getAttribute("ltarea");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Nuevo tarea</h1>
        <form action="MainController" method="post">
            <table>
                <input type="hidden" name="id" value="${ltarea.id}">
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="${ltarea.tarea}"></td>
                </tr>
                
                <tr>
                    <td>Prioridad</td>
                    <td><input type="Number"  min="0" max="3"name="prioridad" value="${ltarea.prioridad}"></td>
                </tr>
                
                <tr>
                    <td>Completado</td>
                    <td><input type="Number" min="0" max="2" name="completado" value="${ltarea.completado}"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
