 <%@page import="java.sql.*"%>
<%

Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
//String sql = "SELECT * FROM `event_head` WHERE `PAGE`=2 ";
PreparedStatement ps1 = null;
String pageno;
String color = null;
String text = null;
String font = null;
//ResultSet rs= null;
 ps1=con.prepareStatement("select * from content WHERE PAGE='5'");
             
             ResultSet rs9=ps1.executeQuery();
             while(rs9.next())
             {
             pageno = rs9.getString(1).toString();
             color = rs9.getString(2).toString();
             text = rs9.getString(3).toString();
             font = rs9.getString(4).toString();
             
            
            
      

         }
%>

<html>
<head>
<title>Content Management System</title>
  
<head>
<body>
<h1>The content editor of page 5 </h1>
</br>
</br>
<form name="f1" action="c4.jsp">
Content : <input type="text" name="c1" value = <%= text%> >
</br>
<form name="f2" action="c4.jsp">
Color : <input type="text" name="c2" value = <%= color %> >
</br>
<form name="f3" action="c4.jsp">
style : <input type="text" name="c3" value = <%=font%> >
<input type="submit">
</form
    
   
</body>
</html> 