<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>

<script language="javascript" type="text/javascript">
 

function popitupd(url) {
	newwindow=window.open(url,'download','height=300,width=500');
	if (window.focus) {newwindow.focus()}
	return false;
}
 
</script>


<title>File Download</title>


<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<%
 
 String fname=request.getParameter("fname");
session.setAttribute("filname",fname);
 String pubkey=request.getParameter("pkey");
 session.setAttribute("pkey",pubkey);
 
 System.out.println("File Name : "+fname);
 System.out.println("Public Key : "+pubkey);
 
 
 %>
 
 
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a href="fileupload.jsp">File Storage</a></li>
				<li><a href="fileview.jsp">File View</a></li>
		 		<li><a class="active" href="fdownload.jsp">Download</a></li>
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
								<td><p>
										<strong><font color="#333399" size="4">Public Key</font></strong>
									</p></td>
								<td><input type="text" name="pkey" value="<%=pubkey%>" readonly required > </td>
								<td rowspan="2">
								<input type="image" name="submit"src="../images/key12345.png" alt="Submit" onClick="return popitupd('filekey.jsp')" >
								</td>
							</tr>
							
							<tr>
								<td><p>
										<strong><font color="#333399" size="4">Time Secret Key </font></strong>
									</p></td>
								<td><input type="text" name="tskey" required></td>
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
		<br /> <br />
			 <img src="../images/download.png" >


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>