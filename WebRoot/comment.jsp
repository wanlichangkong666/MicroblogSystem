<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>评论</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/comment.css">
</head>

<body>

	<div class="emoji  emoji--like">
		<div class="emoji__hand">
			<div class="emoji__thumb"></div>
		</div>
	</div>
	<div class="emoji  emoji--love">
		<div class="emoji__heart"></div>
	</div>

	<div class="conent">
		<div>
			<tr align="center">
				<td><img src="${microblog.user.head}" class="photo1" alt="用户头像"></td>
				<div class="mes">
					<td><font color="red">${microblog.user.username}</font><br>
					<font color="purple">${microblog.theme}</font><br>
					<font color="brown">${microblog.time}</font></td>
				</div>
				<div class="contents">
					<td>${microblog.content}</td>
				</div>
			</tr>
			<br>
			<br>
			<br>
			<br>
			<br>
			<hr>
			<br>
			<br>
		</div>
		<div>
			<form action="putComment.action" method="post">
				<textarea name="comment.content" class="kuang" type="text" value=""
					required cols="10" rows="10"></textarea>
				<input type="submit" value="提交" id="btn">
		</div>
	</div>
</body>
</html>