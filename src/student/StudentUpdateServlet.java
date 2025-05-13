package student;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;

@WebServlet("/student/studentUpdateServlet")
public class StudentUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String entYearStr = request.getParameter("entYear");
        String studentNoStr = request.getParameter("studentNo");
        String nameStr = request.getParameter("name");
        String classNumStr = request.getParameter("classNum");
        boolean isAttend = request.getParameter("isAttend") != null;

        // 入力チェック
        if (nameStr == null || nameStr.trim().isEmpty()) {
            Student student = new Student();
            student.setEnt_Year(Integer.parseInt(entYearStr));
            student.setNo(studentNoStr);
            student.setName(nameStr);
            student.setClass_Num(classNumStr);
            student.setIs_Attend(isAttend);

            request.setAttribute("student", student);
            request.setAttribute("error", "氏名を入力してください。");
            request.getRequestDispatcher("/Main/update.jsp").forward(request, response);
            return;
        }

        // 更新処理
        Student student = new Student();
        student.setEnt_Year(Integer.parseInt(entYearStr));
        student.setNo(studentNoStr);
        student.setName(nameStr);
        student.setClass_Num(classNumStr);
        student.setIs_Attend(isAttend);

        // DB更新処理をここに記述（省略）

        // 完了画面へリダイレクト
        response.sendRedirect("/Main/studentUpdateDone.jsp");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/Main/update.jsp").forward(request, response);
    }

}
