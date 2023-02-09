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
				<form name="delivery_f" method="post">
					<table align=center width=80% border="0" cellpadding="0"
						cellspacing="1" bgcolor="BBBBBB">
						<caption style="text-align: left;">배송지 정보</caption>
						<tr>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>받으시는
								분</td>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>연락처</td>
							<td height=25 align=center bgcolor="E6ECDE" class=t1>주소</td>
							<td width=10 height=25 align=center bgcolor="E6ECDE" class=t1></td>
						</tr>
						<%for(Delivery deliveryAddress : deliveryList) {%>
						<tr>
							<td width=130 height=30 align=center bgcolor="ffffff" class=t1><%=deliveryAddress.getD_name()%></td>
							<td width=130 height=30 align=center bgcolor="ffffff" class=t1><%=deliveryAddress.getD_phone()%></td>
							<td width=150 height=30 align=center bgcolor="ffffff" class=t1><%=deliveryAddress.getD_address()%></td>
							<td width=150 height=30 align=center bgcolor="ffffff" class=t1>
								<form action="user_view_delivery_delete_address_action.jsp" method="post">
									<input type="hidden" name="delivery_no" value="<%=deliveryAddress.getD_no()%>">
									<input type="image" src='image/delete.png' >
								</form>
						<%} %>
							</td>
					</table>
				</form>
				<br />
				<br />
				<div>
					<input type="button" value="배송지 추가" onClick="deliveryAddAction();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="돌아가기" onClick="returnUserView()">
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
