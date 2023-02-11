<%@page import="com.itwill.shop.product.ProductComment"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String p_noStr = request.getParameter("p_no");
if (p_noStr == null || p_noStr.equals("")) {
	response.sendRedirect("product_list.jsp");
	return;
}
boolean isLogin = false;
if (session.getAttribute("sUserId") != null) {
	isLogin = true;
}

ProductService productService = ProductService.getInstance();
Product product = productService.productDetail(Integer.parseInt(p_noStr));
if (product == null) {
	out.println("<script>");
	out.println("alert('매진된상품입니다.');");
	out.println("location.href='product_list.jsp';");
	out.println("</script>");
	return;
}

//조회수 증가
ProductService.getInstance().updateHitCount(Integer.parseInt(p_noStr));



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쇼핑몰</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<link rel=stylesheet href="css/product.css" type="text/css">
<style type="text/css" media="screen">
</style>
<script type="text/javascript">
	function add_cart_popup_window() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'user_login_form.jsp';
		} else {

			var left = Math.ceil((window.screen.width) / 5);
			var top = Math.ceil((window.screen.height) / 3);
			console.log(left);
			console.log(top);
			var cartWin = window
					.open(
							"about:blank",
							"cartForm",
							"width=260,height=130,top="
									+ top
									+ ",left="
									+ 0
									+ ",location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
			document.add_cart_form.action = 'cart_add_action_popup_window.jsp';
			document.add_cart_form.target = 'cartForm';
			document.add_cart_form.method = 'POST';
			document.add_cart_form.submit();
		}
	}

	function order_create_form() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'user_login_form.jsp';
		} else {
			document.product_detail_form.method = 'POST';
			document.product_detail_form.action = 'order_create_form.jsp';
			document.product_detail_form.submit();
		}
	}
	function productList() {
		location.href = 'product_list.jsp';
	}

	function qty_change() {
		document.getElementById("p_qty").value = document
				.getElementById("cart_qty").value;
	}
	
	function comment_save() {
		document.getElementById('p_no_check').value = <%=p_noStr%>;
		document.getElementById('url_check').value = location.search;
		comment_form.method='POST';
		comment_form.action='product_comment_write_action.jsp';
		comment_form.submit();
	}
	
	function clickCheck(target) {
	    document.querySelectorAll('input[type=checkbox]')
	        .forEach(el => el.checked = false);
	    target.checked = true;
	    document.getElementById('mark_check').value=target.value;
	}
	
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<form name="product_detail_form">
		<input type="hidden" name="p_no" value="<%=product.getP_no()%>">
		<input type="hidden" id="p_qty" name="p_qty" value="1"> <input
			type="hidden" name="buyType" value="direct">
	</form>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>쇼핑몰 -
											상품상세보기</b></td>
								</tr>
							</table> <!-- 
							<form name="f" method="post">
							-->
							<table style="margin-left: 10px" border=0 width=80% height=376
								align=center>

								<tr width=100%>
									<td colspan=5 height=5><hr color=#556b2f></td>
								</tr>
								<tr width=100%>
									<td width=30% height=200 align=center class=t1><img
										border=0 src='image/product_image/<%=product.getP_image()%>'
										width=200 height=200></td>

									<td width=20% height=200 align=left><font size=2>카테고리</font><br>
										<br> <font size=2>상품명</font><br> <br> <font
										size=2>가격</font><br> <br> <font size=2>설명</font><br>
									<td width=20% height=200 align=left><font size=2><%=product.getCategory_no()%>(카테고리)</font><br>
										<br> <font size=2><%=product.getP_name()%></font><br>
										<br> <font size=2>￦ <%=product.getP_price()%></font><br>
										<br> <font size=1><%=product.getP_desc()%></font></td>

									<td width=30% height=200 class=t1>
										<form name="add_cart_form" method="post"
											action="cart_add_action.jsp">
											<input type="hidden" name=p_no value="<%=product.getP_no()%>">

											<font size=2>수량</font>
											<!-- 
											 <input type=text name="cart_qty" value=1 size=4 class=TXTFLD>  
											-->
											<select id="cart_qty" name="cart_qty"
												onchange="qty_change();">
												<option value="1">1
												<option value="2">2
												<option value="3">3
												<option value="4">4
												<option value="5">5
												<option value="6">6
												<option value="7">7
												<option value="8">8
												<option value="9">9
												<option value="10">10
											</select><br> <br>
											<!-- 버튼 수정 
												<input width=40px height=40px type=image src='image/cart.png' value="장바구니담기[장바구니보여주기]" title="장바구니담기[장바구니보여주기]" style="font-size: 6pt;"/> 
												<a href="javascript:add_cart_popup_window(this.parentElement);" title="장바구니담기[계속쇼핑팝업]"><img src='image/cart25.png' style="margin-bottom: 5px "></a>
											-->
											<input type="button" class="w-btn w-btn-indigo" value="바로구매"
												onClick="order_create_form();"><br> <br> <input
												type="button" class="w-btn w-btn-indigo" value="장바구니"
												onClick="javascript:add_cart_popup_window(this.parentElement);">
									</td>
									</form>


									</td>
								</tr>
								<tr>
									<td colspan=5 height=21><hr color=#556b2f></td>
								</tr>
							</table> <!-- 
							</form>
							--></td>

						<table border="0" cellpadding="0" cellspacing="1">
							<tr>
								<td align=center><input type="button"
									class="w-btn w-btn-indigo" value="상품목록"
									onClick="productList();"></td>
							</tr>
						</table>
						<!-- review start -->
						<ul>
							<%
							if (product.getComments().size() == 0) {
							%>
							<li id="comment" class="fdb_itm">
								<div class="meta">
									<img src="image/user_comment.png" style="margin-right: 5px"
										class="writer"> </a> <span class="date"></span>
								</div>
								<div>
									<div class="xe_content"></div>
								</div>
							</li>
							<%} else {%>
							<%for (ProductComment comment : product.getComments()) {%>
							<li id="comment" class="fdb_itm">
								<div class="meta">
									<img src="image/user_comment.png" style="margin-right: 5px"
										class="writer"><%=comment.getWriter()%>
									</a> <span class="date"><%=comment.getRegDate()%></span>
								</div>
								<div>
									<div class="xe_content"><%=comment.getContent()%>
									</div>
								</div>
								<div style="margin-top: 10px">
									<%for (int i = 0; i < comment.getPc_mark(); i++) {%>
									<span class="mark"> <em><img class="mark_image"
											src="image/heart_comment.png"> </em>
									</span>
									<%}%>
								</div>
							</li>
							<%}%>
							<%}%>
						</ul>
						<%if(session.getAttribute("sUserId")==null) {%>
						<div id="comment"></div>
						<div class="cmt_editor" style="margin-top: 0px;">
							<label for="editor" class="cmt_editor_tl fl"><strong
								style="padding-left: 5px;">댓글 쓰기</strong></label>
							<div class="bd_wrt clear">
								<div class="simple_wrt">
									<div class="text">
										<a class="cmt_disable bd_login" href="user_login_form.jsp" style="font-size: 13px; text-align: left;">댓글 작성 하시려면 로그인
											해주세요. 로그인 하시겠습니까?</a>
									</div>
									<input type="button" value="등록" disabled="disabled"
										class="bd_btn" style="margin-top: 10px;">
								</div>

							</div>
						</div>
						<%}else { %>
						<form id="comment_form" name="comment_form" onsubmit="return false;">
						<div id="comment"></div>
						<div class="cmt_editor" style="margin-top: 0px;">
							<label for="editor" class="cmt_editor_tl fl"><strong
								style="padding-left: 5px;">댓글 쓰기</strong></label>
							<div class="bd_wrt clear">
								<i>평점</i> 
								<span><input type="checkbox" id="mark_checkbox" name="mark_checkbox" value="1" onclick="clickCheck(this)">1
								<input type="checkbox" id="mark_checkbox" name="mark_checkbox" value="2" onclick="clickCheck(this)">2
								<input type="checkbox" id="mark_checkbox" name="mark_checkbox" value="3" onclick="clickCheck(this)">3
								<input type="checkbox" id="mark_checkbox" name="mark_checkbox" value="4" onclick="clickCheck(this)">4
								<input type="checkbox" id="mark_checkbox" name="mark_checkbox" value="5" onclick="clickCheck(this)">5</span>
								<div class="simple_wrt">
									<div class="text">
										<textarea type="text" class="cmt_able" id="cmt_able" name="cmt_able" style="font-size: 13px; text-align: left;"
										 placeholder="코멘트를 작성해주세요"></textarea>
										 <input type="hidden" id="p_no_check" name="p_no_check" value="">
										 <input type="hidden" id="url_check" name="url_check" value="">
										 <input type="hidden" id="mark_value" name="mark_value" value="">
									</div>
									<input type="button" value="등록" class="bd_btn" style="margin-top: 10px;" onclick="comment_save()">
								</div>

							</div>
						</div>
						</form>
						<%} %>
						</div>
						<!-- include_content.jsp end-->
						<!-- content end -->
						</div>
						<!--wrapper end-->
						<div id="footer">
							<!-- include_common_bottom.jsp start-->
							<jsp:include page="include_common_bottom.jsp" />
							<!-- include_common_bottom.jsp end-->
						</div>
						<!--container end-->
</body>
</html>