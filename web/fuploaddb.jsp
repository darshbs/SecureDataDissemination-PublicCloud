<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.*"%>
<%@page import="java.text.*" %>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*" %>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page language="java" import="com.dbasecon.Databasecon" %>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%	    
	 
		Connection con = null;  
		Statement stmt=null;
		String fstore ="FileStore";
		String keystat="Key Not Gen";
  
		ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		String dirName = getServletContext().getRealPath("")+ File.separator + fstore; 
	  
		File fold=new File(dirName);
		
		if(!fold.exists())
		{
			fold.mkdir();
		}
	            
		System.out.println("Directory Name " +dirName);
		String paramname=null;
		String size=null;
	 
		String image=null;
		 
		String fname1=null,filecnt1=null,pkey1=null;
		long size_kb=0;
		FileInputStream fs=null;
 
		File file1 = null;
		try 
		{
			MultipartRequest multi = new MultipartRequest(request, dirName, 10*1024 * 1024);
			java.util.Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
			
								
				if(paramname.equalsIgnoreCase("pkey"))
				{
					pkey1=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("fname"))
				{
					fname1=multi.getParameter(paramname);
				}
				 
				
				if(paramname.equalsIgnoreCase("fcont"))
				{
					filecnt1=multi.getParameter(paramname);
					System.out.println("File Data "+filecnt1);
				}
				
			}
					
		int f = 0;
		Enumeration files = multi.getFileNames();	
		while (files.hasMoreElements()) 
		{
			paramname = (String) files.nextElement();
			if(paramname.equals("d1"))
			{
				paramname = null;
			}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			 
			String fPath = context.getRealPath(""+"/"+fstore+"/"+image);//\\Gallery\\
			System.out.println("Filepath :"+fPath);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		int i = 0;
        while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
						
			long file_size = file1.length();
			size_kb=file_size/1024;
			size=size_kb+"kb".toString();
			
			

                 }
			
    	}
         
			System.out.println(size_kb);
			fis.close();
				
		}		
	}
///Inserting in Database
	        FileInputStream fs1 = null;
  		
			con = Databasecon.getConnection();  
	
			PreparedStatement ps=con.prepareStatement("insert into file(pkey,fname,fcont,status) values(?,?,?,?)");
 				
				ps.setString(1,pkey1);
			 	
				ps.setString(2,fname1);
				ps.setBinaryStream(3, (InputStream)fs, (int)(file1.length()));
				ps.setString(4,keystat);
				 
				
     
	   if(f == 0)
		ps.setObject(2,null);
		else if(f ==2)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(2,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x>0)
			{
				
				System.out.println("Succes");
				response.sendRedirect("fileview.jsp");
			}
			else
				{
				
				System.out.println("failed");
				response.sendRedirect("fileupload.jsp");
				}
		}
	catch(Exception e2)
	{
		e2.printStackTrace();
		out.println(e2.getMessage());
	}
	
 %>