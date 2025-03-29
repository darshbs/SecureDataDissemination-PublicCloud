<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
  <%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
 <%@ page language="java" import="java.io.*"%>
 
 <%
 
 String filname=request.getParameter("fname");
 
 String pubkey=request.getParameter("pbkey");
 String tskey1=request.getParameter("tskey");
 
 System.out.println("Filename :" +filname);
 System.out.println("Filename pub :" +pubkey);
 System.out.println("Filename tskey :" +tskey1);
 
 session.setAttribute("fname",filname);
 session.setAttribute("pkey",pubkey);
 session.setAttribute("tskey",tskey1);
 
 response.sendRedirect("fcontview.jsp");
 
 %>