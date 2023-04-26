<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script(스크립트) 예제</title>
</head>
<body>
<% //스크립트릿은 jspService 메서드에 자바 소스임
 System.out.println("스크립트 예제");
 String msg = "스크립트 예제";
 for (int i=1; i<=10; i++) {
 %>
 <%=i + ":" +msg  %><br>
 <%=i + ":" + this.msg1  %><br>
 <%=getMasg() /*리턴값이 있는 함수는 표현식으로 사용 가능*/ %>
 <%} //for 구문 끝 %>
 <% //String msg = "스크립트 예제"; %>
</body>
</html>
<%! //선언문
    String msg1 = "선언문으로 선언한 msg 변수"; //멤버변수
    String getMasg() { //서블릿 클래스의 멤버 메서드
    	return msg1;
    }
%>
