<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.shop.product.ProductComment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("board_list.jsp");
		return;
	}
	String url = request.getParameter("url_check");
	ProductComment comment=new ProductComment();
	System.out.println(request.getParameter("mark_check"));
	comment.setContent(request.getParameter("cmt_able"));
	comment.setWriter(request.getParameter("writer"));
	comment.setP_no(Integer.parseInt(request.getParameter("p_no_check")));
	comment.setPc_mark(Integer.parseInt(request.getParameter("mark_value")));
	
	ProductService.getInstance().saveComment(comment);
	response.sendRedirect("product_detail.jps"+url);
%>
