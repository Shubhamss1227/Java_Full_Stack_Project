<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*"%>
<%

    session.invalidate();

    response.sendRedirect("login.html");
%>
