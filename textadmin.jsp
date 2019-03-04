<%@ page import ="java.sql.*" %>
<%
    int i;
    String class1 = request.getParameter("class");    

    String sub = request.getParameter("subject");
    String tym = request.getParameter("time");
   String datee = request.getParameter("date");
       
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/widget",
            "root", "root");
    Statement st = con.createStatement();
    
    ResultSet rs;
    i = st.executeUpdate("insert into AdminSetNotification(class,subject,time,date) values('"+class1+"','"+sub+"','"+tym+"','"+datee+"')");
    
    String sub1=(String)session.getAttribute("sub");
    session.setAttribute("sub1", sub1);
    
    if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("textnotify.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("admin_notify.jsp");
    }
%>