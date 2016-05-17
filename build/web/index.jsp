       <%@page import="java.sql.*"%>
<%

 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");

//String sql = "SELECT * FROM `TITLE` WHERE `PAGE`=1 ";
//String sql1 = "SELECT * FROM `TITLE` WHERE `PAGE`=2  ";
PreparedStatement ps = null;
PreparedStatement ps1 = null;
String pageno = null;
String color = null;
String text = null;
String font = null;
String pageno1 = null;
String color1 = null;
String text1 = null;
String font1 = null;
String pageno2 = null;
String color2 = null;
String text2 = null;
String font2 = null;
String pageno3 = null;
String color3 = null;
String text3 = null;
String font3 = null;
String pageno4 = null;
String color4 = null;
String text4 = null;
String font4 = null;
String pageno5 = null;
String color5 = null;
String text5 = null;
String font5 = null;
String pageno6 = null;
String color6 = null;
String text6 = null;
String font6 = null;
String pageno7 = null;
String color7 = null;
String text7 = null;
String font7 = null;
String pageno8 = null;
String color8 = null;
String text8 = null;
String font8 = null;
ResultSet rs1;
ResultSet rs2;
ResultSet rs3;
ResultSet rs4;
ResultSet rs5;

//ResultSet rs= null;
 ps=con.prepareStatement("SELECT * FROM TITLE WHERE PAGE='1' ");
             
             rs1=ps.executeQuery();
             while(rs1.next())
             {
             pageno = rs1.getString(1).toString();
             color = rs1.getString(2).toString();
             text = rs1.getString(3).toString();
             font = rs1.getString(4).toString();
             
            
            
      

         }
             
             
 ps1=con.prepareStatement("SELECT * FROM TITLE WHERE PAGE='2' ");
             
             rs2 =ps1.executeQuery();
             while(rs2.next())
             {
             pageno1 = rs2.getString(1).toString();
             color1 = rs2.getString(2).toString();
             text1 = rs2.getString(3).toString();
             font1 = rs2.getString(4).toString();
             
            
            
      

         }
             
 ps1=con.prepareStatement("SELECT * FROM TITLE WHERE PAGE='3' ");
             
             rs3 = ps1.executeQuery();
             while(rs3.next())
             {
             pageno2 = rs3.getString(1).toString();
             color2 = rs3.getString(2).toString();
             text2 = rs3.getString(3).toString();
             font2 = rs3.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM TITLE WHERE PAGE='4' ");
             
             rs4 = ps1.executeQuery();
             while(rs4.next())
             {
             pageno3 = rs4.getString(1).toString();
             color3 = rs4.getString(2).toString();
             text3 = rs4.getString(3).toString();
             font3 = rs4.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM TITLE WHERE PAGE='5' ");
             
             rs5 = ps1.executeQuery();
             while(rs5.next())
             {
             pageno4 = rs5.getString(1).toString();
             color4 = rs5.getString(2).toString();
             text4 = rs5.getString(3).toString();
             font4 = rs5.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM CONTENT WHERE PAGE='2' ");
             
             ResultSet rs6 = ps1.executeQuery();
             while(rs6.next())
             {
             pageno5 = rs6.getString(1).toString();
             color5 = rs6.getString(2).toString();
             text5 = rs6.getString(3).toString();
             font5 = rs6.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM CONTENT WHERE PAGE='3' ");
             
             ResultSet rs7 = ps1.executeQuery();
             while(rs7.next())
             {
             pageno6 = rs7.getString(1).toString();
             color6 = rs7.getString(2).toString();
             text6 = rs7.getString(3).toString();
             font6 = rs7.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM CONTENT WHERE PAGE='4' ");
             
             ResultSet rs8 = ps1.executeQuery();
             while(rs8.next())
             {
             pageno7 = rs8.getString(1).toString();
             color7 = rs8.getString(2).toString();
             text7 = rs8.getString(3).toString();
             font7 = rs8.getString(4).toString();
             
            
            
      

         }
             
ps1=con.prepareStatement("SELECT * FROM CONTENT WHERE PAGE='5' ");
             
             ResultSet rs9 = ps1.executeQuery();
             while(rs9.next())
             {
             pageno8 = rs9.getString(1).toString();
             color8 = rs9.getString(2).toString();
             text8 = rs9.getString(3).toString();
             font8 = rs9.getString(4).toString();
             
            
            
      

         }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title> kalotsavam</title>

	<script>
function title1()
{
	//alert("change");
	window.location.assign("titleeditor/page1/page1.jsp");
}

function title2()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page2/page2.jsp");
}

function title3()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page3/page3.jsp");
}

function title4()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page4/page4.jsp");
}

function title5()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page5/page5.jsp");
}

function content1()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page2/content1.jsp");
}
function content2()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page3/content2.jsp");
}
function content3()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page4/content3.jsp");
}
function content4()
{
	//alert("reached title2");
	window.location.assign("titleeditor/page5/content4.jsp");
}
</script>


        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="CSS-only Responsive Layout with Smooth Transitions" />
        <meta name="keywords" content="css3, transitions, animations, css-only, navigation, smooth scrolling, full width, full height, window width, window height" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
		<link href='http://fonts.googleapis.com/css?family=Josefin+Slab:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
		<!--[if lte IE 8]>
			 <link rel="stylesheet" type="text/css" href="css/simple.css" />
		<![endif]-->
    </head>
    <body>
        <div class="container">
		
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			
			<div class="st-container">
			
				<input type="radio" name="radio-set" checked="checked" id="st-control-1"/>
				<a href="#st-panel-1">  <%=text%> </a>
				<input type="radio" name="radio-set" id="st-control-2"/>
				<a href="#st-panel-2"> <%=text1%> </a>
				<input type="radio" name="radio-set" id="st-control-3"/>
				<a href="#st-panel-3"><%=text2%></a>
				<input type="radio" name="radio-set" id="st-control-4"/>
				<a href="#st-panel-4"><%=text3%></a>
				<input type="radio" name="radio-set" id="st-control-5"/>
				<a href="#st-panel-5"><%=text4%></a>
				
				<div class="st-scroll">
				
					<!-- Placeholder text from http://hipsteripsum.me/ -->
					
					<section class="st-panel" id="st-panel-1">
						<div class="st-deco" data-icon="H">Welcome</div>
<a href="login.html"><img src="images/login-button.png"></a>
						<h2 onClick="title1()" style="color:<%= color%>"> <font face="<%=font%>">
    <%= text%></h2></font>
						<p><img src="images/logo.png"></p>
					</section>
					
					<section class="st-panel st-color" id="st-panel-2">
						<div class="st-deco" data-icon="2"></div>
						
						
                                                <h2 onClick="title2()" style="color:<%= color1%>"> <font face="<%=font1%>"><%= text1%> </h2></font>

						<p onClick="content1()" style="color:<%= color5%>"> <font face="<%=font5%>"><%= text5%> </p></font>
  
					</section>
					
					<section class="st-panel" id="st-panel-3">
						<div class="st-deco" data-icon="B"></div>
						<h2 onClick="title3()" style="color:<%= color2%>"> <font face="<%=font2%>"><%= text2%> </h2></font>
						<p onClick="content2()" style="color:<%= color6%>"> <font face="<%=font6%>"><%= text6%> </p></font>
					</section>
					
					<section class="st-panel st-color" id="st-panel-4">
						<div class="st-deco" data-icon="x"></div>
                                                <h2 onClick="title4()" style="color:<%= color3%>"> <font face="<%=font3%>"><%= text3%> </h2></font>
                                                <p onClick="content3()" style="color:<%= color7%>"> <font face="<%=font7%>"><%= text7%> </p></font>
						<!--<h3>Amritamayi <br><br>Anandamayi <br><br> Chinmayi </br><br>Jyothirmayi</h3>-->
						<p></p>
					</section>
					
					<section class="st-panel" id="st-panel-5">
						<div class="st-deco" data-icon="Ç"></div>
                                                <h2 onClick="title5()" style="color:<%= color4%>"> <font face="<%=font4%>"><%= text4%> </h2></font>
                                                <p onClick="content4()" style="color:<%= color8%>"> <font face="<%=font8%>"><%= text8%> </p></font>
						<!--<h2>Adarsh R Nair(S6 BCA) </br>Akhila Ashok(S6 BCA) </br>Ashwin Narayanan(S6 CSE)</br>Aparna Nair(S6 BCA)</br></h2>-->
						
					</section>

				</div><!-- // st-scroll -->
			<p>Adarsh is a student of BCA in Amrita University, Amritapuri Campus. </p>
<p>Specialisation : Distributed Computing </p>
	
			</div><!-- // st-container -->
			
        </div>
	</body>
</html>