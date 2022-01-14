<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make Reservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/lesson06/booking/css/style.css" type="text/css">

</head>
<body>

		<div id="wrap">
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
            	<h2 class="text-center p-3">예약 하기</h2>
            	
            	<div class="center" style="width:400px">
	            	<form method="post" action="/lesson06/test02/add_booking">
	            	
		            	<label for="name">이름</label>
		            	<input type="text" class="form-control" name="name"> <br>
		            	
		            	<label for="name">예약날짜</label>
		            	<input type="date" class="form-control" name="date"> <br>
		            	
		            	<label for="name">숙박일수</label>
		            	<input type="text" class="form-control" name="day"> <br>
		            	
		            	<label for="name">숙박인원</label>
		            	<input type="text" class="form-control" name="headcount"> <br>
		            	
		            	<label for="name">전화번호</label>
		            	<input type="text" class="form-control" name="phoneNumber"> <br>
		            	
		            	<div class="d-grid gap-2">
		            		<button type="button" id="addBooking" class="btn btn-warning btn-block" >예약하기</button>
		            	</div>
	            	</form>
            	</div>
            	
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

			$("#addBooking").on("click", function() {
			
				let name = $("#name").val();
				let day = $("#day").val();
				let date = $("#date").val();
				let headcount = $("#headcount").val();
				let phoneNumber= $("#phoneNumber").val();
				
				if(name == "") {
					alert("Enter name");
					return;
				}
				
				if(day == "") {
					alert("Enter day");
					return;
				}
				
				if(date == "") {
					alert("Enter date");
					return;
				}
				
				if(headcount == "") {
					alert("Enter headcount");
					return;
				}
	
				if(phoneNumber == "") {
					alert("Enter phoneNumber");
					retun;
				}
			
				$.ajax({
				
					type:"post",
					url:"/lesson06/test02/add_booking",
					data:{"name":name, "day":day, "date":date, "headcount":headcount, "phoneNumber":phoneNumber},
					success:function(data) {
						if(data == "success") {
							location.href="/lesson06/test02/booking_list"
						} else {
							alert("Fail");
						}
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

































