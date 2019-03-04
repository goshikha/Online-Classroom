<%@page import="java.sql.*"%>
<%
String Date=request.getParameter("Date");

String Time=request.getParameter("Time");
String Subject=request.getParameter("Subject");
String Clas=request.getParameter("Class");

try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/widget","root", "root");
Statement st=null;
st=conn.createStatement();
String user1 = (String)session.getAttribute("userName"); 
st.executeUpdate("update live_class_details set Date='"+Date+"',Time='"+Time+"',Subject='"+Subject+"',Class='"+Clas+"' where User='"+user1+"'");
response.sendRedirect("update_process.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>