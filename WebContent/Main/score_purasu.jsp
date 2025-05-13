<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>成績登録フォーム</title>
</head>
<body>
    <h2>成績を登録する</h2>

    <form action="RegisterGradeServlet" method="post">
        <label>学生ID：</label>
        <input type="text" name="studentId" required><br><br>

        <label>科目名：</label>
        <input type="text" name="subject" required><br><br>

        <label>点数：</label>
        <input type="number" name="score" min="0" max="100" required><br><br>

        <input type="submit" value="登録する">
    </form>

    <br>
    <a href="menu.jsp">⬅ メニューに戻る</a>
</body>
</html>
