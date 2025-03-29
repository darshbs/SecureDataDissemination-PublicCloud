<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
 


<title>File Download</title>


<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<%
 
 String id=request.getParameter("id");
session.setAttribute("id1",id);
 String fname=request.getParameter("fname1");
 session.setAttribute("fname",fname);
 
 System.out.println("File ID : "+id);
 System.out.println("File Name: "+fname);
 
 
 %>
 
 
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a href="auditview.jsp">File View</a></li>
				<li><a class="active" href="auditfdownload.jsp">File Download</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					
					<form action="downloadfile.jsp" name="form" method="get"
						onSubmit="return validation()">

						<table width="105%" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr>

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">File Download</font></strong>
									</p>
								</th>
								<th>
								</th>

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
									</p></td>
								<td></td>
							</tr>

							<tr>
								<td height="36" align="right"><input type="reset"
									value="Reset" /></td>
								<td align="left"><input type="submit" value="Download" /></td>

							</tr>

							
						</table>
					</form>
					
					
					
					
					
					 
				
				
						 
					 
					
					</p>



				</div>
			</div>
		</div>
		<div class="sidebar">
			 <img src="../images/download.png">


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>