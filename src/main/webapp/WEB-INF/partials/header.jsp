<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="menubar">
	<span>AI-Academy</span>
	<div class="buttons">
		<input type="image"
			src="${pageContext.request.contextPath}/static/img/Sprites/MinimizeButton.png"
			id="btn-window-restore"> <input type="image"
			src="${pageContext.request.contextPath}/static/img/Sprites/FullScreenButton.png"
			id="btn-window-fullscreen"> <input type="image"
			src="${pageContext.request.contextPath}/static/img/Sprites/CancelButton.png"
			id="btn-window-close">
	</div>
</div>
<nav>
	<ul>
		<li>
			<button>File</button>
			<ul>
				<li onclick="window.location = '${pageContext.request.contextPath}/index.jsp';">Index</li>
				<li onclick="window.location = '${pageContext.request.contextPath}/lesson.jsp';">Open demo course</li>
				<li onclick="window.close();">Close window</li>
			</ul>
		</li>
		<li>
			<button>Source</button>
			<ul>
				<li onclick="window.open('https://www.github.com/maximum-zar/ai-academy');">GitHub</li>
				<li onclick="window.open('https://unsplash.com');">Images in slider from here</li>
				<li onclick="window.open('https://flaticon.com');">Icons in player from here</li>
				<li onclick="windw.open('https://fonts.google.com')">Font source</li>
			</ul>
		</li>
		<li>
			<button>Help</button>
			<ul>
				<li>About</li>
			</ul>
		</li>
	</ul>
</nav>