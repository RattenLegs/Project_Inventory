function modalOpen() {
		document.querySelector(".background").className = "background modalOpen";
	}

	function close() {
		document.querySelector(".background").className = "background";
	}

	document.querySelector("#modalOpen").addEventListener("click", modalOpen);
	document.querySelector("#modalClose").addEventListener("click", close);
/* 	document.querySelector(".background").addEventListener("click", close); */ //바깥 클릭시에도 닫히게 하기