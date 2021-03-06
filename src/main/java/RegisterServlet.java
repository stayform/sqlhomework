import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * AuThor：StAY_
 * Create:2019/11/11
 */
public class RegisterServlet extends HttpServlet {
    private String id;
    private String username;
    private String pwd;
    private String mail;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");

        id =req.getParameter("id");
        username = req.getParameter("username");
        pwd = req.getParameter("pwd");
        mail = req.getParameter("mail");

        try {
            Class.forName("com.mysql.jdbc.Driver");//加载驱动
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook", "root", "SUJR20051106.");//建立连接
            /* 查询所有数据库*/
            String sql = "SELECT * FROM User2";//定义查询语句
            PreparedStatement stat = conn.prepareStatement(sql);
            ResultSet rs = stat.executeQuery(sql);//存储结果
            PrintWriter out = resp.getWriter();
            while(rs.next()){
                out.println("<tr>");
                out.println("<td>"+rs.getString(1)+"<td>");
                out.println("<td>"+rs.getString(2)+"<td>");
                out.println("<tr>");
            }

            /*插入用户在register.jsp中写的数据*/
            String sql2 = "insert into user2(id,username,pwd,mail)"
                    + " values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql2);

            ps.setString(1, id);
            ps.setString(2,username);
            ps.setString(3,pwd);
            ps.setString(4,mail);
            int i = ps.executeUpdate();//占位符语句不能用带有参数的executeUpdate()执行，如果是在sql语句里就写定了值的情况可以用executeUpdate(sql)
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
