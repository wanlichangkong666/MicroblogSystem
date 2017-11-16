<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="dao.FanDao,vo.Fan,dao.impl.FanDaoImpl,dao.MicroblogDao,dao.impl.MicroblogDaoImpl,vo.Microblog,dao.UserDao,vo.User,dao.impl.UserDaoImpl,action.Login" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>微博-关注的人</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/idol.css">
</head>

<body>
<% FanDao f=new FanDaoImpl();
UserDao u=new UserDaoImpl();
User user=(User)session.getAttribute("user");
String name=user.getUsername();
MicroblogDao m=new MicroblogDaoImpl();%>
<div class="head">
	<p class="move"></p>
	<a href="#"><img src="${user.head}" class="photo" alt="用户头像"></a>
	<p id="name">${user.username}</p>
	<ul id="menu1">
    <li class="item"><a href="idols.action"><%=f.findByFusername(name).size() %><br>关注</a></li>
		<li class="item"><a href="fans.action" ><%=f.findByUsername(name).size() %><br>粉丝</a></li>
		<li class="item"><a href="myMicroblog.action" ><%=m.findByUser(user).size() %><br>微博</a></li>
	</ul>
</div>
<div class="main">
	<img src="css/images/22.png"><br>
	<s:iterator id="a" value="list">
	             <tr align="center">
                      <td><a href="hisMicroblog.action?user.username=${userByUsername.username}"><img src="${userByUsername.head}" class="photo1" alt="用户头像"></a></td>
                      <div class="mes"><td><font color="red">${userByUsername.username}</font>
                      <br><font color="purple">${userByUsername.sex}</font>
                      <br><font color="brown">${userByUsername.age}</font>
                      </div>
                    </tr>	<%
	FanDao fDao=new FanDaoImpl();
	int have=fDao.have(user.getUsername(),(String)session.getAttribute("hisname"));
	if(have!=0){	have=have-1;
	%>
	<a href="deleteIdol.action?username=${user.username}&have=${have}" class="btn">取消关注</a>
	
	<%} else{%>
	<a href="deleteIdol.action?username=${user.username}&have=${have}" class="btn">取消关注</a>
	<%
	} %>
                    <br><br><br><br><br><hr><br><br>
                  </s:iterator>
</div>
</body>
</html>