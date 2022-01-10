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

<link rel="stylesheet" href="/lesson05/test05/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
            <div class="d-flex">
            
                <nav>
                    <div class="logo d-flex justify-content-center mt-3">
                        <img class="logo-image mr-2" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Emblem_of_the_Government_of_the_Republic_of_Korea.svg/800px-Emblem_of_the_Government_of_the_Republic_of_Korea.svg.png" > 
                        <span class="text-white logo-text">기상청</span>
                    </div>

                    <ul class="nav flex-column mt-4">
                        <li class="nav-item"><a href="/lesson05/test05/weather_history" class="nav-link main-link">날씨</a></li>
                        <li class="nav-item"><a href="/lesson05/test05/add_weather_view" class="nav-link main-link">날씨입력</a></li>
                        <li class="nav-item"><a href="#" class="nav-link main-link">테마날씨</a></li>
                        <li class="nav-item"><a href="#" class="nav-link main-link">관측 기후</a></li>
                    </ul>
                </nav>
                
                <section class="mt-3 ml-5">
                    <h2 class="p-4">날씨 입력</h2>
                    
					<form method="post" action="/lesson05/test05/weatherHistory/addWeather">
					
						<div class="d-flex">
							
							<div class="input-group">
								<label for="date">날짜</label>
								<input type="date" class="form-control" name="date">
							</div>
							
							
							<div class="input-group">
								<label for="weather">날씨</label>
								<select class="form-control" name="weather">
									<option value="맑음">맑음</option>
									<option value="구름조금">구름조금</option>
									<option value="흐림">흐림</option>
									<option value="비">비</option>
								</select>
							</div>
							
							<div class="input-group">						
								<label for="microDust">미세먼지</label>
								<select class="form-control" name="microDust">
									<option value="좋음">좋음</option>
									<option value="보통">보통</option>
									<option value="나쁨">나쁨</option>
								</select>
							</div>
						</div>
						
						<div class="d-flex">
						
							<label for="temperatures">기온</label>
							<div class="input-group">
								<input type="text" class="form-control" name="temperatures">
								<span class="input-group-text">°C</span>
							</div>
							
							<label for="precipitation">강수량</label>
							<div class="input-group">
								<input type="text" class="form-control" name="precipitation">
								<span class="input-group-text">mm</span>
							</div>
							
							<div class="input-group">
								<label for="windSpeed">풍속</label>
								<input type="text" class="form-control" name="windSpeed">
								<span class="input-group-text">km/h</span>
							</div>
						</div>
						
						<button class="btn btn-success">저장</button>
						
					</form>
                </section>
                
            </div>
            
            <footer class="border-top d-flex">
                <div class="footer-logo mt-3 ml-4"> <img class="foot-logo-image" src="https://www.weather.go.kr/w/resources/image/foot_logo.png"></div>
                <div class="copyright mt-2">
                    <small class="text-secondary">(07062) 서울시 동작구 여의대방로16길 61  <br>
                    Copyright@2020 KMA. All Rights RESERVED.</small>

                </div>
            </footer>
        
	</div>

</body>
</html>