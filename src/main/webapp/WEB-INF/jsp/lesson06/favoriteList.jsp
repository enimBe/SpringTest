<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</head>
<body>

		<div class="container">
			<h1>즐겨찾기 목록</h1>	
			
			<table class="table text-center">
				<thead>
					<tr>
						<th>No.</th>
						<th>이름</th>
						<th>주소</th>
						<th></th>
					</tr>
				</thead>
			
				<tbody>
					<c:forEach var="favorite" items="${favoriteList }" varStatus="status"> 
						<tr>
							<td>${status.count }</td>
							<td>${favorite.name }</td>
							<td><a href="${favorite.url}">${favorite.url }</a></td>
							<td><button type="button" class="btn btn-danger btn-block deleteBtn" data-favorite-id="${favorite.id }">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
		</div>
		
		<script>
				$(document).ready(function() {
					
					$("#deleteBtn").on("click", function() {
						let id = $(this).data("favorite-id");
						
						$.ajax({
							type:"get",
							url:"/lesson06/test01/delete_data",
							data:{"id":id},
							success:function(data) {
								if(deleteSuccess = true) {
									alert("성공");
									location.reload;
								} 
							},
							error:function() {
								alert("에러발생");
							}
						});
						
						
						
					});
					
					
				});
		
		
		</script>



</body>
</html>









