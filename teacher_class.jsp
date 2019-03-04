<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<style>
    input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
body  {
    background-image: url("https://static.pexels.com/photos/129441/pexels-photo-129441.jpeg");
    background-color: #cccccc;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 23%;
}



</style>
<a href="TeacherLogin.jsp"><button>Back</button></a>
<center>
  <a href="#"><button>Send Live Class Notification</button></a>
  <a href="live_class.jsp"><button>Schedule Live Class</button></a>
  <a href="#"><button>Pending Live Class </button></a>
  </center>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "widget";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Your details are as follows</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">

<td><b>subject</b></td>
<td><b>class</b></td>

</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String user2 = (String)session.getAttribute("user11");
	String sql ="SELECT subject,class FROM teacher_login where User='"+user2+"'";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
    %>
    <tr bgcolor="#DEB887">

<td><%=resultSet.getString("subject") %></td>
<td><%=resultSet.getString("class") %></td>


</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
  
  