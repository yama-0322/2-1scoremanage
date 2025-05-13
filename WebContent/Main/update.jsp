<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.Student,java.util.List,dao.StudentDAO" %>
<jsp:useBean id="student" class="bean.Student" scope="request" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生情報変更</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 40px;
        }
        .container {
            max-width: 600px;
            margin: auto;
        }
        h2 {
            background-color: #f2f2f2;
            padding: 10px;
            border-left: 5px solid #007bff;
        }
        label {
            display: block;
            margin-top: 15px;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }
        .form-buttons {
            margin-top: 20px;
        }
        .form-buttons input, .form-buttons a {
            margin-right: 10px;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            border: none;
            text-decoration: none;
            cursor: pointer;
        }
        .form-buttons a {
            background-color: gray;
            display: inline-block;
        }
    </style>
</head>
<body>

	<main>


        <h2>学生情報変更</h2>
        <form action="StudentUpdate.action" method="post">
            <label>入学年度
                <input type="text" name="entYear" value="<%= student.getEnt_Year() %>">
            </label>
            <label>学生番号
                <input type="text" name="studentNo" value="<%= student.getNo() %>" readonly>
            </label>
            <label>氏名
                <input type="text" name="name" value="<%= student.getName() %>">
            </label>
            <label>クラス
                <input type="text" name="className" value="<%= student.getClass_Num() %>">
            </label>
            <label>在学</label>
            <input type="checkbox" name="isAttend" <%= student.getIs_Attend() ? "checked" : "" %>>

            <div class="form-buttons">
                <input type="submit" value="変更">
                <a href="StudentList.action">戻る</a>
            </div>
        </form>
    </div>
    </main>



</body>
</html>
