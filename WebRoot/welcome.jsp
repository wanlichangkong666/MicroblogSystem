<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page
	import="dao.CommentDao,dao.impl.CommentDaoImpl,java.util.List,vo.Comment"%>
<%@ page
	import="dao.FanDao,vo.Fan,dao.impl.FanDaoImpl,dao.MicroblogDao,dao.impl.MicroblogDaoImpl,vo.Microblog,dao.UserDao,vo.User,dao.impl.UserDaoImpl,action.Login"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta charset="utf-8">
<title>微博-发现新鲜事</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/welcome.css">
</head>
<script>
function $(element){
return element = document.getElementById(element);
}
function $D(){
var d=$('class1content');
var h=d.offsetHeight;
var maxh=300;
function dmove(){
h+=50; //设置层展开的速度
if(h>=maxh){
d.style.height='300px';
clearInterval(iIntervalId);
}else{
d.style.display='block';
d.style.height=h+'px';
}
}
iIntervalId=setInterval(dmove,2);
}
function $D2(){
var d=$('class1content');
var h=d.offsetHeight;
var maxh=3;
function dmove(){
h-=50;//设置层收缩的速度
if(h<=0){
d.style.display='none';
clearInterval(iIntervalId);
}else{
d.style.height=h+'px';
}
}
iIntervalId=setInterval(dmove,2);
}
function $use(){
var d=$('class1content');
var sb=$('stateBut');
if(d.style.display=='none'){
$D();
sb.innerHTML='收缩';
}else{
$D2();
sb.innerHTML='展开';
}
}
</script>
<body>
	<%
		FanDao f = new FanDaoImpl();
		UserDao u = new UserDaoImpl();
		User user = (User) session.getAttribute("user");
		String name = user.getUsername();
		MicroblogDao m = new MicroblogDaoImpl();
	%>
	<div class="head">
		<p class="move"></p>
		<a href="hisMicroblog.action?user.username=${user.username}"><img src="${user.head}" class="photo" alt="用户头像"></a>
		<p id="name">${sessionScope.user.username}</p>
		<ul id="menu1">
			<li class="item"><a href="idols.action"><%=f.findByFusername(name).size()%><br>关注</a></li>
			<li class="item"><a href="fans.action"><%=f.findByUsername(name).size()%><br>粉丝</a></li>
			<li class="item"><a href="myMicroblog.action"><%=m.findByUser(user).size()%><br>微博</a></li>
		</ul>


	</div>
	<div>
	<div class="navTmp" ></div>
		<div class="guide">
			<ul class="list">
				<li><div class="border"></div> <span class="icon">A</span>
					<div class="text">
						<h2>
							<a href="animation.action" target="_blank">动漫</a>
						</h2>
						<h3>animation</h3>
					</div></li>
				<li>
					<div class="border"></div> <span class="icon">D</span>
					<div class="text">
						<h2>
							<a href="daily.action" target="_blank">日常</a>
						</h2>
						<h3>daily</h3>
					</div>
				</li>
				<li>
					<div class="border"></div> <span class="icon">F</span>
					<div class="text">
						<h2>
							<a href="fresh.action" target="_blank">新鲜事</a>
						</h2>
						<h3>fresh</h3>
					</div>
				</li>
				<li>
					<div class="border"></div> <span class="icon">L</span>
					<div class="text">
						<h2>
							<a href="laugh.action" target="_blank">搞笑</a>
						</h2>
						<h3>laugh</h3>
					</div>
				</li>
				<li>
					<div class="border"></div> <span class="icon">M</span>
					<div class="text">
						<h2>
							<a href="military.action" target="_blank">军事</a>
						</h2>
						<h3>military</h3>
					</div>
				</li>
				<li>
					<div class="border"></div> <span class="icon">S</span>
					<div class="text">
						<h2>
							<a href="star.action" target="_blank">明星</a>
						</h2>
						<h3>star</h3>
					</div>
				</li>
				<li>
					<div class="border"></div> <span class="icon">O</span>
					<div class="text">
						<h2>
							<a href="other.action" target="_blank">其他</a>
						</h2>
						<h3>other</h3>
					</div>
				</li>
			</ul>
		</div>
		<div class="write">
			<br> <br>
			<s:iterator value="list">
				<tr align="center">
					<td><a
						href="hisMicroblog.action?user.username=${user.username}"><img
							src="${user.head}" class="photo1" alt="用户头像"></td>
					</a>
					<div class="mes">

						<td><font color="red"><a
								href="hisMicroblog.action?user.username=${user.username}">${user.username}</a></font><br>
							<font color="purple">${theme}</font><br> <font color="brown">${time}</font></td>
					</div>
					<div class="contents">
						<td>${content}</td>
					</div>
					<div id="comment">
						<a href="oneMicroblog.action?id=${id}" class="btn">评论</a>
						<a href="otherComment.action?id=${id}" class="btn1">查看全部评论</a>
						
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
	</div>
</body>
  </script>
</html>