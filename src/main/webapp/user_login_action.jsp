<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.shop.order.OrderItem"%>
<%@page import="com.itwill.shop.order.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.order.OrderService"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.exception.PasswordMismatchException"%>
<%@page import="com.itwill.shop.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("user_login_form.jsp");
		return;
	}
	String user_id=null;
	String user_password=null;
	String url_history=null;
	List<Integer> orderProductList = new ArrayList();
	try{
		url_history=request.getParameter("url_history");
		String[] urlArray = url_history.split("/"); 
		user_id=request.getParameter("user_id");
		user_password=request.getParameter("user_password");
		UserService userService=new UserService();
		User loginUser = userService.login(user_id, user_password);
		OrderService orderService = new OrderService();
		List<Order> orderList = orderService.findWithOrderItemByUserId(user_id);
		for(Order order : orderList){
			for(OrderItem orderItem : order.getOrderItemList()){
				orderProductList.add(orderItem.getProduct().getP_no());	
			}
		}
		out.println(orderProductList);
		session.setAttribute("sUserId", user_id);
		session.setAttribute("sUser", loginUser);
		session.setAttribute("sUserOrderProductList", orderProductList);
		response.sendRedirect(urlArray[4]);
		
	}catch(UserNotFoundException e){
		out.println("<script>");
		out.println("alert('"+e.getMessage()+"');");
		out.println("location.href='user_login_form.jsp';");
		out.println("</script>");
		/*********************case3[forward]****************/
		request.setAttribute("msg1", e.getMessage());
		request.setAttribute("fuser",new User(user_id,user_password,"","","",""));
		RequestDispatcher rd=
				request.getRequestDispatcher("user_login_form.jsp");
		rd.forward(request, response);
		
	}catch(PasswordMismatchException e){
		out.println("<script>");
		out.println("alert('"+e.getMessage()+"');");
		out.println("location.href='user_login_form.jsp';");
		out.println("</script>");
		/*********************case3[forward]****************/
		request.setAttribute("msg2", e.getMessage());
		request.setAttribute("fuser",new User(user_id,user_password,"","","",""));
		RequestDispatcher rd=
				request.getRequestDispatcher("user_login_form.jsp");
		rd.forward(request, response);
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");
	}
%>








