<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<style>
body  {
    background-image: url("https://static.pexels.com/photos/129441/pexels-photo-129441.jpeg");
    background-color: #cccccc;
}

.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}
</style>
<%

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

	Connection con= null;
	Statement st = null;
	ResultSet rs = null;
	%>
<body>

<input type="button" value="ABOUT" onclick="Myhome()" />
<input type="button" value="HELP" onclick="contact()" /> 
<p id="demo"></p>

<script>
function Myhome() {
	window.location="Myhome.jsp";
}
function contact() {
	window.location="contact.jsp";
    }

</script>
<form action="start.jsp" method="post">
     <%
    
    if ((session.getAttribute("userid") == null) || (session.getAttribute("pwd") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%}else {
%>
 <%String user=(String)session.getAttribute("userid");
 session.setAttribute("user", user);%>
 
<h1>Welcome <%=session.getAttribute("userid")%></h1>
<div class="dropdown">
  <button class="dropbtn">My Profile</button>
  <div class="dropdown-content">
  
<a href='start.jsp'>My Account</a>

   <a href='notification.jsp'>notification</a>
   <a href='edit.jsp'>Edit</a>
  </div>
</div>

</form>
<h3><a href='logout.jsp'>Log out</a></h3>
<%}%>

</body>
</html>