<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<div class="container d-flex">
		<nav class="navbar col-2">
			<ul class="navber-nav">
				<li class="nav-item"><a class="nav-link" href="">날씨</a></li>
				<li class="nav-item"><a class="nav-link" href="" target="#">날씨입력</a></li>
				<li>테마날씨</li>
				<li>관측 기후</li>
			</ul>
		</nav>

		<section>
			<h2 class="p-4">날씨 입력</h2>
				<form method="post" action="/lesson05/weatherHistory/add_weather">
				
					<div class="d-flex">
						
						<div class="input-group">
							<label for="date">날짜</label>
							<input type="text" class="form-control" name="date">
						</div>
						
						
						<div class="input-group">

							<label for="weather">날씨</label>
							<select class="form-control">
								<option>맑음</option>
								<option>구름조금</option>
								<option>흐림</option>
								<option>비</option>
							</select>
						</div>
						
						<div class="input-group">						
							<label for="microDust">미세먼지</label>
							<select class="form-control">
								<option>좋음</option>
								<option>보통</option>
								<option>나쁨</option>
							</select>
						</div>
					</div>
					
					<div class="d-flex">
					
						<label for="temperatures">기온</label>
						<div class="input-group">
							<input type="text" class="form-controll">
							<span class="input-group-text">°C</span>
						</div>
						
						<label for="precipitation">강수량</label>
						<div class="input-group">
							<input type="text" class="form-controll">
							<span class="input-group-text">mm</span>
						</div>
						
						<div class="input-group">
							<label for="windSpeed">풍속</label>
							<input type="text" class="form-controll">
							<span class="input-group-text">km/h</span>
						</div>
					</div>
				</form>
		</section>
	</div>

</body>
</html>