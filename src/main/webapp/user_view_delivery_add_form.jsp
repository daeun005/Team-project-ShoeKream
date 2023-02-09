<%@page import="com.itwill.shop.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf"%>
<%
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel=stylesheet href="css/delivery.css" type="text/css"> 
<title>배송지 추가</title>
<script type="text/javascript">
function addDeliveryAddress() {
	document.getElementById('delivery_add_f').method='POST';
	document.getElementById('delivery_add_f').action='user_deliver_add_action.jsp';
	document.getElementById('delivery_add_f').submit;
	window.close();
}
</script>

</head>
<body>

	<div id="add">배송지 추가<hr>
		<form id="delivery_add_f" action="user_view_delivery_delete_address_action.jsp" method="post">
			<div class="delivery">수령인
			<input class="delivery_input" name="d_user_name" style="width:200px;height:25px;font-size:12px;" type="text" value="">
			</div>
			<div class="delivery">전화번호
			<input class="delivery_input" name="d_user_phone" style="width:200px;height:25px;font-size:12px;" type="text" value="">
			</div>
			<div class="delivery">배송주소
			<input class="delivery_input" name="d_user_address" style="width:200px;height:25px;font-size:12px;" type="text" value="">
			</div>
		</form>
		<br>
		<input id="deliveryBtn" type="button" value="추가하기" onClick="addDeliveryAddress();">
		<input id="deliveryBtn" type="button" value="취소" onClick="window.close();">
	</div>

</body>
</html>