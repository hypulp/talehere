<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>tale, here</title>
<style type="text/css">
body {
    background-color: #FBE97B;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#join").on("click", function(){
		location.href='/join'
	})	
})
</script>
</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<div class="card align-middle" style="width: 20rem;border-radius: 20px;margin-top: 12%;margin-left: 40%;">
		<div class="card-title" style="margin-top: 30px; margin-bottom: 0px;">
			<h2 class="card-title text-center" style="color: #113366;">tale, here</h2>
		</div>
		<div class="card-body" >
			<form class="form-signin" method="POST" action="/login">
				<label for="inputEmail" class="sr-only">Your ID</label> 
				<input type="text" name="TH_USER_ID" class="form-control" required autofocus><br>
				<label for="inputPassword"class="sr-only">Password</label>
				<input type="password" name="TH_USER_PASSWORD" class="form-control" ><br>
				<button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">SIGN IN</button>
				<button id="join" class="btn btn-lg btn-primary btn-block" type="button">SIGN UP</button>
			</form>
		</div>
	</div>

	<div class="modal"></div>	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>