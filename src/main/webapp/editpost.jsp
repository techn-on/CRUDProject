<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.func.BoardDAO"%>
<%@page import ="com.crud.jdbc.Fileupload"%>
<%@ page import="com.crud.vo.BoardVO" %>

<% request.setCharacterEncoding("utf-8"); %>



<%
	BoardDAO boardDAO = new BoardDAO();

	Fileupload upload =new Fileupload();
	BoardVO u =upload.uploadPhoto(request);
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>