<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.util.Date,java.text.SimpleDateFormat"%>
<%@ page import ="java.text.ParseException"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
<%@ page language="java" import="java.text.DateFormat"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.Date"%>
 
 
 <html>
<head>
<title>File Key</title>
</head>
<body bgcolor="#FF9900">
 <%
 /* session.setAttribute("filname",fname);
 String pubkey=request.getParameter("pkey");
 session.setAttribute("pkey",pubkey);
  */
 String email=(String)session.getAttribute("email");
 String fname=(String)session.getAttribute("filname");
 String pubkey=(String)session.getAttribute("pkey");
 
 System.out.println(" filekey File Name : "+fname);
 System.out.println("filekey Public Key : "+pubkey);
 
 String key1=null,key2=null,key3=null,key4=null;
 
 String timekey=null;
 
 String group=(String)session.getAttribute("group");
 
 
 try
 {
	 Connection con=Databasecon.getConnection();
	 String query="select * from file where fname='"+fname+"' && pkey='"+pubkey+"' and groups='"+group+"'";  
	 PreparedStatement pstmt=con.prepareStatement(query);
	 ResultSet rs=pstmt.executeQuery();
	 if(rs.next())
	  {
		 	key1=rs.getString("skey1");
		  	System.out.println("key1 "+key1);
		  	key2=rs.getString("skey2");
		  	System.out.println("key2 "+key2);
		  	key3=rs.getString("skey3");
		  	System.out.println("key3 "+key3);
		  	key4=rs.getString("skey4");
		  	System.out.println("key4 "+key4);
		  
	  }
 }catch(Exception e)
 {
	 e.printStackTrace();
 }
 
//Time specific code
DateFormat df = new SimpleDateFormat("mm");
Date dateobj = new Date();
System.out.println(df.format(dateobj));
int x=Integer.parseInt(df.format(dateobj));

if((x>=0) && (x<15))
{
	 System.out.println("Between 0 to 14");
	 timekey=key1;
	 System.out.println("key1 "+key1);
	 System.out.println("Timekkey "+timekey);
}else if((x>=15) && (x<30))
{
	 System.out.println("Between 15 to 29");
	 timekey=key2;
	 System.out.println("key2 "+key2);
	 System.out.println("Timekkey "+timekey);
}else if((x>=30) && (x<=44))
{
	 System.out.println("Between 30 to 44");
	 timekey=key3;
	 System.out.println("key3 "+key3);
	 System.out.println("Timekkey "+timekey);
}else
{
	 System.out.println("Between 45 to 59");
	 timekey=key4;
	 System.out.println("key4 "+key4);
	 System.out.println("Timekkey "+timekey);
}
 
 
 %>
 <%
//String uname1=(String)session.getAttribute("uname");
 
//String email=(String)session.getAttribute("email");

//String seckey=(String)session.getAttribute("seckey");

 



		 	
		String host="", user="", pass="";

		String tomail=email;
		System.out.println("tomail : "+tomail);

		String subjt="Secret Key";

		String msgbdy="Your Time Specified Based SecretKey : ";
		 
		String subj=subjt;

		String mailbody=msgbdy+timekey;

		host ="smtp.gmail.com"; //"smtp.gmail.com";

		user ="cspmanageralerts@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

		pass ="Ramu@753"; //Your gmail password

		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

		String to =tomail; // out going email id

		//String from ="chennaisunday.cs0177@gmail.com"; //Email id of the recipient

		String from = user;
		String subject =subj;

		String messageText=mailbody;

		boolean sessionDebug = true;

		Properties props = System.getProperties();
		props.put("mail.host", host);
		props.put("mail.transport.protocol.", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(sessionDebug);
		Message msg = new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(to)};
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		//msg.setText(messageText);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text
		Transport transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);

		try {
		transport.sendMessage(msg, msg.getAllRecipients());
		out.println("<h1>File Key Send to your MailId</h1>");
		
		//response.sendRedirect("regsuccess.jsp");
		//System.out.println("<h1>PubKey Send</h1>"); // assume it was sent

		  
		 
		
		/* <script type="text/Javascript" language="javascript">

		alert("Secret Key Sent to your Mail");

		window.location.assign("regsuccess.jsp"); 
		
		</script>   */

	  

		}
		catch (Exception err) {

		System.out.println("Public Key Not sent");// assume it’s a fail
		response.sendRedirect("user.jsp");

		}
		transport.close();
 
 
 %>
 
 </body>
 </html>
 