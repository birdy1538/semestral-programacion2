<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Exito</title>
</head>

<!-- coneccion con la base de datos  -->
<%@page import="java.sql.*" %>
<%
// declaracion de variables y almacenamos los valores 
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String edad= request.getParameter("edad");
String contrasenia = request.getParameter("contrasenia");

Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://backup-jose.cxkegqcerito.us-east-1.rds.amazonaws.com: 3306/semestrak","admin","90fff6ec397d0db0d225361b268c2f5d");
Statement dbstatement = dbconect.createStatement();
//insercion de valores a la base de datos
String insertarsql = "INSERT INTO usuario (Nombre, Apellido, Edad, Contrasenia) VALUES ('"+nombre+"','"+apellido+"','"+edad+"','"+contrasenia+"')";
dbstatement.executeUpdate(insertarsql);
out.print("Registro exitoso, Muchas gracias.");
%>
<!-- boton de regreso a la pagina principal  -->
<a href="login_user.html">Entendido</a>


</body>

</html>