<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
 
 <%
 
 String pubkey=request.getParameter("pkey");
 String adname=(String)session.getAttribute("adt");
 
 
 
 try
 {
	Connection con=Databasecon.getConnection();
	String query="select * from auditor where adtname='"+adname+"' && Pubkey='"+pubkey+"' ";
	PreparedStatement pstmt=con.prepareStatement(query);
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next())
	{	
		System.out.println("Success");
		RequestDispatcher rd=request.getRequestDispatcher("auditview.jsp");
		rd.forward(request, response);
	}
	else
	{
		System.out.println("failed");
		RequestDispatcher rd=request.getRequestDispatcher("auditpubkey.jsp");
		rd.forward(request, response);
	}
 }
catch(Exception e)
{
	e.printStackTrace();
}
 
 
 %>