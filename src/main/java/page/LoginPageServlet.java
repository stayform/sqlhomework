package page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * AuThor：StAY_
 * Create:2019/11/25
 */
public class LoginPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");

        PrintWriter out =resp.getWriter();
        out.println("<html>");
        out.println("<title>");
        out.println("登陆页面");
        out.println("</title>");
        out.println("<body>");
        out.println("<form action=/check method=get>");
        out.println("ID:"+"<input type=text name=id>"+"<br>");
        out.println("用户名:"+"<input type=text name=username >"+"<br>");
        out.println("密码:"+"<input type=password name=pwd >"+"<br>");
        out.println("邮箱:"+"<input type=text name=mail>"+"<br>");
        out.println("<input type=submit value=登陆>");
        out.println("</body>");
        out.println("<html>");
        out.println("</html>");
        out.println("</html>");

        out.close();
    }
}
