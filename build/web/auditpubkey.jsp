<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Auditor Key Auth</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
 
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				 
				 
				<li><a class="active" href="auditpubkey.jsp">Pub Key</a></li>
				 

				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					<form action="auditkeyauthdb.jsp" name="form" method="post"
						onSubmit="return validation()">

						<table width="70%" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr align="center">

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">Auditor Public Key</font></strong>
									</p>
								</th>

							</tr>

							
							<tr>
								<td align="center"><p><strong><font color="#333399" size="4">Public Key</font></strong></p></td>
								<td><input type="text" name="pkey" required></td>
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
		<div class="sidebar">
		 
			<img src="images/images123.png">

		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>