 <%@page import="java.sql.*"%>
<%

Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
String sql = "SELECT * FROM `TITLE` WHERE `PAGE`=1 ";
PreparedStatement ps = null;
String pageno;
String color = null;
String text = null;
String font = null;
//ResultSet rs= null;
 ps=con.prepareStatement("select * from title");
             
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             pageno = rs1.getString(1).toString();
             color = rs1.getString(2).toString();
             text = rs1.getString(3).toString();
             font = rs1.getString(4).toString();
             
            
            
      

         }
%>

<html>
<head>
    <title>Content Management System</title>
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
	background-color: coral;
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}

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

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
    
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

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: #fff;
}

::-moz-input-placeholder{
   color: #fff;
}
    </style>

    
        <script src="js/prefixfree.min.js"></script>

    
  </head>

<body>
<font color="black">fcghv </font>
<div class="body"></div>
<div class="grad"></div>
<div class="header">
    <div>Content Editor<span>Of Page 1</span></div></div>
<br>
<div class="login"><br><br>
<br><br><br><form name="f1" action="p1.jsp">
 <input type="text" name="c1" placeholder="Enter Content" value =<%= text%> >
</br>
<form name="f2" action="p1.jsp"> <input type="text" name="c2"  placeholder="enter font color" value =<%= color %> >
</br>
<form name="f3" action="p1.jsp"> <input type="text" name="c3"  placeholder="enter font style" value =<%=font%> >
<input type="submit">
    </form>
    </div>
   
</body>
</html> 