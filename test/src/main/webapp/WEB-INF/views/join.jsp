<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tale, here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#homeBtn").on("click", function(){
		location.href='/'
	})	
})
</script>

</head>
<body>
<form action="/join" method="POST">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="TH_USER_ID"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="TH_USER_PASSWORD"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="TH_USER_NAME"></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input type="text" name="TH_USER_NICKNAME"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="TH_USER_BIRTH"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<select name="TH_USER_GENDER">
					<option value="0">남자</option>
					<option value="1">여자</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><input type="text" name="TH_USER_PH"></td>
		</tr>
	</table>
	<button type="submit">가입하기</button>
</form>
<button id="homeBtn" type="button">취소</button>
</body>
</html>