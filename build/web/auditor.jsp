<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
<%
	String msg = (String) request.getAttribute("msg1");
%>
</head>
<body>
	<div id="header">
		<div>
			<p class="sp">
				Enabling Cloud Storage Auditing with <br />Key-Exposure Resistance
			</p>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a class="active" href="auditor.jsp">Auditor</a></li>
				<li><a href="user.jsp">User</a></li>

				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					<p>
					<form action="auditorlogdb.jsp" name="form" method="post"
						onSubmit="return validation()">

						<table width="30" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr>

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">Auditor
												Login</font></strong>
									</p>
								</th>

							</tr>

							<tr>
								<td>
									<p>
										<strong><font color="#333399" size="4">Auditor_Name
	
									</p> </font></strong>
									</p>
								</td>
								<td><p>
										<input type="text" name="adname" required>
									</p></td>
							</tr>

							<tr>
								<td><p>
										<strong><font color="#333399" size="4">Password</font></strong>
									</p></td>
								<td><input type="password" name="adpass" required></td>
							</tr>

							<%
								if (msg != null) {
							%>
							<tr>
								<td colspan="2">
									<p>
										<strong><font color="#7519D1" size="3"><%=msg%></font></strong>
									</p>
								</td>
							</tr>

							<%
								}
							%>

							<tr>
								<td height="36" align="right"><input type="reset"
									value="Reset" /></td>
								<td align="left"><input type="submit" value="Submit" /></td>

							</tr>

							<tr>
								<td colspan="2" width="250">
								<table bgcolor="#66CD00" width="100%">
						<tr>
							<font>
								<td><marquee scrollamount="10" width="50">
										<font color="#DF0101" size="5"><strong>&lt;&lt;&lt;</strong></font>
									</marquee><font color="#DF0101" size="4"><strong>Cloud
											Storage Auditing </strong></font> <marquee scrollamount="10" direction="right"
										width="50">
										<font color="#DF0101" size="5"><strong>&gt;&gt;&gt;</strong></font>
									</marquee></td>
							</font>
						</tr>
					</table>
								
								
								
								</td>
							</tr>

						</table>
					</form>

				</p>

			</div>
			</div>
		</div>
		<div class="sidebar">
			 <br />

			<img src="/CloudStorageAuditKey/images/auditor1.png">
		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>