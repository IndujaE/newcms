<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Delete event</title>
    
    
    
    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-color: crimson;
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}
mediumseagreen
.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: black!important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}



.login input[type=submit]{
	width: 260px;
	height: 35px;
	/*background: #fff;
	border: 1px solid #fff;*/
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}



.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    </style>

    
    <script src="js/prefixfree.min.js">
            
    </script>
    <script>
   /*     function delete()
{
	//alert("change");
	f1.submit();
}*/
        </script>
    
  </head>

  <body>
     
    <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Delete<span>Event</span></div>
		</div>
		<br>
                <div class="login"><br><br><br>
                <form name="f1" action="deletor.jsp">
                     <table>
                <%
                    PreparedStatement ps = null;

 String getd=null;
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
 ps=con.prepareStatement("SELECT * FROM eventadd ");
            
      //preparedStmt.executeUpdate();
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
             getd= rs1.getString(1).toString();
             %>
             
            
                 <tr>
                 <td><%=getd%></td>
                 <td><input type="radio"  name="dlt" value=<%=getd%> ></td>
                 </tr>
             
             <%
            
         }
                    %>
                    <input type="submit" value="delete">
      </table>
             </form>
                </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    
    
    
    
  </body>
</html>
