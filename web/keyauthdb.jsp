<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>

<%


String skey1=null,pkey1=null;
String group=(String)session.getAttribute("group");
skey1=request.getParameter("skey");
pkey1=request.getParameter("pkey");
 
String msg="Invalid Keys";

try
{
Connection con=Databasecon.getConnection();

String query= "select Pubkey, Skey,email from registration where Pubkey='"+pkey1+"' && Skey='"+skey1+"'  ";
PreparedStatement pstmt=con.prepareStatement(query);

ResultSet rs=pstmt.executeQuery();

 
	if(rs.next())
	{
		System.out.println("Success");
                 session.setAttribute("email",rs.getString(3));
		RequestDispatcher rd=request.getRequestDispatcher("fileupload.jsp");
		rd.forward(request, response);
	}

	else
	{
		System.out.println("Failed");
		request.setAttribute("msg1",msg);
		RequestDispatcher rd=request.getRequestDispatcher("pubkey.jsp");
		rd.forward(request, response);
	}

}

catch(Exception e)
{
	e.printStackTrace();
}

%>