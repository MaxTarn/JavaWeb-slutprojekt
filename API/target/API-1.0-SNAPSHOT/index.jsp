<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>OpenWeather</title>
	<link rel="stylesheet" href="Style/style.css">
</head>
<body>

<div class="wrapper">
	<form action="OWservlet" method="get" class="form">
		<h2>Get weather</h2>
		<div class="input-group">
			<input type="text" name="city" id="city" required />
			<label for="city">City</label>
		</div>
		<div class="input-group">
			<input type="text" name="country" id="country" required/>
			<label for="country">Country</label>
		</div>
		<input type="submit" value="send" class="submit-btn" />
	</form>
</div>


</body>
</html>