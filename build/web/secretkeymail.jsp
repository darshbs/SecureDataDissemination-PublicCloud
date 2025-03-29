<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.util.Date,java.text.SimpleDateFormat"%>
<%@ page import ="java.text.ParseException"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils"%>



<%

//session.setAttribute("uname",uname1);
//session.setAttribute("email",email1);
String uname1=(String)session.getAttribute("uname");
 
String email=(String)session.getAttribute("email");

String seckey=(String)session.getAttribute("seckey");

 

System.out.println("Secret Key :"+seckey);

		 	
		String host="", user="", pass="";

		String tomail=email;
		System.out.println("tomail : "+tomail);

		

		
		  
		%> 
		
		<script type="text/Javascript" language="javascript">

		alert("Secret Key Sent to your Mail");

		window.location.assign("regsuccess.jsp"); 
		
		</script>  

	<%	 

		
		response.sendRedirect("user.jsp");

		

%>