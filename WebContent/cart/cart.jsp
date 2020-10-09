<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="productlist"  class="java.util.ArrayList" 
	type="java.util.List<String>" scope="session"/>
	<%
		String productname = request.getParameter("product");
		productlist.add(productname);
	%>
	<script>
		alert("<%=productname %> added to cart !!");
		history.go(-1);	//이전화면으로 이동
	</script>
</body>
</html>