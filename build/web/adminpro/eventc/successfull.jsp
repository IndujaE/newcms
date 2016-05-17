<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%
	

Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");

PreparedStatement ps = null;
String event_name;
String m1;
String m2;
String p1;
String p2;
String p3;

event_name= request.getParameter("event_name");
m1= request.getParameter("m1");
m2= request.getParameter("m2");
p1= request.getParameter("p1");
p2= request.getParameter("p2");
p3= request.getParameter("p3");



 String query =("Insert into EVENTADD values(?,?,?,?,?,?)");
 ps= con.prepareStatement(query);
        ps.setString(1, event_name);
        ps.setString(2, m1);
        ps.setString(3, m2);
        ps.setString(4, p1);
        ps.setString(5, p2);
        ps.setString(6, p3);
       /* ps.executeUpdate();*/
        
        int i = ps.executeUpdate();
        if(i!=0)
        {
            System.out.println("data inserted");
        }
        
        else
        {
            System.out.println("failed!!!");
        }
        

        
%>








<html>
    
    <head>
        <title>Successfulll</title>
    
    <style>
        
         @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);


        
    body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: darkblue;
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
	background-color: white;
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

.login input[type=password]{
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
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	/*background: #fff;
	border: 1px solid #fff;*/
	cursor: pointer;
	border-radius: 2px;
	color: cornflowerblue;
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
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    </style>

    
        <script src="js/prefixfree.min.js"></script>
        
    
    
    
    
    </head>
    
    
    
    <body>
       <div class="body"></div>
		<div class="grad"></div>
        <div class="login">
        <center>
        <br><br><br>
        <h1>
            Event Successfully Added!!!!
            
            </h1>
            <br>
            <div id="login">
            <form action="create_evt.jsp"> <input type='submit' value="click to add another event" ></form>
            <form action=".../index.jsp"> <input type='submit' value="click to go back to profile" ></form>

            </div>
            
        
        
        
        </center>
        
        
        
        
        
        
    </body>
    
    
    
    
    
    
    
    
</html>