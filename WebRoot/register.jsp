<%@page import="vo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>注册页面</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/register.css">

<script type="text/javascript">
function imgPreview(fileDom){
	if(window.FileReader){
		var reader=new FileReader();
	}else{
		alert("设备不支持");
	}
	var head=fileDom.files[0];
	var imageType=/^image\//;
	if(!imageType.test(head.type)){
		alert("请选择图片！");
		return;
	}
	reader.onload=function(e){
		var img=document.getElementById("default");
		img.src=e.target.result;
	};
	reader.readAsDataURL(head);
}
</script>
</head>

<body>
<div id="loginform">
<div id="mainlogin">
<h1>注册开启你的新世界吧</h1>
<s:form action="register.action" method="post" enctype="multipart/form-data">
<div class="photo"><img alt="用户头像" id="default"><br>
<a href="javascript:;" class="file animBtn themeA">上传头像<input type="file" name="file" onchange="imgPreview(this)"></a>
</div>
<br><br>
<input class="kuang" type="text" placeholder="取个喜欢的昵称" name="user.username" required>
<input class="kuang" type="password" placeholder="输入密码" name="user.password" required>
<input class="kuang" type="password" placeholder="和上面的密码一致"  required>
<input class="kuang" type="text" placeholder="输入你的年龄" name="user.age" required>
<p class="font">&nbsp;&nbsp;&nbsp;性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="m" id="man"value="男" name="user.sex">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="m" id="woman" value="女" name="user.sex">女</p>
<button type="submit">注册</button>

</s:form>
</div>
</div>
</body>
</html>

