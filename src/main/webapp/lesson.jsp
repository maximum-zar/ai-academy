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
	<%@ include file="/static/css/courses.css" %>
	<%@ include file="/static/css/main.css" %>
	<%@ include file="/static/css/slider.css" %>
	h1 {
		margin: 20px;
		text-align: center;
	}
	video {
		width: 800px;
		height: 400px;
		background-color: black;
		display: block;
  		margin: 100px auto 0;
	}
	.content {
		width: 90%;
		margin: 100px auto 0;
		clear: both;
	}
	
	.content p {
		margin-bottom: 20px;
	}
	
	.video-controls {
		width: 800px;
		margin: 10px auto 0;
	}
	.video-controls input[type="image"] {
		width: 20px;
		height: 20px;
		padding: 2px;
	}
	
	.hidden {
		display: none;
	}
	
	.pause {
		background-color: #fff;
		border: 2px inlined initial;
	}
	
	#seek {
		width: 800px;
		border-radius: 0;
		background: grey;
		height: 2px;
	}
	
	#seek::-webkit-slider-thumb,
	#seek::-moz-range-thumb,
	#seek::-webkit-slider-thumb {
  		height: 20px;
  		width: 10px;
  		border-radius: 0%;
  		border: 2px outset silver;
  		background: #aaa;
	}
	
	#seek-tooltip {
		display: none;
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
	<jsp:include page="WEB-INF/partials/header.jsp"></jsp:include>
	<div id="root">
		<h1>Lesson 0. Test</h1>
		<video controls preload="metadata" id="video">
			<source
				src="${pageContext.request.contextPath}/static/videos/sample-5s.mp4"
				type="video/mp4">
		</video>
		<div class="video-controls hidden" id="video-controls">
			<input type="image" src="${pageContext.request.contextPath}/static/img/Sprites/play.png" id="play">
			<div class="video-progress">
				<input id="seek" value="0" min="0" type="range"
					step="1">
				<div id="seek-tooltip">00:00</div>
			</div>
		</div>
		<div class="content">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Vivamus nec libero nec neque fermentum convallis. Quisque ac tortor
				et felis vestibulum sagittis ut vitae ligula. Sed a gravida diam,
				nec consequat quam. Duis eget metus ac turpis dignissim iaculis nec
				vel lacus. Etiam lobortis, lacus quis hendrerit tincidunt, dolor
				elit facilisis ipsum, non tempus risus est eget quam. Praesent
				dignissim ipsum sem, nec convallis lorem accumsan eget. Etiam
				gravida arcu libero, nec sodales diam auctor sit amet. In diam nisl,
				feugiat id sagittis a, tincidunt condimentum lorem. Maecenas non
				quam eget eros viverra gravida in in erat. Etiam scelerisque
				fermentum quam eget tincidunt. Donec eu vehicula sem.</p>
			<p>Etiam vel posuere mauris. In mauris quam, tempus eu posuere
				vel, malesuada quis sem. Suspendisse mauris eros, fringilla ac lorem
				vel, mollis consectetur massa. Integer tempor neque sed tortor
				vestibulum convallis. Etiam finibus, dui et sollicitudin tempor,
				enim est maximus erat, quis dignissim nisl elit quis lectus. Donec
				scelerisque urna purus, eget blandit purus iaculis sit amet. Donec
				vitae mattis ipsum. Morbi dignissim, diam non mattis venenatis,
				magna odio malesuada enim, non commodo nunc sem at arcu. Donec
				pharetra nunc ipsum, at venenatis erat laoreet nec. In risus lorem,
				maximus at nunc id, fringilla tincidunt tellus. Morbi sollicitudin
				mollis turpis, et molestie quam. Fusce lacinia fringilla quam,
				fermentum ornare neque ullamcorper nec. Nulla at neque vel elit
				gravida ultricies. Nunc non fermentum nibh. Aliquam pulvinar semper
				pellentesque. Phasellus non sollicitudin nibh.</p>
			<p>Aenean vulputate eget ex at feugiat. Ut quis rutrum tortor, in
				pellentesque erat. Cras tincidunt aliquam risus, sit amet
				pellentesque purus lobortis eget. Nulla tincidunt pellentesque
				ligula, at maximus neque imperdiet in. In vel metus vel enim
				condimentum tincidunt. Quisque non mattis nunc, vitae sagittis
				libero. Mauris purus ex, elementum a commodo eget, varius quis est.
				Suspendisse consectetur magna quis nunc pretium, in facilisis metus
				ultricies. Fusce vehicula neque id nibh maximus sodales.</p>
			<p>Pellentesque et sapien sed lectus vehicula maximus. Quisque
				ante metus, varius nec porta efficitur, venenatis in erat. Duis
				sagittis odio eu eros varius, ornare molestie dolor congue.
				Suspendisse condimentum, nibh eget vehicula rutrum, leo diam
				tincidunt est, quis sodales ante velit aliquam arcu. Curabitur
				pulvinar eu neque eget mattis. Aenean non ultrices lorem. Phasellus
				posuere mauris eget accumsan semper. Donec lacinia sit amet sem ac
				rhoncus. Pellentesque sodales tristique mauris, sed faucibus libero
				rhoncus ut. Quisque lacinia et diam ut fringilla. In quis magna
				orci. Ut eu eros a purus sagittis pretium. Phasellus massa metus,
				condimentum eget dolor in, porta condimentum dui. Duis sit amet
				felis id enim porttitor bibendum at ut justo.</p>
			<p>Aliquam aliquet, nulla at placerat consectetur, nisi leo
				sollicitudin orci, vel molestie lacus nisl quis tellus. Phasellus
				vel vehicula erat. Nam sagittis tempor semper. Vivamus justo eros,
				pharetra ac fringilla a, lobortis a magna. Mauris pellentesque justo
				quis venenatis ullamcorper. Integer et nulla molestie, dictum metus
				condimentum, ultrices sapien. Curabitur consequat aliquam orci, in
				pretium leo pellentesque eget. Integer varius purus metus, et
				fringilla arcu commodo ut. Vestibulum sed eros facilisis, tempus
				elit convallis, dapibus ligula. Quisque vel est varius leo posuere
				malesuada. Curabitur id lacus finibus, placerat magna in, cursus
				tellus. Nulla luctus ligula felis, vel rutrum odio commodo a. Nulla
				eu tellus at urna fringilla imperdiet. Pellentesque ullamcorper,
				lacus et venenatis gravida, dolor ante pretium est, sed congue ipsum
				turpis id orci.</p>
		</div>
	</div>
	<script type="text/javascript">

		const video = document.getElementById('video');
		const videoControls = document.getElementById('video-controls');

		const videoWorks = !!document.createElement('video').canPlayType;
		if (videoWorks) {
			video.controls = false;
			videoControls.classList.remove('hidden');
		}
		const seek = document.getElementById('seek');
		seek.addEventListener('input', skipAhead);
		const seekTooltip = document.getElementById('seek-tooltip');
		const playButton = document.getElementById('play');
		playButton.addEventListener("click", togglePlay);
		video.addEventListener("loadedmetadata", () => seek.setAttribute('max', Math.floor(video.duration)));
		video.addEventListener("play", () => {
				playButton.src = "${pageContext.request.contextPath}/static/img/Sprites/pause.png";
				playButton.classList.add("pause");
		})
		video.addEventListener("pause", () => {
			playButton.src = "${pageContext.request.contextPath}/static/img/Sprites/play.png";
			playButton.classList.remove("pause");
		})
		
		video.addEventListener('timeupdate', () => (seek.value = Math.floor(video.currentTime)));
		
		function togglePlay() {
			if (video.paused || video.ended) {
				video.play();
			} else {
				video.pause();
			}
		}
		
		function skipAhead(event) {
		  const skipTo = event.target.dataset.seek ? event.target.dataset.seek : event.target.value;
		  video.currentTime = skipTo;
		  seek.value = skipTo;
		}
	</script>
</body>
</html>