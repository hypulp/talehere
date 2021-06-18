<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>tale, here</title>
<link href="/resources/styles.css" rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#logout").on("click", function() {
			location.href = '/logout'
		})

		$("#insert").on("click", function() {
			location.href = '/insertPage'
		})

	})
	function detail(index) {
		location.href = "/detail?TH_BOARD_NO=" + index;
	}
</script>
</head>
<body>
	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#">tale, here</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
					<li class="nav-item"><a id="logout" class="nav-link active"
						href="#">로그아웃</a></li>
					<!-- aria-current="page" -->
				</ul>
			</div>
		</div>
	</nav>
	<!-- Page header with logo and tagline-->
	<header class="py-5 bg-light border-bottom mb-4">
		<div class="container">
			<div class="text-center my-5">
				<h1 class="fw-bolder">윤이현 블로그</h1>
				<p class="lead mb-0">포토폴리오</p>
			</div>
		</div>
	</header>
	<!-- Page content-->
	<div class="container">
		<div class="row">
			<!-- Blog entries-->
			<div class="col-lg-8">
				<!-- Featured blog post-->
				<div class="card mb-4">
					<table class="table">
						<tr>
							<td>제목 :</td>
							<td>${detail.TH_BOARD_TITLE }</td>
						</tr>
						<tr>
							<td>작성자 :</td>
							<td>${detail.TH_USER_NICKNAME }</td>
						</tr>
						<tr>
							<td>내용 :</td>
							<td><textarea rows="9" cols="100" readonly="readonly">${detail.TH_BOARD_CONTENTS}</textarea></td>
						</tr>
						<tr>
							<td>작성일 :</td>
							<td>${detail.TH_BOARD_DATE}</td>
						</tr>

					</table>
					
					<div style="display: inherit;">
						<c:if test="${detail.TH_USER_ID == ID}">
							<form action="/edit" method="POST">
								<input name="TH_BOARD_NO" value="${detail.TH_BOARD_NO}" hidden="hidden">
								<button class="btn btn-primary" type="submit" style="margin-right: 10px;">edit</button>
							</form>
							
							<form action="/delete" method="POST">
								<input name="TH_BOARD_NO" value="${detail.TH_BOARD_NO}" hidden="hidden">
								<button class="btn btn-primary" type="submit">del</button>
							</form>
						</c:if>
					</div>
				</div>
			</div>
			<!-- Side widgets-->
			<div class="col-lg-4">
				<!-- Search widget-->
				<div class="card mb-4">
					<div class="card-header">글 검색</div>
					<div class="card-body">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="검색어"
								aria-label="Enter search term..."
								aria-describedby="button-search">
							<button class="btn btn-primary" id="button-search" type="button">Go!</button>
						</div>
					</div>
				</div>
				<!-- Categories widget-->
				<div class="card mb-4">
					<div class="card-header">사용 기술</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Web Design</a></li>
									<li><a href="#">HTML</a></li>
									<li><a href="#">Freebies</a></li>
								</ul>
							</div>
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">JavaScript</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">Tutorials</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Side widget-->
				<div class="card mb-4">
					<div class="card-header">포토폴리오</div>
					<div class="card-body" style="margin-bottom: 13px;">
						<br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright © Your Website
				2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script src="/resources/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/resources/scripts.js"></script>


</body>
</html>