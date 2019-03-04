<%@ page import ="java.sql.*" %>
<%
    int i;
    String user = request.getParameter("uname");    

    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
   String lname = request.getParameter("lname");
       String email = request.getParameter("email");
       String school = request.getParameter("school");
       String course = request.getParameter("course");
    //  String sid=request.getParameter("sid");
       String board = request.getParameter("board");
       String states = request.getParameter("states");
      /*String attendance = request.getParameter("attendance");
       String score = request.getParameter("score");
       String correct = request.getParameter("correct");
       String incorrect = request.getParameter("incorrect");
       String attempted = request.getParameter("attempted");
       String skipped = request.getParameter("skipped");*/
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/widget",
            "root", "root");
    Statement st = con.createStatement();
    
    ResultSet rs;
    i = st.executeUpdate("insert into studentinfo(first_name,last_name,email,uname,pass,school,boards,states,course) values('"+fname+"','"+lname+"','"+email+"','"+user+"','"+pwd+"','"+school+"','"+board+"','"+states+"','"+course+"')");
    
    
    
    if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>