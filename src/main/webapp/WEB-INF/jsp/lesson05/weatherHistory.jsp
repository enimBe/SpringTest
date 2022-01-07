<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weather History</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>

</style>
</head>
<body>

	
	<div class="container d-flex">
	
		<nav class="navbar col-2 bg-primary">
			<ul class="navber-nav">
				<li class="nav-item"><a class="nav-link" href="">날씨</a></li>
				<li class="nav-item"><a class="nav-link" href="localhost:8080/lesson05/addWeather" target="#">날씨입력</a></li>
				<li>테마날씨</li>
				<li>관측 기후</li>
			</ul>
		</nav>
		
		<section class="col-10">
			<h2 class="p-2" >과거 날씨</h2>
			
			<table class="table text-center">
				<thead>
					<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
					</tr>
				</thead>
					<c:forEach var="weather" items="${weathers }"> 
					<tr>
							<td><fmt:formatDate value="${weather.date }" pattern="yyyy년 MM월 dd일" /></td>
							<c:choose>
							<c:when test="${weather.weather eq '맑음'}">
								<td> <img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg"> </td>
							</c:when> 								
							<c:when test="${weather.weather eq '구름조금'}">
								<td> <img src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg"> </td>
							</c:when> 								
							<c:when test="${weather.weather eq '흐림'}">
								<td> <img src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg"> </td>
							</c:when> 								
							<c:when test="${weather.weather eq '비'}">
								<td> <img src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg"> </td>
							</c:when> 								
							</c:choose>
							<td>${weather.temperatures }°C</td>
							<td>${weather.precipitation }mm</td>
							<td>${weather.microDust }</td>
							<td>${weather.windSpeed }km/h</td>
					</tr>				
					</c:forEach>
				<tbody>
				
				</tbody>
			</table>
			
		</section>
	</div>
</body>
</html>