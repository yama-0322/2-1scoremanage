<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>メニュー一覧</title>
<style>
  /* 全体設定 */
  body {
    margin: 0;
    font-family: 'メイリオ', sans-serif;
    height: 100vh;
    display: flex;
    flex-direction: column;
  }
  .container {
    display: flex;
    flex: 1;
  }


  nav {
    width: 200px;
    background: #fff0f5;
    padding: 20px;
    height: 100vh;
    border-right: 1px solid #bdc3c7;
  }
  nav ul {
    list-style-type: none;
    padding: 0;
  }
  nav li {
    margin: 10px 0;
  }
  nav a {
    display: block;
    color: #333;
    text-decoration: none;
    padding: 5px 10px;
    border-radius: 4px;
  }
  nav a:hover {
    background-color: #bdc3c7;
  }

  main {
    flex: 1;
    padding: 20px;
  }
  #subheader {
    padding: 1rem;
    background-color: gainsboro;
    border-radius: 5px;
    display: flex;
    justify-content: left;
    align-items: center;
    width: 95%;
    margin: auto;
  }
  #subtitle {
    padding: 0.5rem;
  }
  h3 {
    margin: 0;
    font-size: 1.5rem;
  }
</style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
<%@ include file="menu_kotei.jsp" %>
<main>
<div id="subheader">
<div id="subtitle">
<h3>メニュー</h3>
</div>
</div>
</main>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>