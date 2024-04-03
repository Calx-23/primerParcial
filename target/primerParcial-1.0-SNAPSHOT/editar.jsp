<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante reg = (Estudiante) request.getAttribute("miobjest");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .contenedor {
                width: 300px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                text-align: center;
            }
            h1 {
                text-align: center;
            }
            .centrado {
                display: flex;
                justify-content: center;
                align-items: center;
            }
        </style>
    </head>
    <body>
        <div class="contenedor">
            <p>PRIMER PARCIAL TEM-742<br>
                Nombre: Claudio Apaza Apaza<br>
                Carnet: 13021903</p>
        </div>
        <h1>Registro de estudiante</h1>
        <form action="MainServlet" method="post">
            <div class="centrado">
                <table>
                    <tr>
                        <td>ID (automatico):</td>
                        <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                    </tr>
                    <tr>
                        <td>Nombre del estudiante:</td>
                        <td><input type="text" name="nombre" value="<%= reg.getNombre()%>"></td>
                    </tr>
                    <tr>
                        <td>Primer parcial(sobre 30 puntos):</td>
                        <td><input type="text" name="p1" value="<%= reg.getP1()%>"></td>
                    </tr>
                    <tr>
                        <td>Segundo parcial(sobre 30 puntos):</td>
                        <td><input type="text" name="p2" value="<%= reg.getP2()%>"></td>
                    </tr>
                    <tr>
                        <td>Examen final (sobre 40 puntos):</td>
                        <td><input type="text" name="ef" value="<%= reg.getEf()%>"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="enviar"></td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
