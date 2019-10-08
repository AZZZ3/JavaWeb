<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta contentType="text/html; charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm1() {
		if (document.getElementById("username").value.length < 3
				|| document.getElementById("username").value.length > 5) {
			document.getElementById("tips_username").innerHTML = "<span style = 'color:#FF0000'>用户名由3-5位字符组成</span>";

			return false;
		} else {
			document.getElementById("tips_username").innerHTML = "<span style = 'color:#00FF00'>用户名由3-5位字符组成</span>";

			return true;
		}
	}

	function checkForm2() {

		//正则表达式，由字母，数字和下划线组成
		var reg = /[^A-Za-z0-9_]+/;
		var regs = /^[a-zA-Z0-9_\u4e00-\u9fa5]+$/;

		//判断密码长度是否符合规则
		if (document.getElementById("pwd").value.length < 8
				|| document.getElementById("pwd").value.length > 12) {
			document.getElementById("tips_password").innerHTML = "<span style = 'color:#FF0000'>请输入8-12位密码</span>";

			return false;

		} else {
			document.getElementById("tips_password").innerHTML = "<span style = 'color:#00FF00'>请输入8-12位密码</span>";

			return true;
		}

	}

	function checkForm3() {

		//正则表达式，由字母，数字和下划线组成
		var reg = /[^A-Za-z0-9_]+/;
		var regs = /^[a-zA-Z0-9_\u4e00-\u9fa5]+$/;

		//判断密码长度是否符合规则
		if (document.getElementById("pwdrepeat").value.length != document
				.getElementById("pwd").value.length) {
			document.getElementById("tips_padrepeat").innerHTML = "<span style = 'color:#FF0000'>两次密码不一致</span>";

			return false;

		} else {
			document.getElementById("tips_padrepeat").innerHTML = "<span style = 'color:#00FF00'>密码一致</span>";

			return true;
		}

	}

	function checkForm4() {
		
		var email = document.getElementById("email").value;
		var pattern = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\:\|\\\/\(\)\[\]\{\}]+@[a-zA-Z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		if (!pattern.test(email))
			{
				document.getElementById("tips_email").innerHTML 
				= "<span style = 'color:#FF0000'>格式示例：xxxxxxxx@163.com</span>";
				return false;
			}
		else{
			document.getElementById("tips_email").innerHTML 
			= "<span style = 'color:#00FF00'>格式示例：xxxxxxxx@163.com</span>";
			return true;
		}
	}

	function checkForm5() {
		if (document.getElementById("telnum").value.length != 11) {
			document.getElementById("tips_telnum").innerHTML = "<span style = 'color:#FF0000'>格式示例：15236440000</span>";

			return false;
		} else {
			document.getElementById("tips_telnum").innerHTML = "<span style = 'color:#00FF00'>格式示例：15236440000</span>";

			return true;
		}
	}

	function checkForm6() {
		if (document.getElementById("realname").value.length < 2
				|| document.getElementById("realname").value.length > 5) {
			document.getElementById("tips_realname").innerHTML = "<span style = 'color:#FF0000'>由2-5个中文组成</span>";

			return false;
		} else {
			document.getElementById("tips_realname").innerHTML = "<span style = 'color:#00FF00'>由2-5个中文组成</span>";

			return true;
		}
	}
</script>
</head>
<body>
	<p
		style="text-align: center; text-shadow: 2px 2px 5px orange; font-size: 25px; font-weight: bold; color: red">用户注册</p>
	<form>
		<table align="center" width="600">
			<tr>
				<td align="right"><span style="color: red">*</span>用户名:</td>
				<td><input name="username" id="username" type="text"
					style="width: 240px" onBlur="return checkForm1()"></input><span
					id="tips_username" name="tips_username">用户名由3-5个字符组成</span></td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>密码:</td>
				<td><input name="password" id="pwd" type="password"
					onBlur="return checkForm2()" style="width: 240px"></input> <span
					id="tips_password" name="tips_password">请输入8-12位密码</span></td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>确认密码:</td>
				<td><input name="pwdrepeat" type="password"
					style="width: 240px" id="pwdrepeat" onBlur="return checkForm3()"></input>
					<span id="tips_padrepeat" name="tips_padrepeat">两次密码不一致</span></td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>Email:</td>
				<td><input name="email" type="email" onBlur = "return checkForm4()" style="width: 240px"></input>
					<span id="tips_email" name="tips_email">格式示例：xxxxxxxx@163.com</span>
				</td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>手机号码:</td>
				<td><input name="telnum" type="text" id="telnum"
					onBlur="return checkForm5()" style="width: 240px"></input> <span
					id="tips_telnum" name="tips_telnum">格式示例：15236440000</span></td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>真实姓名:</td>
				<td><input name="realname" type="text" id="realname"
					onBlur="return checkForm6()" style="width: 240px"></input> <span
					id="tips_realname" name="tips_realname">由2-5个中文组成</span></td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>省份：</td>
				<td><select name="province" style="width: 60px">
						<option value="1">北京</option>
						<option value="2">河南</option>
						<option value="3">上海</option>
				</select>&nbsp;&nbsp;请选择省份</td>
			</tr>
			<tr>
				<td align="right"><span style="color: red">*</span>技术方向：</td>
				<td><input name="tec" type="radio" value="Java" />Java <input
					name="tec" type="radio" value=".Net" />.Net <input name="tec"
					type="radio" value="PHP" />PHP <input name="tec" type="radio"
					value="Web" />网络 <input name="tec" type="radio" value="IOS" />IOS
					<input name="tec" type="radio" value="And" />Android</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="submit" value="注册" /> <input type="reset" name="reset"
					value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>