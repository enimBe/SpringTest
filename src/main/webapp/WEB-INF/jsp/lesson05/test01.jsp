<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리1</title>
</head>
<body>

	<h2>1. JSTL core 변수</h2>
	
	<c:set var="number1" value="24" />
	<c:set var="number2" value="25" />
	
	<h4>첫번째 숫자 : ${number1 }</h4>
	<h4>두번째 숫자 : ${number2 }</h4>
	
	
	<h2>2. JSTL core 연산</h2>
	
	<h4>더하기 : ${number1 + number2 }</h4>
	<h4>빼기 : ${number1 - number2 }</h4>
	<h4>곱하기 : ${number1 * number2 }</h4>
	<h4>나누기 : ${number1 / number2 }</h4>
	
	
	<h2>3. JSTL core out</h2>
	
	<c:out value="<title>core out</title>" />
	
	<h2>4. JSTL core if</h2>
	
	<c:set var="avg" value="(number1 + number2) / 2" />
	<c:if test="${avg >= 10 }">
		<h1>${avg }</h1>
	</c:if>

	
</body>
</html>