<%@page import="java.sql.*"%>
<%
PreparedStatement ps = null;
String getdpass = null;
String uname1=request.getParameter("uname");
String passd1=request.getParameter("passwd");
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
 ps=con.prepareStatement("SELECT * FROM users WHERE uname= ? ");
             ps.setString(1, uname1);
      //preparedStmt.executeUpdate();
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
             getdpass= rs1.getString(2).toString();
            
         }
             if(getdpass.equals(passd1))
             {
                response.sendRedirect("adminpro/");
             }
             else
             {
            response.sendRedirect("index.jsp");
            }
             %>