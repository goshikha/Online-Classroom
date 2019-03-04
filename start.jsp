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
    width: 100%;
}



</style>
<a href="http://localhost:8080/Widget/index.jsp"><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Go Back</button></a>
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
<td><b>first_name</b></td>
<td><b>last_name</b></td>
<td><b>email</b></td>
<td><b>school</b></td>
<td><b>board</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String user1 = (String)session.getAttribute("user"); 
String sql ="SELECT * FROM studentinfo where uname='"+user1+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("school") %></td>
<td><%=resultSet.getString("boards") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>


<script>
function goBack() {
    window.history.back();
}
</script>
</table>
<center>
<br>
<h3>Edit your details</h3>
<a href="http://localhost:8080/Widget/edit.jsp"><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Update</button></a>

</center>