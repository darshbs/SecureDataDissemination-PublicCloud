<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.text.DateFormat"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.Date"%>
 
<html>
<head>
<title>Auditor Key Auth</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<%
String fname1=null, id1=null;

fname1=(String)session.getAttribute("fname");
id1=(String)session.getAttribute("id");
//tskey1=(String)session.getAttribute("tskey");


String id=request.getParameter("id");
session.setAttribute("id",id);

String fname=request.getParameter("fname1");
session.setAttribute("filname",fname);

System.out.println("fileview id  : "+id1);
System.out.println("fileview filename : "+fname1);
   
%>
<%




   
 
ResultSet rs=null;
Blob file1=null;
String a=null;
String query=null;
 
String data1=null;





try{
Connection con=Databasecon.getConnection();
query="select  fcont,fname from file where fname='"+fname1+"' && sid='"+id1+"'";

PreparedStatement pstmt=con.prepareStatement(query);
rs=pstmt.executeQuery();
 
if(rs.next())
{

file1 = rs.getBlob("fcont");
a=rs.getString("fname");


}
byte[] bdata = file1.getBytes(1, (int)file1.length());
data1 = new String(bdata);
System.out.println("sssssss"+a);
System.out.println(data1);
}
catch(Exception ex)
{
	ex.printStackTrace();
}
   




%>

</head>
<body>


 
 
	<div id="header">
		<div>
			 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a href="auditview.jsp">File View</a></li>
				<li><a class="active" href="auditfcontview.jsp">File Cont</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div id="content">
			<div>
				<div>
				
				<form action="auditfilecontview.jsp" name="form" method="post"
						onSubmit="return validation()">
				
				<% if(fname!=null)
				{
					%>
				 
						<table width="70%" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr>

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">File View</font></strong>
									</p>
								</th>
								<th></th>

							</tr>

							<tr>
								<td>
									<p>
										<strong><font color="#333399" size="4">File Name 


										
									</p> </font></strong>
									</p>
								</td>
								<td><p>
										<input type="text" name="fname" value="<%=fname%>" required readonly>
									</p>
								</td>
								<td>
								</td>
								
							</tr>

							
 
 

							<tr>
								<td height="36" align="right"><input type="reset"
									value="Reset" /></td>
								<td align="left"><input type="submit" value="File View" /></td>
								<td>
								</td>

							</tr>

							
						</table>
						<%} %>
					</form>
			<%if(data1!=null)	
			{
				%>
			 
				  <table>
				  		
				  			<tr> 
                          	<td colspan="2" align="center"> <label ><strong><font color="#000099" size="4">File Name :</font></strong></label>  <%=fname1%></td>
                          	 
                        </tr>
						<tr> 
							<td></td>
                          	<!-- <td> <label ><strong><font color="#000099" size="4">File :</font></strong></label> </td> -->
                          	<td> <textarea readonly="readonly" name="content"  cols="100" rows="25" > <%=data1%></textarea></td>
                        </tr>
				  
						<%-- <tr> 
                          	<td> <label ><strong><font color="#000099" size="4">File :</font></strong></label> </td>
                          	<td> <textarea readonly="readonly" name="content"  cols="100" rows="25" > <%=data1%></textarea></td>
                        </tr> --%>
               	</table>
				<%} %>  
					
					
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">
			
					<p>
					 &copy; Copyright 2021. All Rights Reserved
					</p>
				 
		</div>
	</div>
</body>
</html>