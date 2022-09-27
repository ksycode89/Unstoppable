<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String menu = request.getParameter("");
ArrayList<String> list = (ArrayList) session.getAttribute("list");
if (list == null) {
	list = new ArrayList<String>();
}
list.add(menu);

session.setAttribute("list", list);
%>
<script type="text/javascript">
	alert("장바구니에 상품이 추가되었습니다.");

	history.go(-1);
</script>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>장바구니 추가</title> -->
<!-- </head> -->
<!-- <body> -->

<!-- </body> -->
<!-- </html> -->