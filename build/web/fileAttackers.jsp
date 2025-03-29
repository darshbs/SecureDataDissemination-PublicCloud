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
				<li><a  href="auditview.jsp">File View</a></li>
                                <li><a  href="users.jsp">User Details</a></li>
                                <li><a class="active" href="fileAttackers.jsp">File Attackers</a></li>
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
						<td>Username</td>
                                                <td>Email</td>
						<td>Mobile</td>
						<td>City</td><td>Group</td>
							
					</tr>
					
					<%
					int count=1;
					Connection con=Databasecon.getConnection();
					String query="select * from registration";
					PreparedStatement pstmt=con.prepareStatement(query);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
						%>
						<tr>
						
							<%-- <td><%=rs.getInt("sid")%></td> --%>
							<td><%=rs.getString("id") %></td>
							<td><%=rs.getString("uname")%></td>
                                                        <td><%=rs.getString("email")%></td>
                                                        <td><%=rs.getString("mobile")%></td>
                                                         <td><%=rs.getString("city")%></td>
                                                        <td><%=rs.getString("groups")%></td>
							 
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