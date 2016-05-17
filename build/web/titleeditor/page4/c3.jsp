
<%@page import="java.sql.*"%>
<%
Connection con = null;
con = DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
   String text=null;
String clr = null;
String styl = null;
text= request.getParameter("c1").toString();
clr = request.getParameter("c2").toString();
styl = request.getParameter("c3").toString();
String query = "update CONTENT set TEXT = ? where PAGE = ?";
String query1 = "update CONTENT set COLOR = ? where PAGE = ?";
String query2 = "update CONTENT set STYLE = ? where PAGE = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setInt   (2, 4);
      preparedStmt.setString(1, text);
       preparedStmt.executeUpdate();
      
      
      preparedStmt  = con.prepareStatement(query1);
      preparedStmt.setInt   (2, 4);
      preparedStmt.setString(1, clr);
      
      // execute the java preparedstatement
      preparedStmt.executeUpdate();
      
      preparedStmt  = con.prepareStatement(query2);
      preparedStmt.setInt   (2,4);
      preparedStmt.setString(1, styl);
      
 
      // execute the java preparedstatement
      preparedStmt.executeUpdate();
     

    // execute the java preparedstatement
     
       


response.sendRedirect("../../index.jsp");
%>



