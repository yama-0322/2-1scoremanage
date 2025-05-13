<%--一覧表示用のjsp --%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="bean.Student, java.util.List,dao.StudentDAO" %>
<%List<Student> list=(List<Student>)request.getAttribute("list");%>



<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>学生一覧</title>
			<style>
			<%--画面全体の本体部分に対する設定--%>

			    body { margin: 0; font-family: 'メイリオ', sans-serif; }
			    .container { display: flex; }


			     <%-- nav=サイドメニュー（左側の部分）の設定 --%>

			    nav {
			      width: 200px;
			      background: #fff0f5;
			      padding: 20px;
			      height: 100vh;
			    }
			    nav ul { list-style-type: none; padding: 0; }
			    nav li { margin: 10px 0; }
			    nav a {         <%-- ⇚ a:hover = マウスを乗せた時の指示 --%>
			      display: block;
			      color: #333;
			      text-decoration: none;
			      padding: 5px 10px;
			      border-radius: 4px;
			    }
			    nav a:hover { background-color: #bdc3c7; }
			    .submenu { margin-left: 15px; }
			    main { flex: 1; padding: 20px; }
			</style>
	</head>
<body>
	<main>
	  <%@ include file="header.jsp" %>
	  <div class="container">
	    <%@ include file="menu_kotei.jsp" %>
			<h3>学生一覧</h3>
			<table border="1">
			<thead>
			  <tr>
			    <th>学生番号</th><th>学生名</th><th>入学年度</th>
			    <th>クラス番号</th><th>在学中フラグ</th><th>学校コード</th>
			  </tr>
			</thead>
			<tbody>
				<%
				if (list != null) {
				%>

				<% for (Student stu : list) { %>
					<tr><%--Studentの属性の出力 --%>
					<td><%=stu.getNo() %></td>
					<td><%=stu.getName() %></td>
					<td><%=stu.getEnt_Year() %></td>
					<td><%=stu.getClass_Num() %></td>
					<td><%=stu.getIs_Attend() %></td>
					<td><%=stu.getSchool_Cd() %></td>
					</tr>
				<% } %>
				<%}else{ %>
					<tr><td colspan="6">学生情報が見つかりませんでした。</td></tr>
				<%} %>
			</tbody>
			</table>
		</div>
		<a href="	student.jsp">学生管理へ</a>
	</main>

	<%@ include file="footer.jsp" %>
</body>
</html>