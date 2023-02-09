<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%

ProductService productService = ProductService.getInstance();
List<Product> popular1 = productService.findPopular1();
List<Product> popular2 = productService.findPopular2();
List<Product> popular3 = productService.findPopular3();

%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>shoekream</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/menu.css" type="text/css"> 
<link rel=stylesheet href="css/shop.css" type="text/css"> 
<style type="text/css">
@font-face {
    font-family: 'GongGothicMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff');
}
</style> 
<style type="text/css" media="screen">
</style>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
<div id="container">
		<!-- header start -->
	<div id="header">
			<jsp:include page="include_common_top.jsp"/>
	</div>
		<!-- header end -->
		<!-- wrapper start -->
	<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
		<div id="content">
			
<!-- 수정 start -->			
<!--
&nbsp;&nbsp;&nbsp;
-->
			
			<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
				<table style="padding-left: 10px" border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>인기상품</b></td>
								</tr>
				</table>

			<div id="f">
				<table width="100%" align="center" border="0" cellpadding="10" cellspacing="1" bgcolor="BBBBBB">
									<%
									int product_size=popular1.size();
									int product_column_size=4;
									int product_line_count = 1;
			
			for (int i=0;i<popular1.size();i++) {
				Product product1 = popular1.get(i);
									%>
									<!--상품시작 -->
									<%
									%>
									<tr>
							
										<td align="center" width="50%"  bgcolor="ffffff">
											<a href="product_detail.jsp?p_no=<%=product1.getP_no()%>">
											<img width="300px" height="300px" src="image/product_image/<%=product1.getP_image()%>" border="0"></a>
										</td>
										<td  align="left" width="50%"  bgcolor="ffffff">
											<font style="font-family: GongGothicMedium;" size=6>BEST 1</font><br><br>
											<font style="font-family: '\S-CoreDream-3Light;" size=5><%=product1.getP_name()%></font><br><br>
											<form align="left" style="display: inline;">
												<input type="hidden" name="p_no" value="<%=product1.getP_no()%>">
									<!-- 
												<input type="hidden" name="cart_qty" value="1">
												<img src='image/cart20.png' style="cursor:pointer;" onclick="javascript:add_cart_popup_window(this.parentElement);" align="top"/>
									 -->
											<font style="font-family: GongGothicMedium;" size=4>￦&nbsp;&nbsp;<%=new DecimalFormat("#,##0").format(product1.getP_price())%></font></td>
											</form><br> 

									</tr>
									<%
										Product product2 = new Product();
								    %>
									<tr  align="center" width="50%"  bgcolor="ffffff">
										<td>
											<a href="product_detail.jsp?p_no=<%=product2.getP_no()%>">
											<img width="300px" height="300px" src="image/product_image/<%=product2.getP_image()%>" border="0"></a>
										</td>

									<%
										Product product3 = new Product();
								    %>
										<td>
											<a href="product_detail.jsp?p_no=<%=product3.getP_no()%>">
											<img width="300px" height="300px" src="image/product_image/<%=product3.getP_image()%>" border="0"></a>
										</td>
									</tr>
									<tr>
									</tr>

									
								   <!--상품 끝 -->
								   <%}%>
								  	
				</table>
			</div> <br /></td>
					</tr>
			</table>
			
			
<!-- 수정 end -->			
			
			
<!-- 원본
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://active.macromedia.com/flash4/cabs/swflash.cab#version=4,0,0,0"
					width="540px" height="350px">
					<param name="movie" value="image/FI_main.swf">
					<param name="play" value="true">
					<param name="loop" value="true">
					<param name="quality" value="high">
					<embed src="image/enter.png" scale="exactfit" play="true"
						loop="true" quality="high" style="margin: 10px;"
						pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"
						width="540px" height="350px"></embed>
				</object>
				
				
-->			
		</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
	</div>
		<!--wrapper end-->
		<div id="footer">
			<jsp:include page="include_common_bottom.jsp"/>
		</div>
</div>
	<!--container end-->
</body>
</html>