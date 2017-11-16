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
			<s:iterator id="a" value="list">
                    <tr align="center">
                      <td><a href="hisMicroblog.action?user.username=${user.username}"><img src="${user.head}" class="photo1" alt="用户头像"></a></td>
                      <div class="mes"><td><font color="red">${user.username}</font><br>
                      <font color="brown">${time}</font></td>
                      </div>
                         <div class="contents"><td>${content}</td></div>
                    </tr>
			</tr>
			<br>
			<br>
			<br>
			<br>
			<br>
			<hr>
			<br>
			<br>
			</s:iterator>
		</div>
	</div>
</body>
</html>