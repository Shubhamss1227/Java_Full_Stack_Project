<%@   page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    String connectionUrl = "jdbc:sqlserver://DESKTOP-2AP45B0\\SQLEXPRESS;" + "database=erp_web;" + "integratedSecurity=true;" + "encrypt=false;";
    Connection con = DriverManager.getConnection(connectionUrl);
    PreparedStatement st = con.prepareStatement("select emp_name from employees where email=? and emp_password=?");
    st.setString(1, email);
    st.setString(2, password);
    ResultSet rst = st.executeQuery();

    if (rst.next()) {

        String username = rst.getString("emp_name");


        session.setAttribute("username", username);


        response.sendRedirect("dash.jsp");
    } else {

        response.sendRedirect("login.html");
    }
%>

</body>
</html>