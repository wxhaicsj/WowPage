<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%

  if(request.getParameter("username").toString().equals("admin"))
   {
      out.println("0");
   }
   else if(request.getParameter("username").equals(""))
   {
   out.println("0");
   }
   else
   {
   out.println("1");
  }
   


 %>
