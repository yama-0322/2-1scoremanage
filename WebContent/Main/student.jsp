<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Student" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>学生管理</title>
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

  <%@ include file="header.jsp" %>

  <div class="container">
    <%@ include file="menu_kotei.jsp" %>

    <main>
      <h2>学生管理</h2>
      <p>学生一覧表を参照する</p>
	  <a href="${pageContext.request.contextPath}/student/studentListServlet">学生一覧</a>
      <a href="${pageContext.request.contextPath}/student/studentUpdateServlet">学生情報変更</a>



    </main>
  </div>

  <%@ include file="footer.jsp" %>

</body>
</html>
