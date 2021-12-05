function over(my){
	my.style.backgroundColor="#FF92B1";
}
function out(my){
	my.style.backgroundColor="";
}
function edit_form(id, name, content){ //댓글 수정 버튼을 누르면 입력 폼이 수정폼으로 변환
	document.form.action="dat_update_ok.jsp";
	document.form.submit.value="수정";
	document.form.id.value = id;
	document.form.name.value = name;
	content2 = content.replace(/X!X/g, "\n") /*\n :강제리턴, \r은 자동리턴*/
	document.form.content.value = content2;
	document.form.reset.style.display="inline";
}
function edit_can(){ //댓글 취소 버튼을 누르면 수정 폼이 입력 폼으로 변환
	document.form.action="dat_write_ok.jsp";
	document.form.submit.value="댓글";
	document.form.reset.style.display="none";
	document.form.name.value="";
	document.form.content.value="";
	document.form.pwd.value="";
	
}
function dat_del(id, board_id){
	document.getElementById("dat_del").style.visibility="visible";
	document.lys.id.value=id;
	document.lys.board_id.value=board_id;
	 var x=event.pageX; 
	 var y=event.pageY;
	 document.getElementById("dat_del").style.left=(x+20)+"px";
	 document.getElementById("dat_del").style.top=y+"px";
	
}
function dat_del_reset(){
	document.getElementById("dat_del").style.visibility="hidden";
	document.lys.pwd.value="";
}