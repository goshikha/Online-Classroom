<%@page import="java.sql.*"%>
<%
String ide=request.getParameter("email");

String name=request.getParameter("uname");
String pwrd=request.getParameter("pass");

try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/widget","root", "root");
Statement st=null;
st=conn.createStatement();
String user1 = (String)session.getAttribute("user"); 
st.executeUpdate("update studentinfo set uname='"+name+"',pass='"+pwrd+"',email='"+ide+"' where uname='"+user1+"'");
response.sendRedirect("index.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>