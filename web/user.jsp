<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<% String msg=(String)request.getAttribute("msg1");%>
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="/CloudStorageAuditKey/index.html">Home</a></li> -->
				<li><a href="/CloudStorageAuditKey/auditor.jsp">Auditor</a></li>
				<li><a class="active" href="user.jsp">User</a></li>

				
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					<form action="userlogdb.jsp" name="form" method="post"
						onSubmit="return validation()">

						<table width="30" align="center" cellpadding="5px"
							cellspacing="5px">

							<tr>

								<th colspan="2" align="center">
									<p>
										<strong><font color="#D1102D" size="6">User Login</font></strong>
									</p>
								</th>

							</tr>

							<tr>
								<td>
									<p>
										<strong><font color="#333399" size="4">User_Name
									</p>
									</font></strong>
								</p>
								</td>
								<td><p>
										<input type="text" name="uname" required>
									</p></td>
							</tr>

							<tr>
								<td><p><strong><font color="#333399" size="4">Password</font></strong></p></td>
								<td><input type="password" name="upass" required></td>
							</tr>
 <tr>
          <td> <p> <strong><font color="#333399" size="4">Group</font></strong></p></td>
          <td> <select name="group" >
                  <option>----Choose----</option>
                  <option value="group1">Group-I</option>
                   <option value="group2">Group-II</option>
                    <option value="group3">Group-III</option>
              </select></td>
           
      </tr>
      
							  <%
        if(msg!=null)
        {
        	%>
        	<tr> 
            <td colspan="2"> <strong><font color="#7519D1" size="3"><%=msg%></font></strong></td>
           
            
            
  		</tr>
        	
      <%  }
            %>   

							<tr>
								<td height="36" align="right"><input type="reset"
									value="Reset" /></td>
								<td align="left"><input type="submit" value="Submit" /></td>

							</tr>

							<tr>
								<td></td>
								<td><p>
										New User <a href="reguser.jsp"><font size="2"
											color="#0000FF"><strong>Signup</strong></font></a>
									</p></td>

							</tr>
						</table>
					</form>

					</p>



				</div>
			</div>
		</div>
		<div class="sidebar" align="center">
			 <br  /> <br />
			<img src="../images/login_icon.gif">
		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>