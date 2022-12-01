<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div>앞패명단가입</div>
	<form action="/join.do" method="post">
		<div>아이디 : <input type="text" name="memberId" id="memberId" required><span></span></div>
		<div>비밀번호 : <input type="password" name="memberPw" id="pwVal" required><span></span></div>
		<div>비밀번호확인 : <input type="password" id="passwordConfirm" required><span></span></div>
		<div>전화번호 : <input type="text" name="phone" required></div>
		<div>E-mail : <input type="text" name="email" required></div>
		<input type="submit" value="회원가입하기">
	</form>
</body>
<script>
	//id중복체크
	$("#memberId").on("change",function(){
		const chkId = $("#memberId").val();
		$.ajax({
			url:"/idChk.do",
			data:{memberId:chkId},
			success:function(data){
				if(data == 1){
					$("#memberId").siblings("span").text("사용할 수 있는 아이디 입니다.");
				}else if(data == 0){
					$("#memberId").siblings("span").text("중복된 아이디 입니다.");
				}
			}
		});
	});
	
	//정규표현식선언
    const pwReg=/^[a-zA-Z0-9]{8,12}$/;
    const pwReg1=/[a-z]/;
    const pwReg2=/[A-Z]/;
    const pwReg3=/[0-9]/;
	
	$("#pwVal").on("keyup",function(){
		const pwValue=$("#pwVal").val();
		if(pwReg.test(pwValue)&&pwReg1.test(pwValue)&&pwReg2.test(pwValue)&&pwReg3.test(pwValue)){
			$("#pwVal").siblings("span").text("사용할 수 있는 비밀번호 입니다.");
			$("#pwVal").siblings("span").css("color","blue");
		}else{
			$("#pwVal").siblings("span").text("사용할 수 없는 비밀번호 입니다.");
			$("#pwVal").siblings("span").css("color","red");
		}
	});
	
	$("#passwordConfirm").on("keyup",function(){
		$("#passwordConfirm").siblings("span").text($("#passwordConfirm").val());
	});
</script>
</html>