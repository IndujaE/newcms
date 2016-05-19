
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Details</title>
</head>
<body>
    
<%

String url="jdbc:derby://localhost:1527/VAJRA";
String username="superuser";
String password="superuser";
String query="select * from SUPERUSER.USER_REG ";
Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
if(!rs.next()) {
                out.println("Sorry, could not find that user_reg. ");
            } else {
        %>
<BR>
<BR>
<CENTER>
        <TABLE BORDER="1">
            <tr>
<td>FNAME</td>
<td>LNAME</td>
<td>RNO</td>
<td>BRANCH</td>
<td>EMAIL</td>
<td>PHNO</td>

</tr>

<tr><td><%rs.getString("FNAME"); %></td>
    <td><%rs.getString("LNAME"); %></td>
    <td><%rs.getString("RNO"); %></td>
    <td><%rs.getString("BRANCH"); %></td>
    <td><%rs.getString("EMAIL"); %></td>
    <td><%rs.getString("PHNO");%></td></tr>
      
      




<%
    rs.close();
    stmt.close();
    conn.close();
    }
%>


       </TABLE>
       <BR>
       <% 
           } 
       %>
       

</center>
    </BODY>
</HTML>



