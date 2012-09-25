<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="3rd/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="css/weibo.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="3rd/bootstrap/js/bootstrap.js"></script>
<title>首页</title>
</head>
<body
	style="background-image: url(img/bg.png); background-repeat: no-repeat; background-color: #C0DEED">
	<div class="container">
		<div class="page-header" style="border: none">
			<h1>Weibo Demo</h1>
			<form class="form-inline" action="login.do" method="post">
				<s:if test="login_user.length() > 0">
					<button type="button" class="btn btn-primary disabled"
						disabled="disabled">
						当前用户：
						<s:property value="login_user" />
					</button>
				</s:if>
				<s:else>
					<input type="text" name="username" class="input-small"
						placeholder="用户名">
					<input type="password" name="password" class="input-small"
						placeholder="密码">
					<button type="submit" class="btn">登录</button>
					<a href="register.do">注册新用户</a>
				</s:else>

				<s:if test="login_user.length() > 0">
					<a href="login!Logout.do">注销</a>
				</s:if>

			</form>
		</div>

		<div class="container-fluid"
			style="background: url(img/wash-white-30.png); padding-top: 20px">
			<div class="row-fluid">
				<div class="span4">
					<div class="well wbwell">
						<form action="post.do" style="margin:0px">
							<textarea name="content" rows="4" style="width:95%; overflow: hidden"></textarea>
							<button type="submit" class="btn">Submit</button>
						</form>
					</div>
					<div class="well wbwell">
						<p>followed user</p>
						<table class="table">
							<tbody>
								<s:iterator value="follow" id="name">
									<tr>
										<td><s:property value="name" /></td>
										<td><a href="unfollow.do?username=<s:property value="name" />">取消关注</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
					
					<div class="well wbwell">
						<p>unfollowed user</p>
						<table class="table">
							<tbody>
								<s:iterator value="unfollow" id="name">
									<tr>
										<td><s:property value="name" /></td>
										<td><a href="follow.do?username=<s:property value="name" />">关注</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
				</div>
				<div class="span8">
					<div class="well">
						<table class="table">
							<thead>
								<tr>
									<th>1</th>
									<th>2</th>
									<th>3</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="posts" id="Post">
									<tr>
										<td><s:property value="username" /></td>
										<td><s:property value="content" /></td>
										<td><s:property value="ts" /></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>

	</div>


</body>
</html>