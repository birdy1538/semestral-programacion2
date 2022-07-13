<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<head>
  <meta charset="ISO-8859-1">
  <title>Exito_prog</title>
</head>

<!-- conexión con la base de datos  -->
<%@page import="java.sql.*" %>
<%
//declaración de variables y almacenamiento de valores
String nombre = request.getParameter("nombre");
String cedula = request.getParameter("cedula");
String fecha = request.getParameter("curso");

Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://backup-jose.cxkegqcerito.us-east-1.rds.amazonaws.com: 3306/semestrak","admin","90fff6ec397d0db0d225361b268c2f5d");
Statement dbstatement = dbconect.createStatement();
//inserción de valores a la base de datos
String insertarsql = "INSERT INTO programacion	 (Nombre, IDPersonal, Fecha) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
dbstatement.executeUpdate(insertarsql);
out.print("Registro exitoso, Muchas gracias.");
%>
<!-- botón de regreso a la página principal  -->
<a href="home.html">Aceptar</a>


</body>

</html>