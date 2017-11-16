<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/login.css">
<title>微博登陆</title>
</head>
<body >
 <div class="wrapper">
 <div id="war">
  <form action="login.action" class="login">
    <p class="title">用户登录</p>
    <input name="username" type="text" placeholder="用户名" autofocus/>
    <i class="fa fa-user"></i>
    <input name="password" type="password" placeholder="密码" />
        <i class="fa fa-key"></i>
    <font size="0.8em">没有注册？点击</font><a href="register.jsp">注册</a>
    <button type="submit">
      <i class="spinner"></i>
      <span class="state">登陆</span>
    </button>
  </form>
  </div>
	</div>
</body>
</html>


