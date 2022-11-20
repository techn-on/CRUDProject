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
	int i = boardDAO.insertBoard(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>