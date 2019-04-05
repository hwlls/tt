<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pageContext.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
<%
	HttpServletRequest resq=(HttpServletRequest) pageContext.getRequest();
	//page范围属性
	pageContext.setAttribute("1", "GGboy",pageContext.PAGE_SCOPE);
	//设置request范围属性
	resq.setAttribute("1","DASDAS");
	String str1=(String)pageContext.getAttribute("1",pageContext.PAGE_SCOPE);
	String str2=(String)pageContext.getAttribute("1",pageContext.REQUEST_SCOPE);
 %>
 <%="page范围"+str1 %><br />
 <%="request范围"+str2 %>
  </body>
</html>
