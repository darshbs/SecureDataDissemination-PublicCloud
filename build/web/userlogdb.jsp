 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>

<%


String uname1=null,pass1=null,group=null;

uname1=request.getParameter("uname");
pass1=request.getParameter("upass");
group=request.getParameter("group");
String msg="Invalid User Name and Password";

try
{
Connection con=Databasecon.getConnection();

String query= "select Uname,Password,Email from registration where Uname='"+uname1+"' and Password='"+pass1+"' and groups='"+group+"'  ";
PreparedStatement pstmt=con.prepareStatement(query);

ResultSet rs=pstmt.executeQuery();

 
	if(rs.next())
	{
		System.out.println("Success");
	
		session.setAttribute("uname", uname1);
		String mail1=rs.getString("Email");
		session.setAttribute("mail",mail1);
		 session.setAttribute("group",group);
		RequestDispatcher rd=request.getRequestDispatcher("pubkeymail.jsp");
		rd.forward(request, response);
	}

	else
	{
		System.out.println("Failed");
		request.setAttribute("msg1",msg);
		RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
		rd.forward(request, response);
	}

}

catch(Exception e)
{
	e.printStackTrace();
}

%>