<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>科目管理</title>
    <style>
        /* 画面全体の本体部分に対する設定 */
        body {
            margin: 0;
            font-family: 'メイリオ', Arial, sans-serif;
        }
        .container {
            display: flex;
        }

        /* nav=サイドメニュー（左側の部分）の設定 */
        nav {
            width: 200px;
            background: #fff0f5;
            padding: 20px;
            height: 100vh;
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
        .submenu {
            margin-left: 15px;
        }
        main {
            flex: 1;
            padding: 20px;
        }

        /* 成績照会フォームのスタイル */
        .form-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        .form-group label {
            display: inline-block;
            width: 150px;
        }
        .form-group select, .form-group input {
            padding: 5px;
            width: 200px;
            margin-right: 10px;
        }
        .form-group button {
            padding: 5px 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <div class="container">
        <%@ include file="menu_kotei.jsp" %>

        <main>
            <div style="padding: 10px; margin-bottom: 10px; border: 1px dotted #333333; border-radius: 5px; margin-left: 20px;">
                成績一覧（科目）
            </div>

            <!-- 成績照会フォーム -->
            <div class="form-container">
                <!-- 科目情報フォーム -->
                <form action="SubjectSearchServlet" method="post">
                    <div style="margin-left: 20px;">
                        科目情報
                    </div>
                    <div class="form-group">
                        <label for="entryYear">入学年度</label>
                        <select id="entryYear" name="entryYear">
                            <option value="2021"> 2021</option>
                            <option value="2020"> 2020</option>
                            <option value="2019"> 2019</option>
                            <!-- 必要に応じて追加 -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="class">クラス</label>
                        <select id="class" name="class">
                            <option value="201">201</option>
                            <option value="202">202</option>
                            <option value="203">203</option>
                            <!-- 必要に応じて追加 -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="subject">科目</label>
                        <select id="subject" name="subject">
                            <option value="">情報処理基礎知識 I</option>
                            <option value="kokugo">国語</option>
                            <option value="math">数学</option>
                            <!-- 必要に応じて追加 -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label></label>
                        <button type="submit">検索</button>
                    </div>
                </form>

                <hr width="700">

                <!-- 学生情報フォーム -->
                <form action="GradeServlet" method="post">
                    <div style="margin-left: 20px;">
                        学生情報
                    </div>
                    <div class="form-group">
                        <label for="studentId">学生番号</label>
                        <input type="text" id="studentId" name="studentId" placeholder="学生番号を入力してください">
                    </div>
                    <div class="form-group">
                        <label></label>
                        <button type="submit">検索</button>
                    </div>
                </form>
            </div>
        </main>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>