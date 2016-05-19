<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%
	
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");

PreparedStatement ps = null;
String fname;
String lname;
String rno;
String branch;
String email;
String phno;
String I;
String II;
String III;
String IV;
String V;
String VI;
String score;

fname= request.getParameter("fname");
lname= request.getParameter("lname");
rno= request.getParameter("rno");
branch= request.getParameter("branch");
email= request.getParameter("email");
phno= request.getParameter("phno");



 String query =("Insert into USER_REG values(?,?,?,?,?,?)");
 ps= con.prepareStatement(query);
        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, rno);
        ps.setString(4, branch);
        ps.setString(5, email);
        ps.setString(6, phno);
        
        
             
       /* ps.executeUpdate();*/
        
        int i = ps.executeUpdate();
        if(i!=0)
        {
            System.out.println("USER REGISTERED!!!");
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
            User Registration  Successful!!!!
            
            </h1>
            <br>
            <div id="login">
            <form action="user-reg.jsp"> <input type='submit' value="click to register another user " ></form>
            

            </div>
            
        
        
        
        </center>
        
        
        
        
        
        
    </body>
    
    
    
    
    
    
    
    
</html>