<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils"%>

<%


String uname1=null,pass1=null,email1=null,city1=null,mobile1=null,group=null;

uname1=request.getParameter("uname");
pass1=request.getParameter("pass");
email1=request.getParameter("email");
group=request.getParameter("group");
mobile1=request.getParameter("mob");
city1=request.getParameter("city");

session.setAttribute("uname",uname1);
session.setAttribute("email",email1);

String skey=RandomStringUtils.random(10, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());


session.setAttribute("seckey",skey);

String msg="Registration Failed";

try
{
Connection con=Databasecon.getConnection();
PreparedStatement psmt=con.prepareStatement("insert into registration(Uname,Password,Email,Mobile,City,Skey,groups) values ('"+uname1+"','"+pass1+"','"+email1+"','"+mobile1+"','"+city1+"','"+skey+"','"+group+"')");
 
int x=psmt.executeUpdate();

           if(x==0)
                {
        	   System.out.println("Failed");
            	request.setAttribute("message", msg);
            	RequestDispatcher rd=request.getRequestDispatcher("reguser.jsp");
            	rd.forward(request,response);
            	
              	 
				}
            else
                {
            	System.out.println("Success");
            	RequestDispatcher rd=request.getRequestDispatcher("regsuccess.jsp");
            	rd.forward(request,response);
            	
				  
               }
}
catch(Exception e)
{
e.printStackTrace();
}
%>