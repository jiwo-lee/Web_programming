<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
var pw_passed = true;  
	function checkPasswd() {
		var id = document.getElementById("id").value;
		var passwd = document.getElementById("passwd").value;
		var passwdConfirm = document.getElementById("passwdConfirm").value;
		pw_passed = true;
		
		if (id.length == 0) {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (passwd.length == 0) {
			alert("비밀번호를 입력해주세요");
			return false;

		} else {
			if (passwd != passwdConfirm) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;

			}
		}		

		var SameChar = 0; //동일문자 카운트
		var sequenceCount1 = 0; //연속성(+) 카운드
		var sequenceCount2 = 0; //연속성(-) 카운드

		for (var i = 0; i < passwd.length; i++) {
			var char0;
			var char1;
			var char2;

			if (i >= 2) {
				char0 = passwd.charCodeAt(i - 2);
				char1 = passwd.charCodeAt(i - 1);
				char2 = passwd.charCodeAt(i);

				//동일문자 카운트
				if ((char0 == char1) && (char1 == char2)) 
					SameChar++;
				 else 
					SameChar = 0;

			
				//연속성(+) 카운드

				if (char0 - char1 == 1 && char1 - char2 == 1)
					sequenceCount1++;
				 else
					sequenceCount1 = 0;

				

				//연속성(-) 카운드

				if (char0 - char1 == -1 && char1 - char2 == -1)
					sequenceCount2++;

				else

					sequenceCount2 = 0;			

			}

			if (SameChar > 0) {

				alert("비밀번호는 동일문자를 3자 이상 연속 입력할 수 없습니다.");

				pw_passed = false;

			}

			if (sequenceCount1 > 0 || sequenceCount2 > 0) {

				alert("비밀번호는 영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");

				pw_passed = false;

			}

			if (!pw_passed) {

				return false;

				break;

			}

		}
		
		var pattern1 = /[0-9]/;
        var pattern2 = /[a-zA-Z]/;
        var pattern3 = /[~!@\#$%<>^&*]/;   

        var pw_msg = "";
		
		if(!pattern1.test(passwd)||!pattern2.test(passwd)||!pattern3.test(passwd)||passwd.length<8||passwd.length>50){
            alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
            return false;
        }  
		
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		
		var regExpNum = /^\d{6}-\d{7}$/;
		var num = form.num1.value + "-" + form.num2.value;
		var num1 = form.num1.value;
		var num2 = form.num2.value;
		
		
		if (!regExpPhone.test(phone)) {
			alert("연락처 입력을 확인해 주세요!");
			return;
		}

		if (num1.length == 0) {
			alert("첫번째 주민번호를 입력해주세요");
			return false;
		}
		if (num2.length == 0) {
			alert("두번째 주민번호를 입력해주세요");
			return false;
		}
		if (!regExpNum.test(num)) {
			alert("주민번호는 숫자만 허용하며 앞 6자리와 뒤 7자리로 입력해 주세요!");
			return;
		}

		//return true;
		document.form.submit();

	}
</script>
<body>
	<form name="form" action="validation_process022.jsp" method="post">
		<p>아이디 : <input type="text" id="id" name="id">
		<p>비밀번호 : <input type="text" id="passwd" name="passwd">
		<p>비밀번호 확인 : <input type="text" id="passwdConfirm"> 
		<p>연락처 : <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
				</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
				<input type="text" maxlength="4" size="4" name="phone3">
		<p>주민번호 : <input type="text" maxlength="6" size="6" name="num1"> -
				<input type="text" maxlength="7" size="7" name="num2">
		<p><input type="button" value="전송" onclick="checkPasswd()">
	</form>
</body>
<html>