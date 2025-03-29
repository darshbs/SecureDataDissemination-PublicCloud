<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
  
  <%
  
  String fname1="hcl";
  String pubkey1="12345";
		  
		   



		 
		 
		ResultSet rs=null;
		Blob file1=null;
		String a=null;
		String data1=null;

		try{
			Connection con=Databasecon.getConnection();
			String query="select  fcont,fname from file where fname='"+fname1+"' && pkey='"+pubkey1+"'";
		PreparedStatement pstmt=con.prepareStatement(query);
		rs=pstmt.executeQuery();
		if(rs.next())
		{

		file1 = rs.getBlob("fcont");
		a=rs.getString("fname");


		}
		byte[] bdata = file1.getBytes(1, (int)file1.length());
		data1 = new String(bdata);
		System.out.println("Filename "+a);
		System.out.println("File content :" +data1);
		}
		catch(Exception ex)
		{
			out.println("Error in connection : "+ex);
		}
  
  %>
  