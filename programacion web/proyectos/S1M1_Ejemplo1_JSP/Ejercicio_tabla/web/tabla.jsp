<%-- 
    Document   : tabla
    Created on : Apr 15, 2024, 8:21:46 AM
    Author     : User
--%>


<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tabla de Estudiantes</title>
</head>
<style>
        body {
            text-align: center;
        }
        .contenedor {
            display: inline-block;
            text-align: center ;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }
        th, td {
            border: 3px solid black;
            padding: 8px;
            text-align: center;
        }
        th{color: gray;
        }
        h1{
           text-align: center;
           color: green;

        }
    </style>
<body>
    <div class='contenedor'>
        <h1>Tabla de Estudiantes</h1>
        <%@page import="pojo.Estudiantes"%>

        <table border="1">
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Sexo</th>
            </tr>
            <% ArrayList<Estudiantes> estudiantes = new ArrayList<>();
            // Agregar estudiantes a la lista
            estudiantes.add(new Estudiantes(1, "Ana", 15, 'F'));
            estudiantes.add(new Estudiantes(2, "Carlos", 18, 'M'));
            estudiantes.add(new Estudiantes(3, "Juan", 23, 'M'));
            estudiantes.add(new Estudiantes(4, "Verónica", 16, 'F'));
            estudiantes.add(new Estudiantes(5, "Lorena", 22, 'F'));
            estudiantes.add(new Estudiantes(6, "Marcos", 17, 'M'));

            // Iterar sobre la lista de estudiantes y mostrar los datos en la tabla
            for (Estudiantes estudiante : estudiantes) { %>
                <tr>
                    <td><%= estudiante.getCodigo() %></td>
                    <td><%= estudiante.getNombre() %></td>
                    <td><%= estudiante.getEdad() %></td>
                    <td><%= estudiante.getSexo() %></td>
                </tr>
            <% } %>
        </table>
    </div>

</body>
</html>
