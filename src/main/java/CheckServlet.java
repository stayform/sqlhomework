import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * AuThor：StAY_
 * Create:2019/11/23
 */
public class CheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook","root","SUJR20051106.");

            String id = req.getParameter("id");
            String username = req.getParameter("username");
            String pwd = req.getParameter("pwd");
            String mail = req.getParameter("mail");

            String sql = "select * from User2";
            PreparedStatement stat = conn.prepareStatement(sql);
            ResultSet rs = stat.executeQuery();
            while(rs.next()){
                String did = rs.getString(1);
                String dusername = rs.getString(2);
                String dpwd = rs.getString(3);
                String dmail = rs.getString(4);
                if(did.equals(id)&&dusername.equals(username)&&dpwd.equals(pwd)&&dmail.equals(mail)){
                    req.getSession().setAttribute("username",username);
                    resp.sendRedirect("/writerMessage.jsp");
                    continue;
                }
            }
            resp.sendRedirect("/fail.jsp");
        }catch(Exception e) {
            e.printStackTrace();
        }

    }
}
