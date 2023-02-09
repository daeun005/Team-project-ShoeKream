<%@page import="com.itwill.shop.delivery.DeliveryService"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>    
<%
    if(request.getMethod().equalsIgnoreCase("GET")){
    		response.sendRedirect("product_list.jsp");
    		return;
    	}
	String d_address=request.getParameter("delivery_address");
	DeliveryService deliveryService = new DeliveryService();
	deliveryService.deleteDelivery(d_address);
   	response.sendRedirect("user_view_delivery.jsp");
    %>