<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                     </head>
                     <style>
                     body  {
    background-image: url("https://static.pexels.com/photos/129441/pexels-photo-129441.jpeg");
    background-color: #cccccc;
}
                     </style>
    <body>
<input type="button" value="Home" onclick="Myhome()" />
  
<input type="button" value="Organisation Structure" onclick="Organisation()" /> 
  
<input type="button" value="Free Demo" onclick="Free_demo()" /> 
<input type="button" value="Structure" onclick="Structure()" />
 

<input type="button" value="Our team" onclick="Our_team()" /> 
<input type="button" value="Payment" onclick="Payment()" /> 

<input type="button" value="Our Blog" onclick="Blog()" />

<input type="button" value="About us" onclick="About()" /> 

<input type="button" value="Contact us" onclick="contact()" /> 
<p id="demo"></p>
<script>
function Myhome() {
    document.getElementById("demo").innerHTML = "Welcome to Home";
}
function Organisation() {
    document.getElementById("demo").innerHTML = "Welcome to Organisation";
}
function Free_demo() {
    document.getElementById("demo").innerHTML = "Welcome to Demo";
}
function Structure() {
    document.getElementById("demo").innerHTML = "Welcome to Structure";
}
function Our_team() {
    document.getElementById("demo").innerHTML = "Welcome to team";
}
function Payment() {
    document.getElementById("demo").innerHTML = "100000000000";
}
function Blog() {
    document.getElementById("demo").innerHTML = "Welcome to Blog";
}
function About() {
    document.getElementById("demo").innerHTML = "About us";
}
function contact() {
    document.getElementById("demo").innerHTML = "100";
}
</script>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>