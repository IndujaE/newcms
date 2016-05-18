<%@page import="java.io.*"%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.messageDestinationLinkType"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%
	

Connection con= null;
PreparedStatement ps = null;
String event_name = request.getParameter("event_name");
String m1 = request.getParameter("m1");
String m2 = request.getParameter("m2");
String p1=  request.getParameter("p1");
String p2=  request.getParameter("p2");
String p3=  request.getParameter("p3");

/*int m=Integer.parseInt(m2);
if(m>20)
{
    out.println("Maximum 20 Participants per event !! ");
}*/
 try{
     Class.forName("com.mysql.jdbc.Driver").newInstance();
     con= DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
     Statement st= con.createStatement();
     String query ="Insert into EVENTADD (\"event_name\",\"m1\",\"m2\",\"p1\",\"p2\",\"p3\") VALUES ('"+event_name+"','"+m1+"','"+m2+"','"+p1+"','"+p2+"','"+p3+"')";
      int i = st.executeUpdate(query);
        if(i!=0)
        {
            out.println("New Event Added");
    /*         FileOutputStream fout=new FileOutputStream("abc.txt");  
     String s="Sachin Tendulkar is my favourite player";  
     byte b[]=s.getBytes();//converting string into byte array  
     fout.write(b);  
     fout.close();  
     System.out.println("success...");  
//f.createNewFile();*/
        }
        
        else
        {
            System.out.println("failed!!!");
        }

 }
catch( Exception e)
 {
     System.out.println("ERROR!!!");
 }
        
%>