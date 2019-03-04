 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	
	<%String user11=(String)session.getAttribute("userName");
 session.setAttribute("user11", user11);%>
 
<ul id="menu">
	<li><a href="display_teacher_details.jsp" title="Profile" class="selected">Profile</a></li>
	<li><a href="Noti.jsp" title="Notification">Notification</a></li>
	<li><a href="#" title="Course">Course</a>
		<ul>
			<li><a href="teacher_class.jsp" title="Subject">Subject</a>
				
			</li>
			
		</ul>
	</li>
	<li><a href="EditTeacher.jsp" title="Edit">Edit</a></li>
</ul>
<style>
body  {
    background-image: url("https://annaleogurlz92.files.wordpress.com/2013/02/library-books-1.jpg");
    background-color: #cccccc;
}

#menu, #menu ul {
	list-style:none;
	padding:0;
	margin:0;
}
#menu li {
	float:left;
	position:relative;
	line-height: 4.5em;
	width: 10em;
}
#menu li ul {
	position:absolute;
	margin-top:-1em;
	margin-left:.5em;
	display:none;
}
#menu ul li ul {
	margin-top:-3em;
	margin-left:7em;
}
#menu a {
	display:block;
	border-right:1px solid #fff;
	background:#E0F574;
	color:#3B3B3B;
	text-decoration:none;
	padding:0 10px;
}
#menu a:hover {
	background-color:#5798B4;
	color:#fff;
}
#menu ul {
	border-top:1px solid #fff;
}
#menu ul a {
	border-right:none;
	border-right:1px solid #fff;
	border-bottom:1px solid #fff;
	border-left:1px solid #fff;
	background:#AEC245;
}
/* SHOW SUBMENU 1 */
#menu li:hover ul, #menu li.over ul {
	display:block;
}
#menu li:hover ul ul, #menu li.over ul ul {
	display:none;
}
/* SHOW SUBMENU 2 */
#menu ul li:hover ul, #menu ul li.over ul {
	display:block;
}

	#menu li {
		position:static;
	}
</style>
<br><br><br>
<center>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br>

  
  <a href="live_class.jsp"><button>Schedule Live Class</button></a><br><br>
  
  </center>
