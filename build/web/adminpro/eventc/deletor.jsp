<%-- 
    Document   : deletor
    Created on : 18 May, 2016, 8:29:21 PM
    Author     : radar
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            PreparedStatement ps = null;

 String getd=null;
 String name= request.getParameter("dlt");
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
 ps=con.prepareStatement("DELETE FROM eventadd where EVENT_NAME=?");
            ps.setString(1, name);
      //preparedStmt.executeUpdate();
             ps.executeUpdate();
            // FileOutputStream fout=new FileOutputStream("C:\\Users\\radar\\Desktop\\finalproj\\newcms\\web\\events\\"+name+".txt");  
           //  fout.
        //     String fileName=getServletContext().getRealPath("C:\\Users\\radar\\Desktop\\finalproj\\newcms\\web\\events\\"+name+".txt");
//// If you know path of the file, can directly put path instead of 
///filename e.g c:/tomcat/webapps/jsp/myFile.txt
//File f=new File(fileName);

boolean success = (new File
         ("C:\\Users\\radar\\Desktop\\finalproj\\newcms\\web\\events\\"+name+".txt")).delete();
            %>
    </body>
</html>
