<%@ page language="java" pageEncoding="UTF-8"%>
<%
  System.out.println(request.getMethod());
  System.out.println("username  "+request.getParameter("username"));
  System.out.println("psw  "+request.getParameter("psw"));
  System.out.println(request.getMethod());
  
  out.println("welcome to quake 3 arena, username:"+request.getParameter("username"));
%>