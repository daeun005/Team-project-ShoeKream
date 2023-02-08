<%@page import="com.itwill.shop.order.OrderService"%>
<%@page import="com.itwill.shop.board.BoardService"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>  
<%
CartService cartService = new CartService();
int cart_item_count = cartService.viewCartByUserId(sUserId).size();
int boardListCount = BoardService.getInstance().countBoardListByUserId(sUserId);
OrderService orderService = new OrderService();
int orderListCount = 0;
if (orderService.findWithOrderItemByUserId(sUserId) != null) {
	orderListCount = orderService.findWithOrderItemByUserId(sUserId).size();
}
%>

<div class="member-grade-box">
	<div class="grade-info-box">
		<span class="grade-info"><span><%=sUserId%></span> 님 환영합니다.</span>

		<form id="mypageChangeForm" name="mypageChangeForm" method="post">
			<input type="hidden" id="changeMemberNo" name="changeMemberNo">
		</form>
	</div>
	<div class="right-box">
		<div class="shopping-info point">
			<div class="info-item">
				<span class="info-title"><i class="icon-cart"></i>장바구니</span> <span
					class="info-data"> <a href="cart_view.jsp"><%=cart_item_count%>
						<span class="unit">개</span></a></span>
			</div>
			<div class="info-item">
				<span class="info-title"><i class="icon-order"></i>구매목록</span> <span
					class="info-data"><a href="order_list.jsp"><%=orderListCount%>
						<span class="unit">개</span></a></span>
			</div>
		</div>
		<div class="shopping-info">
			<div class="info-item">
				<span class="info-title"><i class="icon-board"></i>게시글 </span> <span
					class="info-data"><a href="/cart/cart-list"><%=boardListCount%>
						<span class="unit">개</span></a></span>
			</div>
			<div class="info-item">
				<span class="info-title"><i class="icon-reply"></i>상품댓글</span> <span
					class="info-data"> <a href="">0 <span class="unit">개</span></a></span>
			</div>
		</div>
	</div>