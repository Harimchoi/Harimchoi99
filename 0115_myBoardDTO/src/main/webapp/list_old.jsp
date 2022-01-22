
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList"%>    
<%@page import="java.sql.*" %>
<%@page import="myBoard.BoardDao" %>    
<%@page import="myBoard.BoardDto" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
 
	BoardDao bdao = new BoardDao();
	ArrayList<BoardDto> list = bdao.list(request, response); //list에서 사용할 레코드를 가져옴.
	
	request.setAttribute("list", list); //el표현식에서 사용하려고 선언. <-스프링
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메가IT게시판</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
   <%@ include file="title.jsp" %>
   
   <table width="700" align="center" border="1">
     <tr class="title">
       <td width="80"> 순서 </td>
       <td width="100"> 이름 </td>
       <td> 제목 </td>
       <td width="80"> 조회수 </td>
       <td width="120"> 작성일 </td>
     </tr>
   
   <c:set var="line" value="0"/>
   <c:forEach items="${list}" var="bdto">
   	<c:if test="${line%2==0}">
   		<c:set var="bg" value="bg"/>
   	</c:if>
     <tr onMouseover="over(this)" onMouseout="out(this)" class="link ${bg}" onClick="location.href='readnum_old.jsp?id=${bdto.id}&pager=${bdto.pager}'" >
       <td>${bdto.id}</td>
       <td>${bdto.name}</td>
       <td class="content" >
       ${bdto.title}
       <img src="dat.gif">
       <c:set var="bid" value="${bdto.id }"/><!-- jstl로 변수 선언을 하면 jsp에서는 pageContext로 읽을 수 있다. -->
       <%
       		int id = (int)pageContext.getAttribute("bid");
       		int cnt = bdao.datCount(id);		
       		request.setAttribute("cnt",cnt);
       %>
       ${cnt}
       </td>
       <td>${bdto.readnum}</td>
       <td>${bdto.writeday}</td>
     </tr>
   <c:set var="line" value="${line+1}"/>
   <c:set var="pager" value="${bdto.pager}"/>
   </c:forEach>
   <c:forEach begin="${line}" end="9">
   <c:if test="${line%2==0}">
   		<c:set var="bg" value="bg"/>
   	</c:if>
  	   <tr onMouseover="over(this)" onMouseout="out(this)" class="link ${bg}" >
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
     </tr>
   <c:set var="line" value="${line+1}"/>
   </c:forEach>
   <tr class="bt">
     <td colspan="5"> <input type="button" value="글쓰기" onClick="location='write.jsp'" class="red"> </td>
    </tr>
   <!-- 페이지 시작************ -->
	
    <%
     int pager = (int)pageContext.getAttribute("pager");
     String[] pg = bdao.getPager(pager).split(",");
     
     request.setAttribute("pstart", pg[0]);
     request.setAttribute("pend", pg[1]);
     request.setAttribute("chong", pg[2]);
     %>
    <tr>
      <td colspan="5" align="center">
      <span onclick="location='list_old.jsp?pager=1'" class="link page">↖</span>
      <!-- 10페이지 단위로 이전으로 이동하기 끝-->
	<c:if test="${pstart!=1}">      
    	<span onclick="location='list_old.jsp?pager=${pstart-1}'" class="link page" style="width:50px;">이전 </span>
    </c:if>
    <c:if test="${pstart==0}">
    	<span class="page" style="width:50px;">이전</span>
	</c:if>
    <!-- 10페이지 단위로 이전으로 이동하기 끝 -->
    <!-- 1페이지 단위로 이전으로 이동하기 시작 -->
    <c:if test="${pager!= 1}">
       <span onclick="location='list_old.jsp?pager=${pager-1}'"  class="link page">◀ </span>
    </c:if>
    <c:if test="${pager==1}">
  	  <span class="page">◀</span> 
    <!-- 1페이지 단위로 이전으로 이동하기 끝 -->
    </c:if>
    <c:set var="str" value=""/>
    <c:set var="cntPg" value="0"/>
    <c:forEach var="i" begin="${pstart}" end="${pend}">
    	<c:if test="${pager==i}">
    		<c:set var="str" value="style='color:red'"/>
    	</c:if>
    	<c:if test="${pager!=i}">
    		<c:set var="str" value=""/>
    	</c:if>
        <span onClick="location='list_old.jsp?pager=${i}'" ${str} class="link page"> ${i} </span> <!-- 페이지 출력 -->
        <c:set var="cntPg" value="${cntPg+1}"/>
   </c:forEach>
   <c:forEach begin="${cntPg}" end="9">
      	<span class="link page">&nbsp;</span>
        <c:set var="cntPg" value="${cntPg+1}"/>
   </c:forEach> 
     <!--  1페이지 단위로 다음으로 이동하기 시작 -->
   <c:if test="${pager!=chong}">
        <span onclick="location='list_old.jsp?pager=${pager+1}'" class="link page">▶</span>
   </c:if>
   <c:if test="${pager==chong}">
	  <span class="page">▶</span>
   </c:if>
      <!--  1페이지 단위로 다음으로 이동하기 끝-->
      <!-- 10페이지 단위로 다음페이지 이동 시작 => 그다음 10개의 출력페이지 중에 현재그룹이랑 가장 가까운 페이지-->

	<c:if test="${chong != pend}">
	   <span onclick="location='list_old.jsp?pager=${pend+1}'" class="link page" style="width:50px;"> 다음 </span>
	</c:if>
	<c:if test="${chong == pend}">
	   <span class="page" style="width:50px;">다음</span>
	</c:if>
	  <!-- 10페이지 단위로 다음페이지 이동 끝 -->
	  <span onclick="location='list_old.jsp?pager=${chong}'" class="link page">↗</span>
      </td>
    </tr>
 <!-- 페이지 끝************ -->   
   </table>
</body>
</html>
















