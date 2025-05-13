<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>メニュー画面</title>

   <%--HTML全体に適用されるCSS（スタイル指定） を書いている部分。ブラウザに「この要素はこういう見た目にしてね！」と指示 --%>
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
    <nav>
      <ul>
        <li><strong><a href="menu.jsp">メニュー</a></strong></li>
        <li><a href="student.jsp">学生管理</a></li>
        <li>
          <a href="score.jsp">成績管理</a>
          <ul class="submenu">
            <li><a href="score_purasu.jsp">成績登録</a></li>
            <li><a href="score_look.jsp">成績参照</a></li>
          </ul>
        </li>
        <li><a href="Subject.jsp">科目管理</a></li>
      </ul>
    </nav>

    <main>
      <h2>ようこそ！</h2>
      <p>左のメニューから操作を選択してください。</p>
    </main>
  </div>

  <%@ include file="footer.jsp" %>

</body>
</html>
