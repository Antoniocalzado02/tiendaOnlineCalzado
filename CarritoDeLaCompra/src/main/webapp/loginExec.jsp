<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.miTienda.User.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="usuarioBD" class="com.miTienda.Crud.CrudUser"></jsp:useBean> 
<jsp:useBean id="usuario" class="com.miTienda.User.User"></jsp:useBean>  
<title>Insert title here</title>
</head>
<body>
<%
		String usuarioCadena= request.getParameter("usuario");
		String password= request.getParameter("password");
   		
   		List<User>listaUsuarios=usuarioBD.loadList();
   		for(User u: listaUsuarios){
   			if (usuarioCadena.equals(u.getNombre())){
   				usuario=usuarioBD.readUser(usuarioCadena);
   			}
   		}

	if(password.equals(usuario.getContrasena())){
		System.out.println("Si");
		HttpSession sesion=request.getSession();
		sesion.setAttribute("login", "True");
		sesion.setAttribute("usuario", usuarioCadena);
		String redirect="mainCatalogo.jsp";
		 response.sendRedirect(redirect);
	}
	else{
		 response.sendRedirect("errorPage.html");
	} 
%>



</body>
</html>