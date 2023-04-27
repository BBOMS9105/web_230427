<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	out.println("Model : Hello World");
	
%>

Model : Hello world
<br>
<%-- EL태그 ${...} --%>
당신의 이름은 ${name} 입니다.
당신의 지역은 ${city} 입니다.



</body>
</html>