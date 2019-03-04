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



<td><b>Date</b></td>
<td><b>Time</b></td>
<td><b>Subject</b></td>
<td><b>Class</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sub1 = (String)session.getAttribute("sub"); 
String user1 = (String)session.getAttribute("userName"); 
String sql ="SELECT * FROM live_class_details where User='"+user1+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Time") %></td>
<td><%=resultSet.getString("Subject") %></td>
<td><%=resultSet.getString("Class") %></td>


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




