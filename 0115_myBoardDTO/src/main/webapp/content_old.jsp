<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="myBoard.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
        BoardDao bdao = new BoardDao();
		BoardDto bdto = bdao.content(request);
		
		request.setAttribute("bdto", bdto);
    
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>

<c:if test="${bdto.chk!=null}">
  <script>
     alert("댓글의 비밀번호가 틀렸습니다");
  </script>
</c:if>

</head>
<body>
	<%@ include file="title.jsp" %>
   <table width="600" align="center" >
     <tr>
       <td width="120" class="title"> 이름 </td>
       <td width="100" > ${bdto.name}</td>
       <td width="100" class="title"> 조회수 </td>
       <td width="50" >${bdto.readnum}</td>
       <td width="120"  class="title"> 작성일 </td>
       <td width="100" colspan="3"> ${bdto.writeday}</td>
     </tr>
     <tr>
      <td class="title"> 제목 </td>
      <td colspan="5" class="content"> ${bdto.title}</td>
     </tr>
     <tr height="300">
      <td class="title "> 내용 </td>
      <td class="content" colspan="5" ><br>
        ${bdto.content}<br><br>
      </td>
     </tr>

      <tr>
      <td colspan="6">
      	<input type="button" value="목록" onclick="location='list_old.jsp?pager=${bdto.pager}'"  class="red">
      	<input type="button" value="수정" onclick="location='update_old.jsp?id=${bdto.id}&pager=${bdto.pager}'">
        <input type="button" value="삭제" onclick="del()">
        <input type="button" value="글쓰기" onClick="location='write.jsp'" >
      </td>
     </tr>
   </table>
    <form method="post" action="delete_old.jsp" id="del">
    <input type="hidden" name="id" value="${bdto.id}">
    <input type="hidden" name="pager" value="${bdto.pager}">
    <input type="password" name="pwd" placeholder="비밀번호" size="10"> 
    <input type="submit" value="삭제">
    
    <input type="button" onclick="del_cancel()" value="취소">
    
   </form>

<br>
<!-- 댓글 입력폼 시작-->
 <form method="post" action="dat_write_ok.jsp" name="form">
 	  <input type="hidden" name="board_id" value="${bdto.id}"> <!-- board테이블의 id : content로 돌아올때 -->
      <input type="hidden" name="did">  <!-- 수정을 위해 댓글의 레코드 id값 -->
	  <input type="hidden" name="pager"	value="${bdto.pager}">
	  <table width="600" align="center" class="dat_table">
	  	<tr>
	  		<td colspan="4" class="content"> <br>댓글<br><br></td>
	  	</tr>
	    <tr>
	     <td> <input type="text" name="name" size="6" placeholder=" 이  름 "> </td>
	     <td> <textarea cols="45" rows="3" name="content"  placeholder=""></textarea> </td>
	     <td> <input type="password" name="pwd" size="7" placeholder="비밀번호"> </td>
	     <td> <input type="submit" value="댓글" name="submit">
	     	  <input type="button" value="취소" name="reset" class="reset" onClick="editCan()">
	     </td>
	    </tr>
	  </table><br>
 </form>
<!-- 댓글 입력폼 끝-->
<!-- 비밀번호를 입력한 후 삭제로 이동하는 영역 (댓글삭제) 시작-->
 <form name="lys" method="post" action="dat_delete.jsp" id="dat_del">
  <input type="hidden" name="id">  <!-- dat테이블의 id -->
  <input type="hidden" name="bid"> <!-- board테이블의 id -->
   <input type="password" name="pwd" size="8" placeholder="비밀번호"/>
   <input type="submit" value="댓글삭제">
   <input type="button" value="취소" onclick="hide_del()" style="display:none">
 </form> 
<!-- 비밀번호를 입력한 후 삭제로 이동하는 영역 (댓글삭제) 끝-->
  
 
 
<!--  댓글 리스트 시작 -->
<%
   ArrayList<DatDto> dat = bdao.dat_List(Integer.parseInt(request.getParameter("id")));

   request.setAttribute("dat", dat);
     
 %>
  <!-- 현재글의 댓글을 출력하기 -->
  <table width="600" align="center" class="dat_table">
  <c:forEach items="${dat}" var="ddto">
    <tr>
      <td width="120" class="content">
      <span style="float:right">
      <input type="button" value="수정" onClick="edit_form('${ddto.id}','${ddto.name}','${ddto.contentEdit}')">
      <input type="button" value="삭제" onclick="dat_del(${ddto.id},${bdto.id})">
      </span>
      <br>
      <img src="new2.gif" width="10">&nbsp;&nbsp;
      ${ddto.name} .${ddto.writeday}<br><br>
      ${ddto.contenet}
      <br><br></td>
    </tr>  
   </c:forEach>
  </table>
<!--  댓글 리스트 끝-->

</body>
</html>











