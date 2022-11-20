<<%@ page language="java" contentType="text/html; charset=UTF-8"
		  pageEncoding="UTF-8"%>
<%@page import="com.crud.func.BoardDAO"%>
<%@page import ="com.crud.jdbc.Fileupload"%>
<%@ page import="com.crud.vo.BoardVO" %>
<%@ page import="java.io.File" %>
<%
	String seq = request.getParameter("seq");
	if (seq != ""){
		int id = Integer.parseInt(seq);

		BoardDAO boardDAO = new BoardDAO();
		String filename=boardDAO.getPhotoFilename(id);
		if(filename!=null)
			Fileupload.deleteFile(request,filename);
		//
		boardDAO.deleteBoard(boardDAO.getBoard(id));
	}
	response.sendRedirect("posts.jsp");
%>