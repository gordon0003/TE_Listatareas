<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Ltarea"%>
<%@page import="java.util.List"%>
<%
    List<Ltarea> lista = (List<Ltarea>) request.getAttribute("lista");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de tareas</h1>
        <p> <a href="MainController?op=nuevo">Nuevo </a></p>
        <table border="1" cellspacing="0" RULES="cols">
            <tr style="background-color:#DCDCDC">
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">

                <tr>
                    <td>${item.tarea}</td
                    
                    <td><c:if test = "${item.prioridad == 1}">
                        <c:set var = "alto" scope = "session" value = "Alto"/>
                        <td>${alto}</td> </c:if>
                    <c:if test = "${item.prioridad == 2}">
                        <c:set var = "medio" scope = "session" value = "Medio"/>
                        <td>${medio}</td> </c:if>
                    <c:if test = "${item.prioridad == 3}">
                        <c:set var = "bajo" scope = "session" value = "Bajo"/>
                        <td>${bajo}</td> </c:if></td>
                    
                    <c:if test = "${item.completado == 1}">
                        <td><input type="checkbox" checked="checked"></td> </c:if>
                        <c:if test = "${item.completado == 2}">
                        <td><input type="checkbox" ></td> </c:if>
                    
                        <td><a href="MainController?op=eliminar&id=${item.id}">Eliminar</a></td>
                    <td><a href="MainController?op=modificar&id=${item.id}">Modificar</a></td>
                </tr>
            </c:forEach>
    </body>
</html>
