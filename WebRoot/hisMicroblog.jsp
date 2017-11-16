<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="dao.impl.FanDaoImpl"%>
<%@page import="dao.FanDao"%>
<%@page import="vo.Fan"%>
<%@page import="vo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>微博-发现新鲜事</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/hisMicroblog.css">
<style>
	body{
		background: url(css/images/3.jpg);
		background-repeat: no-repeat;
		background-attachment:fixed;
		  background-size: cover;
	}
	.head{
		align-content: center;
		margin:10px 250px;
		height: 260px;
		width:1000px;
		background: url(css/images/10.jpg);
		background-repeat: no-repeat;
	}
		.photo{
		margin-top:50px;
		margin-left:425px;
		border-radius: 360px;
		height: 80px;
		width: 80px;
	}
		#name{
		margin: 5px 430px;
		width: 100px;
		align-content: center;
		font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
		font-size: 18px;
		color:hsla(0,0%,0%,1.00);font-weight: 400;
	}
	.write1{
	width: 1000px;
	margin:20px 250px;
	background:rgba(249,138,249,0.3);
}
	.connect1 {
	margin-top:10px;
	margin-left:650px;
		text-align:center;
		align-content: center;
	width:55px;
	height:20px;
  display: inline-block;
  padding: .6em 1.1em;
  font-size: 15px;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #fe4365;
  border-radius: 3px;
  -webkit-background-clip: padding-box;
  background-clip: padding-box;
  -webkit-box-shadow: 0 0 0 -2px #cff09e, 0 0 0 -1px #fe4365;
  box-shadow: 0 0 0 -2px #cff09e, 0 0 0 -1px #fe4365;
  border: none;
  -webkit-transition: -webkit-box-shadow .3s;
  transition: box-shadow .3s;
}
	.connect1:hover, .connect1:focus {
  -webkit-box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #ff0364;
  box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #ff0364;
  -webkit-transition-timing-function: cubic-bezier(0.6, 4, 0.3, 0.8);
  transition-timing-function: cubic-bezier(0.6, 4, 0.3, 0.8);
  -webkit-animation: gelatine 0.5s 1;
  animation: gelatine 0.5s 1;
}
	.connect1:active {
  background: #4ecdc4;
  -webkit-transition-duration: 0;
  transition-duration: 0;
  -webkit-box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #3ac7bd;
  box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #3ac7bd;
}
	@keyframes gelatine {
  from, to {
    -webkit-transform: scale(1, 1);
    transform: scale(1, 1);
  }

  25% {
    -webkit-transform: scale(0.9, 1.1);
    transform: scale(0.9, 1.1);
  }

  50% {
    -webkit-transform: scale(1.1, 0.9);
    transform: scale(1.1, 0.9);
  }

  75% {
    -webkit-transform: scale(0.95, 1.05);
    transform: scale(0.95, 1.05);
  }

  from, to {
    -webkit-transform: scale(1, 1);
    transform: scale(1, 1);
  }

  25% {
    -webkit-transform: scale(0.9, 1.1);
    transform: scale(0.9, 1.1);
  }

  50% {
    -webkit-transform: scale(1.1, 0.9);
    transform: scale(1.1, 0.9);
  }

  75% {
    -webkit-transform: scale(0.95, 1.05);
    transform: scale(0.95, 1.05);
  }
	}
.connect {
	margin-top:10px;
	margin-left:415px;
	text-align:center;
		align-content: center;
	width:73px;
	height:20px;
  display: inline-block;
  padding: .6em 1.1em;
  font-size: 15px;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #fe4365;
  border-radius: 3px;
  -webkit-background-clip: padding-box;
  background-clip: padding-box;
  -webkit-box-shadow: 0 0 0 -2px #cff09e, 0 0 0 -1px #fe4365;
  box-shadow: 0 0 0 -2px #cff09e, 0 0 0 -1px #fe4365;
  border: none;
  -webkit-transition: -webkit-box-shadow .3s;
  transition: box-shadow .3s;
}
	.connect:hover, .connect:focus {
  -webkit-box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #ff0364;
  box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #ff0364;
  -webkit-transition-timing-function: cubic-bezier(0.6, 4, 0.3, 0.8);
  transition-timing-function: cubic-bezier(0.6, 4, 0.3, 0.8);
  -webkit-animation: gelatine 0.5s 1;
  animation: gelatine 0.5s 1;
}
	.connect:active {
  background: #4ecdc4;
  -webkit-transition-duration: 0;
  transition-duration: 0;
  -webkit-box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #3ac7bd;
  box-shadow: 0 0 0 2px #cff09e, 0 0 0 4px #3ac7bd;
}
	@keyframes gelatine {
  from, to {
    -webkit-transform: scale(1, 1);
    transform: scale(1, 1);
  }

  25% {
    -webkit-transform: scale(0.9, 1.1);
    transform: scale(0.9, 1.1);
  }

  50% {
    -webkit-transform: scale(1.1, 0.9);
    transform: scale(1.1, 0.9);
  }

  75% {
    -webkit-transform: scale(0.95, 1.05);
    transform: scale(0.95, 1.05);
  }

  from, to {
    -webkit-transform: scale(1, 1);
    transform: scale(1, 1);
  }

  25% {
    -webkit-transform: scale(0.9, 1.1);
    transform: scale(0.9, 1.1);
  }

  50% {
    -webkit-transform: scale(1.1, 0.9);
    transform: scale(1.1, 0.9);
  }

  75% {
    -webkit-transform: scale(0.95, 1.05);
    transform: scale(0.95, 1.05);
  }
	}
	.photo1{
			border-radius: 360px;
		height: 80px;
		width: 80px;
		float:left;
		margin-left:20px;
	}
</style>
</head>

<body backgruond="css/images/3.jpg">
<div class="head">
	<p class="move"></p>
	<a href="hisMicroblog.action?user.username=${user.username}"><img src="${list[0].user.head}" class="photo" alt="用户头像"></a>
	<p id="name">${user.username}</p>
	<%
	FanDao fDao=new FanDaoImpl();
	User user=(User)session.getAttribute("user");
	int have=fDao.have(user.getUsername(),(String)session.getAttribute("hisname"));
	if(have==0&&(Integer)session.getAttribute("have")==0){	
		have+=1;
	%>
	<a href="addIdol.action?username=${user.username}&have=${have}"
				class="connect">关&nbsp;&nbsp;注</a>
			<%
				} else {
			%>
			<p class="connect">已&nbsp;关&nbsp;注</p>
			<%
				}
			%>
</div>

	<div class="write1">
		<br><br>
		<s:iterator id="a" value="list">
                    <tr align="center">
                      <td><a href="hisMicroblog.action?user.username=${user.username}"><img src="${user.head}" class="photo1" alt="用户头像"></a></td>
                      <div class="mes"><td><font color="red">${user.username}</font><br><font color="purple">${theme}</font><br><font color="brown">${time}</font></td>
                      </div>
                         <div class="contents"><td>${content}</td></div>
                          <div id="comment">
                         <a href="oneMicroblog.action?id=${id}" class="connect1">评&nbsp;&nbsp;论</a>
                         </div>
                    </tr>
                    <br><br><br><br><br><hr><br><br>
                  </s:iterator>
	</div>
</div>
</body>
</html>