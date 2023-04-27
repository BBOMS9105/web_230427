<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

set, if, choose, forEach, out<br>
<h3>c:set</h3>
스코프 scope (책에 안나오는데 중요함)<br>
스코프scope(주머니)에 등록<br>
<c:set var="id" value="아이디"></c:set><br>
내용이 없으면 이렇게 닫아도 됨
<c:set var="pw" value="비밀번호" />
<br>
el : ${id }<br>
java에 있는 변수를 el에서 사용할 수 있도록 해보기<br>
<%
	int a = 20;
%>

<c:set var="a2" value="<%= a %>" /><br>
a2 : ${a2 }
<c:set var="a3" value="${a2 }" /><br>
a3 : ${a3 }

<hr>
<h3>c:if</h3>
<c:if test="<%= a < 10 %>">
	a < 10 <br>
</c:if>

<c:if test="<%= !(a < 10) %>">
	!(a < 10) 이렇게 쓰면 else<br>
</c:if>

<%-- <c:if test="<%= (a >= 10) %>"> --%>
<!-- 	(a >= 10) 이렇게 써도 else<br> -->
<%-- </c:if> --%>

<c:if test="%{a2 lt 3}">
	a2 lt 10 <br>
</c:if>
<hr>


<h3>c:choose</h3>
<!-- switch문, if문 비슷 -->
<c:choose>
	<c:when test="ture">
		true
	</c:when>
	
	<c:when test="false">
		false
	</c:when>
	
	<c:otherwise>
		otherwise
	</c:otherwise>
	
</c:choose>

<h3>c:forEach</h3>
<%
	List list = new ArrayList();
	list.add(1);
	list.add(2);
	list.add(3);
	list.add(4);
	list.add(5);
	list.add(6);
	list.add(7);
%>
<%= list %><br>
<%-- <c:forEach var="item" items="list나 배열처럼 반복되는 것들(밖에서 받은거)"> --%>
<c:forEach 
	var="item" items="<%= list %>"
	begin="1" end="10"
	varStatus="loop"
	>
	${item}<br>
	${loop.index} : 반복되는 index<br>
	${loop.count} : 현재 반복 횟수<br>
	${loop.first} : 첫 번째 반복인지 true/false<br>
	${loop.last} : 마지막 반복인지 true/false<br>
</c:forEach>
<hr>
<h3>c:out</h3>

<c:out value="한eng123" /><br>
${"<strong>ID</strong>" }<br>
<c:out value="<strong>ID</strong>" /><br>
<%
	String nickname = "<strong>별명</strong>";
%>
<c:set var="nickname" value="<%= nickname %>"></c:set>
<div style="border: 1px solid red; text-align: right; padding-right:20px;">
	<c:out value="${ nickname }님 환영합니다." />
</div>






</body>
</html>









