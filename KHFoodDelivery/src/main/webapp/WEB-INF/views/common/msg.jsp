<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/sweetalert.css" />
<script type="text/javascript" src="${path }/resources/js/sweetalert.min.js'/>"></script>
<title>메시지창</title>
	<script>
		alert("${msg}");
		location.href="${pageContext.request.contextPath}${loc}";
	</script>
</head>
<body>
</body>
</html>