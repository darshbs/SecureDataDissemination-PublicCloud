<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
 
 
 <!DOCTYPE html>
<html>
<head>
<title>Auditor File View</title>


<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/table.css" rel="stylesheet" type="text/css">
<link href="css/tabzoom.css" rel="stylesheet" type="text/css">

</head>
<body>
 
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a class="active" href="auditview.jsp">File View</a></li>
                                <li><a  href="users.jsp">User Details</a></li>
                            
				<li><a href="graph.jsp">Graph</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					<div class="CSSTableGenerator">
					<table>
					<tr>
						<td>SerNo</td>
						<td>File Name</td>
                                                <td>Group</td>
						<td>View</td>
						<td>Download</td>
							
					</tr>
					
					<%
					int count=1;
					Connection con=Databasecon.getConnection();
					String query="select * from file";
					PreparedStatement pstmt=con.prepareStatement(query);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
						%>
						<tr>
						
							<%-- <td><%=rs.getInt("sid")%></td> --%>
							<td><%=count++ %></td>
							<td><%=rs.getString("fname")%></td>
                                                        <td><%=rs.getString("groups")%></td>
							<td><a href="auditfcontview.jsp?id=<%=rs.getString("sid")%>&&fname1=<%=rs.getString("fname")%>">File View</a> </td>
							<td><a href="auditfdownload.jsp?id=<%=rs.getString("sid")%>&&fname1=<%=rs.getString("fname")%>">Download</a> </td>
							 
						 </tr>
					<%}
					
					%>
					
					
					</table>
					</div>
					
					 
				
				
						 
					 
					
					</p>



				</div>
			</div>
		</div>
		<div class="sidebar">
			<img src="images/textview.png">


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>