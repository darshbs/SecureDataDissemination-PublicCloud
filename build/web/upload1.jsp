<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Random"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.sql.*"%>
<%

try
{String email=(String)session.getAttribute("email");
      String pkey1=request.getParameter("pkey");
      String fname1=request.getParameter("fname");
            String group=request.getParameter("group");
     Class.forName("com.mysql.jdbc.Driver");
           Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudstoragekey", "root", "root");
           // List items = uploadHandler.parseRequest(request);
            String keystat="Key Not Gen";
            String fileName = fname1+".txt";
    
            FileInputStream fis = null;
                  File file = new File("C:/Documents/"+fileName);
                    fis = new FileInputStream(file);

            String sql = "insert into file(pkey,fname,fcont,status,groups) values(?,?,?,?,'"+group+"')";
         //   String sql = "insert into files (file,name,key_)values(?,?,?)";
            PreparedStatement pstm = con.prepareStatement(sql);
          //  while (itr.hasNext()) {

             
                 pstm.setString(1,pkey1);
                            
                      Random r = new Random();
            int ii = r.nextInt(10000000-500000)+500000;
            String k = ii+"";     
                pstm.setString(2, fname1);
                System.out.println(fname1);
              
             pstm.setAsciiStream(3, fis, (int) file.length());
             
                pstm.setString(4,keystat);
                 pstm.executeUpdate();
              
                session.setAttribute("nn", k);
         
				response.sendRedirect("fileview.jsp");
}catch(Exception ex)
{
    ex.printStackTrace();
           
}


%>