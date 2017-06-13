<%-- 
    Document   : Vista
    Created on : Jun 13, 2017, 5:35:02 AM
    Author     : walter
--%>

<%--
    Document   : listGamesStudentsView
    Created on : 18/05/2017, 07:00:35 PM
    Author     : Iron-kike
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="Modelo.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%String pw = "UtnCboV1";%>

﻿<!DOCTYPE html>
<html>
    <head>
        <title> Listado de elementos </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilo.css">
    </head>

    <body>
        <div class="div-text">
            <p class="text"> Este es un mensaje dentro de una etiqueta < p> para mostrar
            como es su funcionamiento y el uso de las hojas de estilos CSS. </p>
        </div>

        <% Modelo connect = new Modelo("jdbc:mysql://localhost/mydb", "root", pw); %>
        <% Statement querySelect = connect.connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); %>
        <% String query = "SELECT * FROM Solicitud;"; %> <%--WHERE Fecha_Respuesta = 'NO'--%>
        <% ResultSet list = querySelect.executeQuery(query); %>

        <h3> <%= list.getString(1) %> </h3>


    </body>
    
</html>
