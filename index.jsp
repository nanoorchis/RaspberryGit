<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jt20160507.Main"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jt20160507</title>
</head>
<body>
	<h1>jt20160507</h1>
	<hr />
	<%
		Main m = new Main();
		//定义即将访问的链接
		String url = "http://www.zhihu.com/explore/recommendations";
		String patternStr = "question_link.+?>(.+?)<";
		String result = m.getResult(url, patternStr);
		//输出的是(.+?)\代替的内容
		out.print(result);
	%>
</body>
</html>