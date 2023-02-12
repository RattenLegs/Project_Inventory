function modalOpen() {
		document.querySelector(".background").className = "background modalOpen";
	}

	function close() {
		document.querySelector(".background").className = "background";
	}

	document.querySelector("#modalOpen").addEventListener("click", modalOpen);
	document.querySelector("#modalClose").addEventListener("click", close);