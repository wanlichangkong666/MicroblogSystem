<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>我的微博</title>

<script language="javascript" type="text/javascript">          
           function A() {
               var r = window.confirm("确定删除吗？");
               document.getElementById("operate_result_info").style.display = "block";    
           }
</script>    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/putMicroblog.css">
</head>

<body>

<div class="back">
<div class="emoji  emoji--haha">
  <div class="emoji__face">
    <div class="emoji__eyes"></div>
    <div class="emoji__mouth">
      <div class="emoji__tongue"></div>
    </div>
  </div>
</div>
<div class="emoji  emoji--yay">
  <div class="emoji__face">
    <div class="emoji__eyebrows"></div>
    <div class="emoji__mouth"></div>
  </div>
</div>
<div class="emoji  emoji--wow">
  <div class="emoji__face">
    <div class="emoji__eyebrows"></div>
    <div class="emoji__eyes"></div>
    <div class="emoji__mouth"></div>
  </div>
</div>
<div class="emoji  emoji--sad">
  <div class="emoji__face">
    <div class="emoji__eyebrows"></div>
    <div class="emoji__eyes"></div>
    <div class="emoji__mouth"></div>
  </div>
</div>
<div class="emoji  emoji--angry">
  <div class="emoji__face">
    <div class="emoji__eyebrows"></div>
    <div class="emoji__eyes"></div>
    <div class="emoji__mouth"></div>
  </div>
</div>
	</div>
<div class="write">
	<p id="head">记录下你的心情和身边事吧(づ￣ 3￣)づ~</p>
	<form action="putMicroblog.action" method="post">
	<textarea name="microblog.content" class="kuang" type="text" placeholder="说点什么吧" value="" required cols="10" rows="10" ></textarea>
	<font color="#fe4365">分类&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="theme" value="日常" name="microblog.theme">日常&nbsp;&nbsp;<input type="radio" class="theme" value="新鲜事" name="microblog.theme">新鲜事&nbsp;&nbsp;<input type="radio" class="theme" value="明星" name="microblog.theme">明星&nbsp;&nbsp;<input type="radio" class="theme" value="搞笑" name="microblog.theme">搞笑&nbsp;&nbsp;<input type="radio" class="theme" value="军事" name="microblog.theme">军事&nbsp;&nbsp;<input type="radio" class="theme" value="动漫" name="microblog.theme">动漫&nbsp;&nbsp;<input type="radio" class="theme" value="其他" name="microblog.theme">其他</font>
	<input type="submit" value="发表" class="btn">
	</form>
<div id="ever">
	<img src="css/images/20.png" id="photo">
<br>
<s:iterator id="a" value="list">
                    <tr align="center">
                      <td><a href="myMicroblog.action?user.username=${user.username}"><img src="${user.head}" class="photo1" alt="用户头像"></a></td>
                      <div class="mes"><td><font color="red">${user.username}</font><br>
                      <font color="purple">${theme}</font><br>
                      <font color="brown">${time}</font></td>
                      </div>
                         <div class="contents"><td>${content}</td></div>
                    </tr>
                    <a href="deleteMicroblog.action?id=${id}" class="btn" onclick="A()">删除</a>
                    <br><br><br><br><br><hr><br><br>
                  </s:iterator>
</div>
</div>
</body>
</html>
