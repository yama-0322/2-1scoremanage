<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="bean.Student" %>
<jsp:useBean id="student" class="bean.Student" scope="request" />
<html>
<head>
    <title>得点管理システム - 学生情報変更</title>
</head>
<body>
    <h2>得点管理システム</h2>
    <div>
        <h3>学生情報変更</h3>
        <%--<form action="StudentUpdateServlet" method="post">--%>

        <form action="${pageContext.request.contextPath}/student/StudentUpdateServlet" method="post">

            <label>入学年度</label><br>
            <input type="text" name="entYear" value="<%= student.getEnt_Year() %>"><br><br>

            <label>学生番号</label><br>
            <input type="text" name="studentNo" value="<%= student.getNo() %>" readonly><br><br>

            <label>氏名</label><br>
            <input type="text" name="name" value="<%= student.getName() %>"><br><br>

            <label>クラス</label><br>
            <select name="classNum">
            	<option value="101" <%= "101".equals(student.getClass_Num()) ? "selected" : "" %>>101</option>
            	<option value="102" <%= "102".equals(student.getClass_Num()) ? "selected" : "" %>>102</option>
            	<option value="201" <%= "201".equals(student.getClass_Num()) ? "selected" : "" %>>201</option>
               	<option value="202" <%= "202".equals(student.getClass_Num()) ? "selected" : "" %>>202</option>


            </select><br><br>

            <label>在学</label><br>
            <input type="checkbox" name="isAttend" <%= student.getIs_Attend() ? "checked" : "" %>><br><br>

            <input type="submit" value="変更">
        </form>


        <br>
        <a href="student.jsp">戻る</a>


    </div>
</body>
</html>
