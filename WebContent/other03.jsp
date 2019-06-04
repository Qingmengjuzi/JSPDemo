<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

这是other03的页面
<br>使用作用域来存储数据<br>

<%
	
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
%>

取出四个作用域中的值<br>

<%=pageContext.getAttribute("name")%>
<%=request.getAttribute("name")%>
<%=session.getAttribute("name")%>
<%=application.getAttribute("name")%>

<!-- //跳转到下一个界面去了 -->

<%
	//请求转发. 一次请求
	//request.getRequestDispatcher("other04.jsp").forward(request, response);

	//重定向 2次请求
	response.sendRedirect("other04.jsp");
	
%>

</body>
</html>