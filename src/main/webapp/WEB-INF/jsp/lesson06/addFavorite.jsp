<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<!-- jQuery에서 제공하는 최신 버전의 jQuery URL  --> 
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>

	<div class="container">
		<h1>즐겨찾기 추가하기</h1>	
		<label>제목</label>
		<input type="text" id="title" class="form-control">
		
		<label class="mt-3">주소</label>
		<input type="text" id="url" class="form-control">
		
		<button type="button" id="addFavorite" class="btn btn-success btn-block mt-3">추가</button>
		
		<script>
			$(document).ready(function() {
					$("#addFavorite").on("click", function() {
						
						let title = $("#title").val();
						let url = $("#url").val();
						
						if(title == "") {
							alert("제목을 입력하세요!");
							return;
						}
						
						if(url == "") {
							alert("주소를 입력하세요!");
							return;
						}
						
						if(!(url.startsWith("http://") || url.startsWith("https://"))) {
							alert("주소형식이 잘못 되었습니다.");
							return;
						}
						
						$.ajax({
							type:"post",
							url:"/lesson06/test01/add_favorite",
							data:{"name":title, "url":url},
							success:function(data) {
								if(data == "success") {
									alert("성공");
									location.href="/lesson06/test01/favorite_list";
									
								} else {
									alert("실패");
								}
							}, 
							error:function() {
								alert("에러 발생");
							}
							
						});
						
					});
			});
			
		</script>
		
	</div>
</body>
</html>