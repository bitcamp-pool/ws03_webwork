<%@page import="com.google.gson.JsonObject"%>
<%@page import="mysql.data.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	String pass = request.getParameter("pass");
	
	// System.out.println("num: " + num + ", pass: " + pass);
	
	//  dao 선언
	GuestDao dao = new GuestDao();
	boolean b = dao.isEqualPass(num, pass);
	
	//System.out.println("b:" + pass);
	 
	//  비번이 맞을 경우 삭제
	if(b){
		dao.geustDelete(num);
	}
	JsonObject obj = new JsonObject();
	obj.addProperty("result", String.valueOf(b));
%>
<%=obj.toString()%>