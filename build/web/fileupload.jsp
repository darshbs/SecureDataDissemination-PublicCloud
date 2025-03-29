<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<title>File Upload</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
 
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				 
				 
				 
				<li><a  class="active" href="fileupload.jsp">File Storage</a></li>
				<li><a href="fileview.jsp">File View</a></li>
				<!-- <li><a  href="timesecretkey.jsp">Timesecret Key</a></li> -->

				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					<%String group=(String)session.getAttribute("group");String email=(String)session.getAttribute("email");%>

					<p>
					 
					<form action="upload1.jsp" name="form" method="post">

						<table width="70%" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr>

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">File Storage</font></strong>
									</p>
								</th>

							</tr>

							<tr>
								<td width="35%">
									<p>
										<strong><font color="#333399" size="4">Public Key
									</p>
									</font></strong>
								</p>
								</td>
								<td><p>
										<input type="text" name="pkey" required>
									</p></td>
							</tr>

							<tr>
								<td align="center"><p><strong><font color="#333399" size="4">File Name</font></strong></p></td>
								<td><input type="text" name="fname" required></td>
							</tr>
                                                        <tr>
								<td align="center"><p><strong><font color="#333399" size="4">Group</font></strong></p></td>
                                                                <td><input type="text" name="group" readonly value="<%=group%>"></td>
							</tr>
							<tr>
								<td align="center"><p><strong><font color="#333399" size="4">File </font></strong></p></td>
								<td><input type="file" name="fcont" required></td>
							</tr>
							 

							<tr>
								<td height="36" align="right"><input type="reset"
									value="Reset" /></td>
								<td align="left"><input type="submit" value="Submit" /></td>

							</tr>

							
						</table>
					</form>

					</p>



				</div>
			</div>
		</div>
		<div class="sidebar" align="left">
			
			<table>
			<tr style="align:left">
				<td><font size="6" color="#FF0040"> <strong>Cloud Sharing</strong></font></td>
			</tr>
			 
			<tr style="align:left">
				<td><ul><a href="https://www.cloudme.com/en"><font size="5" color="#0000FF"><strong><li type="square">Cloud Me</li></strong></font></a></ul></td>
			</tr>
			</table> 
			 
			 
			<img src="images/fstore.png" >


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>