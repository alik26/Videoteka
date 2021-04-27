 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="javax.servlet.http.Cookie"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib   uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
 
 
<%@page import="ru.unlimited.Films"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.io.*, java.util.*, java.sql.*"%>

 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    <%@include file="/css/style.css"%>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@400;700&display=swap" rel="stylesheet"><title>Videoteka</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<jsp:useBean id="now" class="java.util.Date"/>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/videoteka"
 user = "root"  password = "root"/>
<sql:query dataSource="${db}" var="result">
Select * FROM good;
</sql:query>
<header>
   <div class="container">
   <div class="header__inner">
      <div class="header__logo">Videoteka</div> 
      <nav class="nav">
          <a class="nav__link" href="#"><i class="fa fas fa-search"></i></a>
        
          <a class="nav__link" href="/VideoLab/Index.jsp">Лучшие</a>
          <a class="nav__link" href="#">Фильмы</a>
          <a class="nav__link" href="/VideoLab/Serials.jsp">Сериалы</a>
          <a class="nav__link" href="/VideoLab/Kids.jsp">Детям</a>
          <a class="nav__link" href="/VideoLab/basket.jsp"><i class="fa fas fa-shopping-cart"></i></a>
         
      </nav>
   </div>
   </div>
</header>
<fmt:setLocale value="kz-KZ"/>
 
<c:set var="currentNumber" value="118000"/>
<div class="intro">

<br/>Сегодня: <fmt:formatDate value="${now}"/><br/>
 
  <div class="container">
    <section class="section">
        <div class="container">
            <div class="section__header"></div>
            <h3 class="section__title">Лучшие</h3>
            <div class="section__text">
                <p>
                 Cборник подготовленный по сбору и обработки рейтинга всех жанров фильма с использованием искуственного интелекта
                 
                </p>
            </div>

        </div>
 
        <div class="about">
        <c:set value="3" var="count"/>
          <c:forEach items="${result.rows}" var="row" varStatus = "count"> 
            
            <div class="about__item">
                <div class="about__img">
                   <img width = "300" height = "450" src="${row.img}">
                </div>
                <div class="about__title">
                  <c:out value="${row.name}" />
                 </div>
                 
                 <div class="about__price">
                 <br>
                 <p>Currency in KZ :
                    <fmt:setLocale value = "kz_KZ"/>
                      <fmt:formatNumber value = "${row.cost}" type = "currency"/>
                 </p>
 
                     <form action= "info" method="post"> 
                    <input type="submit" value="${row.name}"/>
                   </form>
 
                 </div>
            </div>
</c:forEach>
             
        </div>
        
        </div>
    </section>
  </div>
 
</body>
</html>