<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Auditor Key Auth</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
 <%
 
 String id=(String)session.getAttribute("id");
 String fname=request.getParameter("fname");
 
 session.setAttribute("id",id);
 session.setAttribute("fname",fname);
 response.sendRedirect("auditfcontview.jsp");
 %>