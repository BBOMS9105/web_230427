<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- el태그 \는 탈출문자(뒤에 오는게 문자열로 출력됨) ${} <- el 태그 중괄호 안을 실행 --%>
\${ 100 } : ${ 100 }<br>
\${ "안녕" } : ${ "안녕" }<br>
<!-- 문자열 더하기, 문자 + 숫자 안됨 -->
<%-- \${ "안녕"+"하세요" } : ${ "안녕" + "하세요" } --%>
\${ "10" +1 } : ${ "10" + 1 }<br>
\${ 10/10 } : ${ 10/10 }
\${ 10 div 10 } : ${ 10 div 10 } div 나누기 <br>
\${ 10 mod 7 } : ${ 10 mod 7 } mod <br> 
<hr>
<h1>가치판단</h1>

\${ 10 == 5 } : ${ 10 == 5 }<br>
\${ 10 eq 5 } : ${ 10 eq 5 }<br>
\${ "한" == "한" } : ${ "한" == "한" }<br>

\${ 10 != 5 } : ${ 10 != 5 }<br>
\${ 10 ne 5 } : ${ 10 ne 5 } // not equal<br>

\${ 10 > 5 } : ${ 10 > 5 }<br>
\${ 10 gt 5 } : ${ 10 gt 5 } // greater than<br>

\${ 10 < 5 } : ${ 10 < 5 }<br>
\${ 10 lt 5 } : ${ 10 lt 5 } // less than<br>

\${ 10 >= 5 } : ${ 10 >= 5 }<br>
\${ 10 ge 5 } : ${ 10 ge 5 } // greater or equal<br>

\${ 10 <= 5 } : ${ 10 <= 5 }<br>
\${ 10 le 5 } : ${ 10 le 5 } // less or equl<br>
<hr>
\${ (10 == 5) && (1 == 1) } : ${ (10 == 5) && (1 == 1) }<br>
\${ (10 == 5) and (1 == 1) } : ${ (10 == 5) and (1 == 1) }<br>

\${ (10 == 5) || (1 == 1) } : ${ (10 == 5) || (1 == 1) }<br>
\${ (10 == 5) or (1 == 1) } : ${ (10 == 5) or (1 == 1) }<br>

\${ !(10 == 5) } : ${ !(10 == 5)  }<br>
\${ not(10 == 5)} : ${ not(10 == 5)}<br>
<hr>
<h1>empty</h1>
\${ empty "안녕" } : ${ empty "안녕" }<br>
\${ not empty "안녕" } : ${ not empty "안녕" }<br>
\${ empty null } : ${ empty null }<br>
<hr>
아무것도 안 나올 때 주의!!<br>
앞\%{ null }뒤 : 앞${ null }뒤 


</body>
</html>