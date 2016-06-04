<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
 		for(int i=0;i<10;i++){
 		out.print(i);
 		out.print("--");
 		}
 		
 		boolean flag=true;
 		request.setAttribute("flag", flag);
 		
 		List<Integer> list=new ArrayList<Integer>();
 		list.add(1);
 		list.add(3);
 		list.add(5);
 		list.add(5);
 		
 		//设置到域对象中
 		pageContext.setAttribute("list", list);
 	%>
 <br/>
 <c:if test="${flag}">bbbb</c:if>
  <br/>
 <c:if test="<%=flag %>">aaaaaaaa</c:if>
 <br/>
 <c:forEach begin="0" end="9" varStatus="status">
 	${status.count-1}
 	${"--" }
 </c:forEach>
 
 <br>
 <c:forEach items="${list}" var="ss">
 	${ss}
 </c:forEach>
</body>
</html>