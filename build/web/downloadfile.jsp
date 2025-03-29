<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,com.dbasecon.Databasecon" errorPage="" %>
<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.text.DateFormat"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.Date"%>

<%



String id=(String)session.getAttribute("id1");

System.out.println("Id : "+id);
String filname=request.getParameter("fname");


String pubkey=request.getParameter("pkey");
String tskey=request.getParameter("tskey");
Blob b=null;
String query=null;

//Time specific code
DateFormat df = new SimpleDateFormat("mm");
Date dateobj = new Date();
System.out.println(df.format(dateobj));
int x=Integer.parseInt(df.format(dateobj));
if(id!=null)
{
	query="select fcont, fname from file where fname='"+filname+"' && sid='"+id+"'";
}
else
{
if((x>=0) && (x<15))
{
	 System.out.println("Between 0 to 14");
	 query="select fcont, fname from file where fname='"+filname+"' && pkey='"+pubkey+"' && skey1='"+tskey+"'";  
	
}else if((x>=15) && (x<30))
{
	 System.out.println("Between 15 to 29");
	 query="select fcont, fname from file where fname='"+filname+"' && pkey='"+pubkey+"' && skey2='"+tskey+"'";
	 
}else if((x>=30) && (x<45))
{
	 System.out.println("Between 30 to 44");
	 query="select fcont, fname from file where fname='"+filname+"' && pkey='"+pubkey+"' && skey3='"+tskey+"'";
	 
}else if((x>=45) && (x<=59))
{
	 System.out.println("Between 45 to 59");
	 query="select fcont, fname from file where fname='"+filname+"' && pkey='"+pubkey+"' && skey4='"+tskey+"'";
	 
}
	
}



try
{
	
Connection con = Databasecon.getConnection();

PreparedStatement ps=con.prepareStatement(query);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
b = rs.getBlob("fcont");

String c=rs.getString("fname");
if(b != null)
{

String filename =c+".txt";
 
byte[] ba = b.getBytes(1, (int)b.length());
response.setContentType("application/text");
response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
OutputStream os = response.getOutputStream();
os.write(ba);
os.close();
 
if(id!=null)
{
	response.sendRedirect("auditview.jsp");
}
else
{
	response.sendRedirect("fileview.jsp");
	
}  

}
}
}
catch(Exception e)
{
out.println("Exception :"+e);
}

%>


 
<!-- 

  String log="Logfile";
String fle=fname1+"log"+".txt";

 
System.out.println("Filename : "+fle);
 
String logpath = getServletContext().getRealPath("")+ File.separator + log; 
	
File lg=new File(logpath);


String logfile=logpath+"/"+fle;

System.out.println("File path : "+logfile);
File logfile1= new File(logfile);
if(logfile1.exists())
{
	 
		
	FileInputStream fis = new FileInputStream(logfile);
	
	response.setContentType("application/txt");
	response.setHeader("Content-Disposition","attachment; filename=\""+fle+"\"");
	OutputStream fos=response.getOutputStream();
	byte[] bytes = new byte[64];
	int numBytes;
	while ((numBytes = fis.read(bytes)) != -1) 
	{
		fos.write(bytes, 0, numBytes);
	}
	fos.flush();
	fos.close();
	fis.close();
	
}   -->


