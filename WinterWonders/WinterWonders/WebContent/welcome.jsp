<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Duration" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Winter Wonders</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        img {
            width: 100%;
            height: auto;
            margin-bottom: 5%;
        }
        
        body {
        	background-color:#F6F6F5;
        }
        
        .welcome-text {
        	margin-bottom : 5%;
        	font-size: 25px; 
        	font-family: 'Gowun Batang', serif;
        	font-weight: 400;
        }
</style>
</head>
<body>
	<%@include file = "menu.jsp" %>
	<%! String tagline = "Merry Christmas !"; %>
	<img src="resources/images/welcome_christmas.jpg" >
	<div class = "container welcome-text">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
		    // 페이지를 5초마다 새로고침
		    response.setIntHeader("Refresh", 5);

		    // 현재 시각
		    LocalDateTime now = LocalDateTime.now(ZoneId.systemDefault());

		    // 현재 시각을 문자열로 포맷
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		    String formattedNow = now.format(formatter);

		    // 2023년 12월 25일의 자정
		    LocalDateTime christmas = LocalDateTime.of(2023, 12, 25, 0, 0);

		    // 두 날짜 간의 차이 계산
		    Duration duration = Duration.between(now, christmas);

		    // 남은 시간 출력
		    long days = duration.toDays();
		    long hours = duration.toHours() % 24;
		    long minutes = duration.toMinutes() % 60;
		    long seconds = duration.getSeconds() % 60;

		    out.println("🕰️현재 시각 : " + formattedNow + "<br>");
		    out.println("🎅 크리스마스까지 남은 시간 : " + days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초");
			%>
		</div>
	</div>	
	<%@include file = "footer.jsp" %>
</body>
</html>