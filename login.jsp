<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<head>
		<meta charset="ISO-8859-1" />
		<title>Exito_Login</title>
	</head>
	<body>
		<%@page import="java.sql.*" %> <% // declaración de variables y almacenamiento de valores
		los valores String nombre = request.getParameter("nombre"); String
		contrasenia = request.getParameter("contrasenia"); //Conexión a la base de datos
		datos Class.forName("com.mysql.jdbc.Driver"); Connection dbconect =
		DriverManager.getConnection("jdbc:mysql://backup-jose.cxkegqcerito.us-east-1.rds.amazonaws.com:
		3306/semestrak","admin","90fff6ec397d0db0d225361b268c2f5d"); try{
		PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM
		usuario WHERE NOMBRE=? AND CONTRASENIA=?"); consultaP.setString(1, nombre);
		consultaP.setString(2, contrasenia); ResultSet resultado =
		consultaP.executeQuery(); if (resultado.next()) out.print("USUARIO
		CORRECTO"); else out.print("Error de login - USUARIO INCORRECTO
		:"+nombre+contrasenia); } catch (Exception e){ out.println("--ERROR--<br />");
		out.println("--Consulta Invalida--<br />"); } %>
	</body>
</html>
