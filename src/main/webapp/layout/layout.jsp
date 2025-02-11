<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀 : <sitemesh: write property='title'/></title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Lovely Dog</title>

    <link rel="icon" href="/images/강아지로고3.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
     <script src="https://kit.fontawesome.com/f2a21115f0.js" crossorigin="anonymous"></script>
     <sitemesh:write property='head'/>
     <style type="text/css">* {cursor: url(https://cur.cursors-4u.net/nature/nat-10/nat979.ani), url(https://cur.cursors-4u.net/nature/nat-10/nat979.gif), auto !important;}</style><a href="https://www.cursors-4u.com/cursor/2011/12/15/corgi.html" target="_blank" title="Corgi"><img src="https://cur.cursors-4u.net/cursor.png" border="0" alt="Corgi" style="position:absolute; top: 0px; right: 0px;" /></a>
<style>

nav {
    padding: 2rem;
    position:fixed;
  }
  .first-img {
    width: 100vw;
  }
  .btn-outline-success {
    color: chocolate;
    border-color: chocolate;
  }
  .btn-outline-success:hover {
    background-color: chocolate;
    color: white;
    border-color: chocolate;
  }
  .card:hover {
    transform: scale(1.05);
    transition: 0.5s ease-in-out;
  }
  footer {
    background: #19110b;
    font-size: 14px;
  }
  .first-line {
    color: white;
    border-bottom: 1px solid #392d23;
  }
  .second-line a {
    color: white;
    text-decoration: none;
  }
  .flag {
    color: white;
  }
  .mobile-footer {
    border-top: 1px solid #392d23;
    color: white;
    text-align: center;
    font-size: 1.125rem;
    font-weight: 300;
    padding-top: 2rem;
    padding-bottom: 2rem;
    align-items: center;
    display: none;
  }
  @media screen and (max-width: 48rem) {
    .second-line {
      padding: 0 2rem;
    }
  
    .flag {
      display: none;
    }
  
    .first-line {
      text-align: center;
    }
  
    .mobile-footer {
      display: block;
    }
  }
  .col {
    padding-bottom: 1rem;
  }
  .flag-img {
    margin: 0 0.5rem;
  }
  
  
</style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <nav class="navbar navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="${pageContext.request.contextPath}/main/main">
                <img src="https://img.freepik.com/premium-vector/cute-shiba-…al-pet-shop-pet-logo-product_123553-258.jpg?w=740" alt="" width="30" height="24" class="d-inline-block align-text-top">
                Kic Dog   
                <!-- 버튼으로 구현하기 -->
              </a>
            </div>
          </nav>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/main/main" onmouseover="changeWord(this, ['홈', 'Home'])">Home</a>
    </li>
   
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" onmouseover="changeWord(this, ['커뮤니티', 'Community'])" >
        Community
      </a>
      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/board1/boardList?boardid=1">자유게시판</a></li>
	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/board2/board2List">정보 &amp;공유게시판</a></li>  
		<li><a class="dropdown-item"href="${pageContext.request.contextPath}/board3/board3List?boardid=3">친구 찾기</a></li>
      </ul>
    </li>
    
  
    <li class="nav-item">
      <a href="${pageContext.request.contextPath}/api/maps" class="nav-link"  onmouseover="changeWord(this, ['지역 정보', 'Location information'])">Location information</a>
    </li>
    	
   
    


  </ul>
</div>

<script>
  function changeWord(element, words) {
    var currentWord = element.innerHTML;
    var index = words.indexOf(currentWord);

    if (index === -1) {
      index = 0; // 기본적으로 첫 번째 단어로 시작
    } else {
      index = (index + 1) % words.length; // 다음 단어로 변경
    }

    element.innerHTML = words[index];
  }
</script>

            <div class="navbar-nav">
  <c:if  test="${email!=null}" >
    <a class="nav-link" href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
    <a class="nav-link" href="${pageContext.request.contextPath}/member/myinfo">내 정보</a>
  </c:if>
  <c:if  test="${email==null}" >
    <a class="nav-link" href="${pageContext.request.contextPath}/member/login">로그인</a>
    <a class="nav-link" href="${pageContext.request.contextPath}/member/custom_signup">회원가입</a>
  </c:if>
</div>
          </div>
        </div>
      </nav>

<div  class="mainBody"><sitemesh:write  property='body'/></div>

<div>	
	<footer>
    <div class="container">
        <div class="first-line pb-5 pt-5">
            <h2> <i class="fa-solid fa-dog"></i>   Kicdog   <i class="fa-solid fa-heart"></i>	</h2>
            <span class="social-icons">
                <a href="#"><i class="fa-brands fa-instagram"></i></i></a>
                <a href="#"><i class="fa-brands fa-facebook"></i></i></a>
              	<a href="#"><i class="fa-brands fa-twitter"></i></i></a>
            </span>
            <div>
            <i class="fa-solid fa-phone">01082821004</i>
            </div>
        </div>
            <div class="row pb-5 pt-5 second-line ">
                <div class="flag col">
                    <img src="" width=16 height=12 />
                    Republic korea
                </div>
                <div class="col"><a href="#">
                    Email Sign-Up</a></div>
                <div class="col"> <a href="#">Contact Us</a></div>
                <div class="col"> <a href="#">Apps</a></div>
                <div class="col"> <a href="#">Follow Us</a></div>
                <div class="col"> <a href="#">California Transparency</a></div>
                <div class="col"><a href="#"> Legal Notice</a></div>
                <div class="col"> <a href="#">Careers</a></div>
                <div class="col"> <a href="#">Sitemap</a></div>     
            </div>         
            <div class=" mobile-footer">
                Shipt to : <img src="https://us.louisvuitton.com/flags/us.svg"
                    width=16 height=12 class="flag-img" /> Unitied States
            </div>
        </div>
    </footer>


    




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>

</div>
</body>
</html>