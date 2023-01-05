<%@ page contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="Model.weatherBean"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>the weather</title>
	<link rel="stylesheet" href="Style/style.css">
</head>
<body>

	<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");

	//variables gathered from the API, stored in weatherBean
	String city = wBean.getCityStr();
	String country = wBean.getCountryStr();
	String clouds = wBean.getCloudsStr();
	String wind = wBean.getWind();
	int temperature = wBean.getTemperatureAsInt();

	//value from cookie
	String lastSearch = null;

	//gets all cookies and goes through them till one cookie with name lastSearch is found
	Cookie[] ckArr = request.getCookies();
		for (Cookie cookie : ckArr) {
			if (cookie.getName().equals("lastSearch")) {
				lastSearch = cookie.getValue();
			}
		}

		//makes new cookie with the new name of the city
		Cookie ck = new Cookie("lastSearch", wBean.getCityStr());
		//max age of cookie is 60seconds
		ck.setMaxAge(60);
		//adds cookie to response
		response.addCookie(ck);
	%>


	<!-- Main content-->
	<div class="wrapper">
		<div class="form">
			<p>In <%=city%>, in the country of <%=country%>,</p>
			<p>the sky is <%=clouds%>,</p>
			<p>the temperature is <%=temperature%>°c,</p>
			<p>and the wind is <%=wind%>,</p>
			<!-- Displays next line if lastSearch is set, with accepted value-->
			<%if(lastSearch != null){out.print("<p>The last submitted search was " + lastSearch + "</p>");}%>
		</div>

	</div>
</body>
</html>











