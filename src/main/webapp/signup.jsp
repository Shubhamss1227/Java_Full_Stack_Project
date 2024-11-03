<%@   page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password = request.getParameter("password");
String confirmPassword = request.getParameter("confirmPass");

String connectionUrl = "jdbc:sqlserver://DESKTOP-2AP45B0\\SQLEXPRESS;"+ "database=erp_web;"+"integratedSecurity=true;"+ "encrypt=false;";
Connection con = DriverManager.getConnection(connectionUrl);
PreparedStatement st = con.prepareStatement("select*from employees where email=?");
st.setString(1,email);
ResultSet rst=st.executeQuery();
if(rst.next()){
response.sendRedirect("exists.html");
}
else{
PreparedStatement pst = con.prepareStatement("insert into employees(emp_name,email,emp_password,confirm_password) values(?,?,?,?);");
pst.setString(1,name);
pst.setString(2,email);
pst.setString(3,password);
pst.setString(4,confirmPassword);
pst.executeUpdate();
response.sendRedirect("login.html");
}

%>
</body>
</html>