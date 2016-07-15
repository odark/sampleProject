<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OdarKK</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css"/>" />
<%@ include file="../commons/_header.jspf" %>
</head>
<body>
<div id="#wrapper">
	<%@ include file="../commons/_top.jspf" %>
	
<section>
	<div id="reg">
	<c:choose>
  <c:when test="${empty user.userId}">
  <!-- jstl에서 jsp값지정한것은 page scope에 해당되는 가장짧은 주기값이다. -->
  <c:set var="method" value="post" />
  </c:when>
  <c:otherwise>
  <c:set var="method" value="put" />
  </c:otherwise>
</c:choose>
<form:form modelAttribute="user" action="/user" method="${method}">
  <title> 회원가입 </title>
 <table width=550 border=1 align=center>
 <tr>
  <td colspan=2 bgcolor=#96956f align=center>회원가입${user.userId}1
 <tr>
  <td>아이디
  <td>
  <c:choose>
  <c:when test="${empty user.userId}">
	<form:input path="userId" />
	<form:errors path="userId" cssClass="error" />
  </c:when>
  <c:otherwise>
  	${user.userId}
  	<form:hidden path="userId"/>
  </c:otherwise>
  </c:choose>
 <tr>
  <td>비밀번호
  <td><form:password path="password" />
  <form:errors path="password" cssClass="error" />

 <tr>
  <td>이름
  <td><form:input path="name" />
  <form:errors path="name" cssClass="error" />

 <tr>
  <td>E-Mail
  <td><form:input path="email" />
  <form:errors path="email" cssClass="error" />

  <td bgcolor=#eeeeee colspan=2 align=center>
  <input type=submit value='회원가입'>

</table>
</form:form>
</div>
</section>
<footer>
<p>Copyright 2016 odark</p>
</footer>
</div>
</body>
</html>
