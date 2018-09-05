function deleteCheck() {
	if(document.frm.id.value == ""){
		alert("아이디가 입력되지 않았습니다.");
		document.frm.id.focus();
		return;
	}
	document.frm.submit();
}


function inputCheck() {
	if(document.frm.id.value == ""){
		alert("아이디가 입력되지 않았습니다.");
		document.frm.id.focus();
		return;
	}
	if(document.frm.name.value == ""){
		alert("이름이 입력되지 않았습니다.");
		document.frm.name.focus();
		return;
	}
	if(document.frm.title.value == ""){
		alert("제목이 입력되지 않았습니다.");
		document.frm.title.focus();
		return;
	}
	if(document.frm.content.value == ""){
		alert("내용이 입력되지 않았습니다.");
		document.frm.content.focus();
		return;
	}
	document.frm.submit();
}




