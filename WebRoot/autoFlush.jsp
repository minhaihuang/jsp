<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" autoFlush="true" buffer="1kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	for(int i=0;i<4;i++){
		out.print(i+"hhm");
		
		for(int k=0;k<500;k++){
			out.print(k);
		}
		
		out.print("\n");
		response.getWriter().print(i+"printerWriter");
	}
	
	 %>
</body>
</html>