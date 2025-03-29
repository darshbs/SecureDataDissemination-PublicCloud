<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>

<%

String adnam=null,adpass=null;

adnam=request.getParameter("adname");
session.setAttribute("adt",adnam);
adpass=request.getParameter("adpass");
 
String msg="Invalid Name and Password";

try
{
	Connection con=Databasecon.getConnection();
	String query="select *from auditor where adtname='"+adnam+"' && adtpwd='"+adpass+"'";
	PreparedStatement pstmt=con.prepareStatement(query);
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next())
	{	
		System.out.println("Success");
		RequestDispatcher rd=request.getRequestDispatcher("auditpubkey.jsp");
		rd.forward(request, response);
	}
	else
	{
		System.out.println("Failed");
		request.setAttribute("msg1",msg);
		RequestDispatcher rd=request.getRequestDispatcher("auditor.jsp");
		rd.forward(request, response);
	}


}catch(Exception ie)
{
	ie.printStackTrace();
}
 
	/* if((adnam!=null && adnam.equals("auditor"))&&(adpass!=null && adpass.equals("auditor")))
	{
	
		 
		RequestDispatcher rd=request.getRequestDispatcher("auditpubkey.jsp");
		rd.forward(request, response);
	}

	else
	{
		System.out.println("Failed");
		request.setAttribute("msg1",msg);
		RequestDispatcher rd=request.getRequestDispatcher("auditor.jsp");
		rd.forward(request, response);
	} */

 

%>