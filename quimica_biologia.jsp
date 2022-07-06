<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Exito_qb</title>
</head>

<!-- coneccion con la base de datos  -->
<%@page import="java.sql.*" %>
<%
//declaracion de variables y almacenamos los valores 
String nombre = request.getParameter("nombre");
String cedula = request.getParameter("cedula");
String fecha = request.getParameter("curso");

Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://backup-jose.cxkegqcerito.us-east-1.rds.amazonaws.com: 3306/semestrak","admin","90fff6ec397d0db0d225361b268c2f5d");
Statement dbstatement = dbconect.createStatement();
//insercion de valores a labase de datos
String insertarsql = "INSERT INTO quimica_biologia	 (Nombre, IDPersonal, Fecha) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
dbstatement.executeUpdate(insertarsql);
out.print("Registro exitoso, Muchas gracias.");
%>
<!-- boton de regreso a la pagina principal  -->
<a href="home.html">Aceptar</a>


</body>

</html>