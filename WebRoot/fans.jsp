<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page import="dao.impl.FanDaoImpl"%>
<%@page import="dao.FanDao"%>
<%@page import="vo.Fan"%>
<%@page import="vo.User"%>
<%@ page
	import="dao.FanDao,vo.Fan,dao.impl.FanDaoImpl,dao.MicroblogDao,dao.impl.MicroblogDaoImpl,vo.Microblog,dao.UserDao,vo.User,dao.impl.UserDaoImpl,action.Login"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>我的粉丝</title>
<link type="text/css" rel="stylesheet" href="css/fans.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body background="css/images/3.jpg">
	<%
		FanDao f = new FanDaoImpl();
		UserDao u = new UserDaoImpl();
		User user = (User) session.getAttribute("user");
		String name = user.getUsername();
		MicroblogDao m = new MicroblogDaoImpl();
	%>
	<div class="head">
		<p class="move"></p>
		<a href="myMicroblog.action?user.username=${user.username}"><img src="${user.head}" class="photo" alt="用户头像"></a>
		<p id="name">${user.username}</p>
		<ul id="menu1">
			<li class="item"><a href="idols.action"><%=f.findByFusername(name).size()%><br>关注</a></li>
			<li class="item"><a href="fans.action"><%=f.findByUsername(name).size()%><br>粉丝</a></li>
			<li class="item"><a href="myMicroblog.action"><%=m.findByUser(user).size()%><br>微博</a></li>
		</ul>
	</div>
	<div class="main">
		<img src="css/images/21.png"><br>
		<s:iterator id="a" value="list">
			<tr align="center">
				<td><a href="hisMicroblog.action?user.username=${userByFusername.username}"><img src="${userByFusername.head}" class="photo1"
					alt="用户头像"></a></td>
				<div class="mes">
					<td><font color="red">${userByFusername.username}</font><br>
						<font color="purple">${userByFusername.sex}</font> <br>
					<font color="brown">${userByFusername.age}</font></td>
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
		</s:iterator>
	</div>
</body>
</html>