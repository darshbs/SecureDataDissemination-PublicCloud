 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>User Registration</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		<div>
		 <h1 align="center"><font size="6" color="brown"> <b>Secure Data Group Sharing and Dissemination with Attribute and Time Conditions in Public Cloud </font></h2>
			<ul class="navigation">
				<!-- <li><a href="css/tabzoom.cssindex.html">Home</a></li> -->
				
				<li><a class="active" href="user.jsp">User</a></li>

				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div>
				<div>
					

					<p>
					<form action="userregdb.jsp" name="form" method="post"
						onSubmit="return validation()">

						<table width="60%" align="center" cellpadding ="5px" cellspacing="5px" > 
   
      
    <tr> 
       
          <th colspan="2" align="center" > <p><strong><font color="#D1102D"  size="6">User Registration </font></strong></p></th>
           
        </tr>
        
        <tr> 
          <td> <p><strong><font color="#333399" size="4">User_Name</font></strong></p></td>
          <td><input type="text" name="uname" required></td>
		</tr>
		
        <tr>
          <td> <p> <strong><font color="#333399" size="4">Password</font></strong></p></td>
          <td> <input  type="password" name="pass" required></td>
           
      </tr>
      <tr>
          <td> <p> <strong><font color="#333399" size="4">Email</font></strong></p></td>
          <td> <input  type="text" name="email" required></td>
          
      </tr>
      
      <tr>
          <td> <p> <strong><font color="#333399" size="4">Mobile</font></strong></p></td>
          <td> <input  type="text" name="mob" required></td>
          
      </tr>
      
        
      
      <tr>
          <td> <p> <strong><font color="#333399" size="4">City</font></strong></p></td>
          <td> <input  type="text" name="city" required></td>
           
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
      
      <tr> 
          <td height="36" align="right"><input type="reset" value="Reset" /></td>
          <td align="left"><input type="submit" value="Submit" /></td>
           
  	    </tr>
      
    </table> 
					</form>

					</p>



				</div>
			</div>
		</div>
		<div class="sidebar">
			 <br /><br />
			 <img src="../images/Registration1.gif" >


		</div>
	</div>
	<div id="footer">
		<div class="abc" align="center">

			<p>&copy; Copyright 2021. All Rights Reserved</p>

		</div>
	</div>
</body>
</html>