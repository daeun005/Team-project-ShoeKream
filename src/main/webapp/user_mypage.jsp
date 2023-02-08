<%@page import="com.itwill.shop.user.User"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>내정보</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">

<script src="js/user.js"></script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header"></div>
		<!-- header end -->
		<!-- wrapper start -->
		<div id="wrapper">
			<div id="user_navigation">
				<jsp:include page="user_view_navigation.jsp"/>
			</div>
			<div id="psuedo"></div>
			<div id="user_content">
				<div class="member-grade-box">
					<div class="grade-info-box">
						<span class="grade-info"><span></span> 님 환영합니다.</span>

						<form id="mypageChangeForm" name="mypageChangeForm" method="post">
							<input type="hidden" id="changeMemberNo" name="changeMemberNo">
						</form>
					</div>
					<div class="right-box">
						<div class="shopping-info point">
							<div class="info-item">
								<span class="info-title"><i class="icon-cart"></i>장바구니</span> 
								<span class="info-data"> <a href="cart_view.jsp">
								<span class="unit">개</span></a></span>
							</div>
							<div class="info-item">
								<span class="info-title"><i class="icon-order"></i>구매목록</span>
								<span class="info-data"><a href="order_list.jsp">0 
								<span class="unit">개</span></a></span>
							</div>
						</div>
						<div class="shopping-info">
							<div class="info-item">
								<span class="info-title"><i class="icon-board"></i>게시글 </span>
								<span class="info-data"><a href="/cart/cart-list">0 
								<span class="unit">개</span></a></span>
							</div>
							<div class="info-item">
								<span class="info-title"><i class="icon-reply"></i>상품댓글</span>
								<span class="info-data"> <a href="">0 
								<span class="unit">개</span></a></span>
							</div>
						</div>
					</div>
				</div>
			
			<div id="user_view">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>내정보 관리
											- 내정보보기</b></td>
								</tr>
							</table> <!-- view Form  -->
							<form name="f" method="post">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">아이디</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">전화번호</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이메일
											주소</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">주소</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
										</td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center>
									<input type="button" value="내정보수정" onClick="userModify()">&nbsp; 
									<input type="button" value="탈퇴" onClick="userRemove()">&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
				<!-- content end -->
			</div>
			<!--wrapper end-->
			<div id="footer"></div>
		</div>
		<!--container end-->
</body>
</html>
