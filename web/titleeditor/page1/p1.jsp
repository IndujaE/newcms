
<%@page import="java.sql.*"%>
<%

Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
   
String text=request.getParameter("c1");
String clr = request.getParameter("c2");
String styl = request.getParameter("c3");
String query = "update TITLE set TEXT = ? where PAGE = ?";
String query1 = "update TITLE set COLOR = ? where PAGE = ?";
String query2 = "update TITLE set STYLE = ? where PAGE = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setInt   (2, 1);
      preparedStmt.setString(1, text);
      preparedStmt.executeUpdate();
      
      preparedStmt  = con.prepareStatement(query1);
      preparedStmt.setInt   (2, 1);
      preparedStmt.setString(1, clr);
      
 
      // execute the java preparedstatement
      preparedStmt.executeUpdate();
      
      preparedStmt  = con.prepareStatement(query2);
      preparedStmt.setInt   (2, 1);
      preparedStmt.setString(1, styl);
      
 
      // execute the java preparedstatement
      preparedStmt.executeUpdate();
       


response.sendRedirect("../../index.jsp");
%>



