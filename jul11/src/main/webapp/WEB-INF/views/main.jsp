<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<h1>Main</h1>
	${mame } <br>
	JSTL / EL <br>
	<c:forEach begin="1" end="10" var="i">
		
		
		<c:choose>
			<c:when test="${i eq 3 }">
				삼입니다.<br>
			</c:when>
			<c:otherwise>
				${i }<br>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
			<!-- //when~~ otherwise는 짝꿍이다. 
			when~ 조건문이 참이면 when 안에 내용이 실행.
			거짓이면 otherwise 내용이 실행.
			choose 가 감싸고있는 형태로 항상 같이 써야한다. --!>
			
	
	<!-- set 변수선언. k = 케이 와 같은 의미 -->
	<c:set var="k" value="케이"></c:set>
	<c:set var="k">새로운 값</c:set>
	<!-- EL태그나 out태크로 출력할수 있다. -->
	${k }<br>
	<!-- out = $ {var } 변수! -->
	<c:out value="k"></c:out>
	<c:out value="${k }"></c:out>
	M = Model = data
	V = View = jsp
	C = Controller = 흐름제어
	
	
	<c:remove var="k"/>
	
	<hr>
	${list }
	
	<c:forEach items="${list }" var="i">
	${i } <br>
	</c:forEach>
	

</body>
</html>