/*list.jsp*/
function over(my){
	my.style.backgroundColor="#FF92B1";
	
}
function out(my){
	my.style.backgroundColor="";
	
}
/*content.jsp */
function del() /*삭제하기 폼*/
{
	var delform=document.getElementById("del");
	delform.style.visibility="visible";
	delform.style.left=(event.clientX+10)+"px";
	delform.style.top=event.clientY+"px";
}
function del_cancel() /*삭제하기 폼 취소*/
{
	document.getElementById("del").style.visibility="hidden";
}
/*content.jsp  댓글*/
function view_pwd() // 삭제하기위해 비밀번호 입력폼을 보이게 한다..
{
	 document.getElementById("del").style.display="table-row";
}
function edit_form(id,name,content)
{
	   // 존재하는 폼태그의 action과 submit의 value를 수정에 맞게 변경
	   document.form.action="dat_update_ok.jsp";
	   document.form.submit.value="수정";
	   document.form.reset.style.display="inline";
	   //alert(document.form.action);
	   // 이름과 내용,id를 폼태그에 전달
	   /*alert(content);*/
	   content2 = content.replace(/x!x/g,"\n")
	   /*alert(content2);*/
	   document.form.name.value=name;
	   document.form.content.value=content2;
	   document.form.did.value=id; // dat테이블 id
	   
}
function hide_del() // 삭제하기 위해 비밀번호를 입력하는 폼을 숨긴다..
{
	   document.getElementById("dat_del").style.visibility="hidden"; 
}
function dat_del(id,bid) // 삭제하기 위한 비밀번호 입력폼을 날짜가 클릭되면 보이기
{
	   document.getElementById("dat_del").style.visibility="visible";
	   var x=event.pageX; 
	   var y=event.pageY;
	   document.getElementById("dat_del").style.left=(x+20)+"px";
	   document.getElementById("dat_del").style.top=y+"px";
	   // dat테이블의 id, board테이블의 id를 폼안에 전달
	   document.lys.id.value=id;
	   document.lys.bid.value=bid;
}
function editCan(){
	   document.form.action="dat_write_ok.jsp";
	   document.form.submit.value="댓글";
	   document.form.reset.style.display="none";
	   document.form.name.value="";
	   document.form.content.value="";
	   document.form.did.value=""; // dat테이블 id	      
}