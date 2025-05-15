<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="DAO.SubjectDAO" %>
<%@ page import="subject.Subject" %>
<%
    String code = request.getParameter("code");
    Subject subject = null;
    if (code != null && !code.isEmpty()) {
        SubjectDAO dao = new SubjectDAO();
        subject = dao.findByCode(code);
    }
%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>科目編集</title>
    <link rel="stylesheet" href="../css/menu_style.css">
</head>
<body>

<%@ include file="header.jsp" %>

<div class="wrapper">
  <%@ include file="menu_kotei.jsp" %>

  <main>
    <div id="subheader">
      <h3>科目変更</h3>
    </div>

    <form action="subjectUpdateServlet" method="post">
      <input type="hidden" name="code" value="<%= subject != null ? subject.getCode() : "" %>">
      <label>科目コード</label><br>
		<input type="text" name="code" value="<%= subject != null ? subject.getCode() : "" %>"><br><br>
      <label>科目名</label><br>
		<input type="text" name="name" value="<%= subject != null ? subject.getName() : "" %>"><br><br>
      <form action="update-success.jsp" method="POST">
    <input type="submit" value="更新" class="button-blue">
</form>
	  <a href="" style="color: #007bff; font-weight: bold;"> 戻る</a>
    </form>
  </main>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
