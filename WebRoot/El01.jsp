<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Map,java.util.HashMap,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>"G:/tools/tomcat/apache-tomcat-7.0.65/work/Catalina/localhost/jsp/org/apache/jsp/El01_jsp.java"
<body>
	<%
		//创建一个map，要导入map相关的包，导入格式看本jsp文件的开头行
		Map<String,String> map=new HashMap<String,String>();
		//往map中存放数据
		map.put("hhm", "18");
		map.put("hhc", "20");
		
		//设置servlet属性，没有这句话，el表达式将无法访问map。
		request.setAttribute("aa", map);
		
		//访问Collection对象
		List<String> list=new ArrayList<String>();
		list.add("hhm01");
		list.add("hhm02");
		list.add("hhm02");
		//加入web域对象中，不止可以用request，还可以用其他的域对象，例如application
		application.setAttribute("bb", list);
	 %>
	 <!-- 访问成功-->
	 ${requestScope.aa.hhm}
	 <br/>
	  <!--获取list的某个对象-->
	 ${applicationScope.bb[0]}
	 <br/>
	  <!-- 获取list的全部对象-->
	 ${applicationScope.bb}
</html>