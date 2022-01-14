<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/lesson06/booking/css/style.css" type="text/css">

</head>
<body>

	<div id="wrap" >
            <header class="mt-4">
                <div class="text-center display-4">통나무 팬션</div>
                <nav class="mt-4">
                    <ul class="nav nav-fill">
                        <li class="nav-item"><a class="nav-link" href="#">팬션소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">객실보기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">예약안내</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">커뮤니티</a></li>
                    </ul>
                </nav>
            </header>
            
            <section>
            	<h2 class="text-center p-3">예약 목록 보기</h2>
            
            	<table class="table text-center">
            		<thead>
            			<tr>
            				<th>이름</th>
            				<th>예약날짜</th>
            				<th>숙박일수</th>
            				<th>숙박인원</th>
            				<th>전화번호</th>
            				<th>예약상태</th>
            				<th></th>
            			</tr>
            		</thead>
            		
            		<tbody>
            			<c:forEach var="booking" items="${bookingList }">
	            			<tr>
	            				<td>${booking.name }</td>
	            				<td><fmt:formatDate value="${booking.date }" pattern="yyyy년 M월 d일" /></td>
	            				<td>${booking.day }</td>
	            				<td>${booking.headcount }</td>
	            				<td>${booking.phoneNumber }</td>
	            				<td>
	            					<c:choose>
	            						<c:when test ="${booking.state eq '대기중'}">
	            							<div class="text-primary">${booking.state }</div>
	            						</c:when>
	            						<c:when test ="${booking.state eq '확정'}">
	            							<div class="text-success">${booking.state }</div>
	            						</c:when>
	            					</c:choose>
	            				</td>
	            				<td><button type="button" class="btn btn-danger btn-block deleteBtn" data-booking-id="${booking.id }">삭제</button></td>
	            			</tr>
	            		</c:forEach>
            		</tbody>
            	</table>
            </section>
            
            <footer class="mt-3 ml-4">
                <address>
                    제주특별자치도 제주시 애월읍  <br>
                    사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
                    Copyright 2025 tongnamu All right reserved
                </address>

            </footer>
            
	</div>
	
	<script>
	
		$(document).ready(function() {
			
			$(".deleteBtn").on("click", function() {
				let id = $(this).data("booking-id");
				
				$.ajax({
					type:"get",
					url:"/lesson06/test02/delete_booking",
					data:{"id":id},
					success:function(data) {
						alert("Success");
						location.reload();
					},
					error:function() {
						alert("Error");
					}
				});
				
			});
			
			
		});
	
	
	</script>
	
	
	
</body>
</html>
































