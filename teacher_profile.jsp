
<%@ page import ="java.sql.*" %>
<%
    int i;
    String userName= request.getParameter("User");    

    String pas = request.getParameter("Password");
    
      String subj=request.getParameter("Subject");	
      String clas=request.getParameter("class");	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/widget",
            "root", "root");
    Statement st = con.createStatement();
    
    ResultSet rs;
    i = st.executeUpdate("insert into teacher_login(User,Password,Subject,class) values('"+userName+"','"+pas+"','"+subj+"','"+clas+"')");
    
    if (i>0) {
        session.setAttribute("userName", userName);
        response.sendRedirect("welcome_teacher.jsp");
       // out.print("Registration Successfull!"+"<a href='index1.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("teacher.jsp");
    }
%>

   
