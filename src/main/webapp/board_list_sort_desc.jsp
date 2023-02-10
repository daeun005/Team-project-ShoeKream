<%@page import="com.itwill.shop.board.BoardListPageMakerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.itwill.shop.board.Board"%>
<%@page import="com.itwill.shop.board.BoardService"%>
<%@page import="com.itwill.shop.board.PageInputDto"%>
<%!public String getTitleString(Board board) {
		StringBuilder title = new StringBuilder(128);
		String t = board.getBoard_title();
		if (t.length() > 15) {
			//t = t.substring(0,15);
			//t = t+"...";
			t = String.format("%s...", t.substring(0, 15));
		}
		//답글공백삽입
		
		for (int i = 0; i < board.getBoard_depth(); i++) {
			title.append("&nbsp;&nbsp;");
		}
		
		if (board.getBoard_depth() > 0) {
			title.append("<img border='0' src='image/re.gif'/>");
		}
		
		title.append(t.replace(" ", "&nbsp;"));
		
		return title.toString();
	}
	%>

<%
	//1.요청페이지번호	
String pageno=request.getParameter("pageno");
if(pageno==null||pageno.equals("")){
	pageno="1";
}	
// 전체 게시물조회
BoardListPageMakerDto boardListPage 
	= BoardService.getInstance().sortByReadCount(Integer.parseInt(pageno));
String sUserId = (String)session.getAttribute("sUserId");

// search Type
String searchType = null;
searchType = request.getParameter("title");
// search keyword
String keyword = null;
keyword = request.getParameter("keyword");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/board.css" type="text/css">

<script type="text/javascript">
	function boardCreate() {
		location.href = "board_write.jsp";
	}
</script>

</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
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
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp; <b>게시판-리스트</b>
									</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="20" class="t1" align="right" valign="bottom">
										총 <font color="#FF0000"><%=boardListPage.pageMaker.getTotCount()%></font>
										건 | 현재페이지( <font color="#FF0000"><%=boardListPage.pageMaker.getCurPage()%></font>
										/ <font color="#0000FF"><%=boardListPage.pageMaker.getTotPage()%></font>
										)
									</td>
								</tr>
							</table>
							<div class="" style="text-align:left;">
								<span><a href="board_list.jsp">&nbsp;기본 정렬</a></span>
								<span> | </span>
								<span><a href="board_list_sort_desc.jsp">조회수 높은 순</a></span>
							</div>
							
							<!-- list -->
							<form name="f" method="post" action="">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="f4f4f4">

									<tr>
										<td width=55% align=center bgcolor="f4f4f4">제목</td>
										<td width=20% align=center bgcolor="f4f4f4">글쓴이</td>
										<td width=10% align=center bgcolor="f4f4f4">글쓴날</td>
										<td width=15% align=center bgcolor="f4f4f4">조회수</td>
									</tr>
									<%
										if(keyword == null) {
											for (Board board : boardListPage.itemList) { %>
									<tr>
										<td width=55% bgcolor="ffffff" style="padding-left: 10px" align="left">
										<a href='board_view.jsp?boardno=<%=board.getBoard_no()%>&pageno=<%=boardListPage.pageMaker.getCurPage()%>'>
										<%=this.getTitleString(board)%></a></td>
										<td width=20% align=center bgcolor="ffffff"><%=board.getUser_id()%></td>
										<td width=10% align=center bgcolor="ffffff" style="padding-left: 10px" align="left">
											<%=board.getBoard_regDate().toString().substring(0, 10)%>
										</td>
										<td width=15% align=center bgcolor="ffffff" align="left"><%=board.getBoard_readCount()%></td>
									</tr>
											<% } 
											/*
											else if(){
												// 제목 선택 + 검색버튼 --> 제목 검색결과 보여주기
											} else if() {
												// 글쓴이 선택 + 검색버튼 --> 글쓴이 검색결과 보여주기
											}
											*/
											%>
								</table>
								<!-- /list -->
							</form> <br>
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align="center">
							     
										
										 <%if(boardListPage.pageMaker.getPrevPage()>0) {%>    
											<a href="./board_list_sort_desc.jsp?pageno=<%=boardListPage.pageMaker.getPrevPage()%>">◀</a>&nbsp;&nbsp;
										 <%}%>
										
										<%
											for (int i = boardListPage.pageMaker.getBlockBegin(); i <= boardListPage.pageMaker.getBlockEnd(); i++) {
										 	if (boardListPage.pageMaker.getCurPage() == i) {
										%>
										 <font color='red'><strong><%=i%></strong></font>&nbsp;
										<%} else {%>
										<a href="./board_list_sort_desc.jsp?pageno=<%=i%>"><strong><%=i%></strong></a>&nbsp;
										<%
										   }
										  }%>
										  
										  
										 <%if(boardListPage.pageMaker.getNextPage() <= boardListPage.pageMaker.getTotPage()){%>
										  <a href="./board_list_sort_desc.jsp?pageno=<%=boardListPage.pageMaker.getNextPage()%>">▶&nbsp;</a>
										 <%}%>
										
									</td>
								</tr>
							</table>
							<%} %>
							<!-- button -->
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<!-- search -->
									<!-- searchType select start -->
									<td>
									<select id = 'searchType' name = 'searchType' onchange = "selectBoxCahnge(this.value);">
									<option value = "title">제목</option>
									<option value = "user_id">글쓴이</option>
									</select>
									</td>
									<!-- searchType select end -->
									<td align="center"><input type="text" id="keyword" name = "keyword"></td>
									<td> <input type="button" id = "btnSearch" value="검색" onclick="search();" /> </td>
									<!-- search -->
									<td align="right" width= 60px><input type="button" value="게시물 생성" onclick="boardCreate();" />
									</td>
								</tr>
							</table></td><br>
					</tr>
				</table>
			</div>
			<br>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>