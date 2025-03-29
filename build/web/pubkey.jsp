<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Key Auth</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%

String msg=(String)request.getAttribute("msg1");
 String group=(String)session.getAttribute("group");
%>
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				 
				 
				<li><a class="active" href="pubkey.jsp">Key</a></li>
				<!-- <li><a href="fileupload.jsp">File Storage</a></li>
				<li><a href="fileview.jsp">File View</a></li> -->
				<!-- <li><a href="timesecretkey.jsp">Timesecret Key</a></li> -->
				
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					<form action="keyauthdb.jsp" name="form" method="post"
						onSubmit="return validation()">

						<table width="70%" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr align="center">

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">Authentication Keys</font></strong>
									</p>
								</th>

							</tr>

							<tr>
								<td width="35%">
									<p>
										<strong><font color="#333399" size="4">Secret Key
									</p>
									</font></strong>
								</p>
								</td>
								<td><p>
										<input type="text" name="skey" required>
									</p></td>
							</tr>

							<tr>
								<td align="center"><p><strong><font color="#333399" size="4">Public Key</font></strong></p></td>
								<td><input type="text" name="pkey" required></td>
							</tr>

							 <%
          if(msg!=null)
        {  
        	%>
        	<tr align="center"> 
            <td colspan="2" align="center"> <p><strong><font color="#7519D1" size="5"><%=msg%></font></strong></p></td>
           
            
            
  		</tr>
        	
      <%    }  
            %>   

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
			<img src="images/authkey.png">


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>