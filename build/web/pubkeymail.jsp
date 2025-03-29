<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>


<%

String uname1=(String)session.getAttribute("uname");
 
String email=(String)session.getAttribute("mail");
String group=(String)session.getAttribute("group");
String pubkey=RandomStringUtils.random(10, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());

System.out.println("Publick key :"+pubkey);

try
{
	Connection con=Databasecon.getConnection();
	
	String query="update registration set Pubkey='"+pubkey+"' where Uname='"+uname1+"' and Email='"+email+"' ";
	PreparedStatement pstmt=con.prepareStatement(query);
	int x=pstmt.executeUpdate();
	if(x>0)
	{
		
		
		
		response.sendRedirect("pubkey.jsp");

	
		
		}
	
	
}catch(Exception e)
{
	e.printStackTrace();
}




%>