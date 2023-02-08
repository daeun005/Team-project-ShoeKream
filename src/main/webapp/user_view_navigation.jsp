<%@page import="com.itwill.shop.board.BoardService"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.user.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sUserId=(String)session.getAttribute("sUserId");
%>	

<ol class="mypage">마이페이지
	<li></li>
	<li></li>
	<li></li>
	<li>
		<span class="mypage_title">쇼핑내역</span>
		<li class="mypage_item">
		<a href="order_list.jsp" class="">주문내역 조회</a>
		</li>
	</li>	
	<li>
		<span class="mypage_title">개인정보</span>
			<li class="mypage_item">
			<a href="user_view.jsp" class="">배송주소록 관리</a>
			</li>
			<li class="mypage_item">
			<a href="user_view.jsp" class="">개인정보 수정</a>
			</li>
			<li class="mypage_item">
			<a href="user_remove_action.jsp" class="" onClick="userRemove()" >회원탈퇴</a>
			</li>
	</li>
	<li><span class="mypage_title"><a href="user_logout_action.jsp">로그아웃</a></span></li>
	<li></li>
		
		<li><a href="board_list.jsp">게시판리스트</a></li>
		<li><a href="board_write.jsp">게시판쓰기</a></li>
		
</ol>
