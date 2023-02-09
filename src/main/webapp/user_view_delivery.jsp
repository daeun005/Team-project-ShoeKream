<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.cart.Cart"%>
<%@page import="com.itwill.shop.delivery.Delivery"%>
<%@page import="com.itwill.shop.delivery.DeliveryService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf"%>
<%
DeliveryService deliveryService = new DeliveryService();
List<Delivery> deliveryList = deliveryService.selectDelivery(sUserId);
List<Cart> cartItemList = new ArrayList<Cart>();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>내정보수정</title>
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
		<div id="header">
			<jsp:include page="include_common_top.jsp" />
		</div>
		<!-- header end -->
		<!-- wrapper start -->
		<div id="wrapper">
			<div id="user_navigation">
				<jsp:include page="user_view_navigation.jsp" />
			</div>
			<div id="psuedo"></div>
			<div id="user_content">
				<jsp:include page="user_view_top.jsp" />
			</div>

			<div id="user_view">
				<table style="padding-left: 10px" border=0 cellpadding=0
					cellspacing=0>
					<tr>
						<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>내정보보기</b></td>
					</tr>
				</table>
				<!-- view Form  -->
				<form name="f" method="post">
					<table align=center width=80% border="0" cellpadding="0"
						cellspacing="1" bgcolor="BBBBBB">
						<caption style="text-align: left;">배송지 정보</caption>
						<tr>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>받으시는
								분</td>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>연락처</td>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>이메일</td>
							<td width=10 height=25 align=center bgcolor="E6ECDE" class=t1></td>
						</tr>
						<tr>
							<td width=130 height=26 align=center bgcolor="ffffff" class=t1><%=sUser.getUser_name()%></td>
							<td width=130 height=26 align=center bgcolor="ffffff" class=t1><%=sUser.getUser_phone()%></td>
							<td width=150 height=26 align=center bgcolor="ffffff" class=t1><%=sUser.getUser_email()%></td>
							<td width=150 height=26 align=center bgcolor="ffffff" class=t1>
								<input type="checkbox" id="delivery_checkbox" checked="checked" onchange=""></td>
							</td>
					</table>
				</form>
				<br />
				<br />
				<div>
					<input type="button" value="수정" onClick="userModifyAction();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td> <input type="button" value="돌아가기" onClick="returnUserView()">
					</td>
				</div>
			</div>
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer"></div>
	</div>
	<!--container end-->
</body>
</html>
