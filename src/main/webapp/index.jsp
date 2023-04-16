<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI-Academy</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/fonts/roboto/roboto.css">
<style type="text/css">
	@charset UTF-8;
	<%@ include file="/static/css/courses.css" %>
	<%@ include file="/static/css/main.css" %>
	<%@ include file="/static/css/slider.css" %>
	.slides.slide1 {
		background-image: url("${pageContext.request.contextPath}/static/img/developer-unsplash.jpg");
	}
	
	.slides.slide2 {
		background-image: url("${pageContext.request.contextPath}/static/img/chatgpt-unsplash.jpg");
	}
	
	.slides.slide3 {
		background-image: url("${pageContext.request.contextPath}/static/img/python-unsplash.jpg");
	}
	
	.slides.slide4 {
		background-image: url("${pageContext.request.contextPath}/static/img/code-unsplash.jpg");
	}
	
	.slides.slide5 {
		background-image: url("${pageContext.request.contextPath}/static/img/tensorflow-wiki.png");
	}
	
	.slides.slide6 {
		background-image: url("${pageContext.request.contextPath}/static/img/exponent.png");
		background-size: contain;
		background-repeat: no-repeat;
	}
	.slider-container label {
		background-image: url("${pageContext.request.contextPath}/static/img/Sprites/RadioButton.png");
		background-size: contains;
		background-repeat: no-repeat;
	}
	#slide1:checked ~ .controls label:nth-of-type(1),
	#slide2:checked ~ .controls label:nth-of-type(2), #slide3:checked ~
	.controls label:nth-of-type(3), #slide4:checked ~ .controls label:nth-of-type(4),
	#slide5:checked ~ .controls label:nth-of-type(5), #slide6:checked ~
	.controls label:nth-of-type(6) {
		background-image: url("${pageContext.request.contextPath}/static/img/Sprites/RadioButtonClLICKED.png");
	}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>
</head>
<body>
	<div class="menubar">
	<span>AI-Academy</span>
	<div class="buttons">
		<input type="image" src="${pageContext.request.contextPath}/static/img/Sprites/MinimizeButton.png" id="btn-window-restore">
		<input type="image" src="${pageContext.request.contextPath}/static/img/Sprites/FullScreenButton.png" id="btn-window-fullscreen">
		<input type="image" src="${pageContext.request.contextPath}/static/img/Sprites/CancelButton.png" id="btn-window-close">
	</div>
	</div>
	<div id="root">
	<jsp:include page="WEB-INF/partials/header.jsp"></jsp:include>
	<div class="slider-container">
		<input type="radio" name="point" id="slide1" checked> <input
			type="radio" name="point" id="slide2"> <input type="radio"
			name="point" id="slide3"> <input type="radio" name="point"
			id="slide4"> <input type="radio" name="point" id="slide5">
		<input type="radio" name="point" id="slide6">
		<div class="slider">
			<div class="slides slide1"></div>
			<div class="slides slide2"></div>
			<div class="slides slide3"></div>
			<div class="slides slide4"></div>
		`	<div class="slides slide5"></div>
			<div class="slides slide6"></div>
		</div>
		<div class="controls">
			<label for="slide1"></label> <label for="slide2"></label> <label
				for="slide3"></label> <label for="slide4"></label> <label
				for="slide5"></label> <label for="slide6"></label>
		</div>
	</div>
	<jsp:include page="WEB-INF/partials/courses.jsp"></jsp:include>
	</div>
</body>
</html>