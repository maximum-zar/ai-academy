document.addEventListener("DOMContentLoaded", () => {
	const minButton = document.getElementById("btn-window-restore");
	minButton.disabled = true;
	minButton.style.filter = "brightness(40%)";
	addEvents()
})

function addEvents() {
	let openedDropdown = false;
	document.getElementById("btn-window-close").onclick = () => {
		window.close();
		setTimeout(() => { // If browser blocks window.close
			alert("Your browser cannot close this window (maybe, because it disabled in settings?)")
		}, 2000)
	};
	const maxButton = document.getElementById("btn-window-fullscreen")
	maxButton.onclick = () => {
		openFullscreen(document.documentElement);
		maxButton.disabled = true;
		maxButton.style.filter = "brightness(40%)";
		const minButton = document.getElementById("btn-window-restore");
		minButton.disabled = false;
		minButton.style.filter = "";
	}
	const minButton = document.getElementById("btn-window-restore");
	minButton.onclick = () => {
		closeFullscreen();
		minButton.disabled = true;
		minButton.style.filter = "brightness(40%)";
		maxButton.style.filter = "";
		maxButton.disabled = false;
	}
	const menu = document.querySelectorAll("nav > ul > li > button");
	for (let button of menu) {
		button.onclick = () => {
			console.log(openedDropdown)
			if (openedDropdown)
				closeDropdowns()
				
			button.nextElementSibling.classList.toggle("dropdown-show");
			openedDropdown = true;
		}
	}
	
	window.addEventListener("click", event => {
		if (!event.target.matches("nav>ul>li>button"))
			closeDropdowns();
			openedDropdown = false;
	})
}

function closeDropdowns() {
		let dropdowns = document.querySelectorAll("nav > ul > li > ul");
		for (let dropdown of dropdowns) {
			if (dropdown.classList.contains('dropdown-show')) {
				dropdown.classList.remove('dropdown-show');
			}
		}
}
function openFullscreen(elem) {
	if (elem.requestFullscreen) {
		elem.requestFullscreen();
	} else if (elem.webkitRequestFullscreen) { // Safari
		elem.webkitRequestFullscreen();
	} else if (elem.msRequestFullscreen) { // IE11
		elem.msRequestFullscreen();
	}
}

function closeFullscreen() {
	if (document.exitFullscreen) {
		document.exitFullscreen();
	} else if (document.webkitExitFullscreen) { // Safari
		document.webkitExitFullscreen();
	} else if (document.msExitFullscreen) { // IE11
		document.msExitFullscreen();
	}
}