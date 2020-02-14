import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * AuThor：StAY_
 * Create:2019/11/22
 */
public class DBServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            resp.getWriter().println(e.getMessage());
            return;
        }
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/guestbook?useSSL=false", "root", "SUJR20051106.");

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM user2");
            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                resp.getWriter().print(metaData.getColumnLabel(i) + ", ");
            }
            resp.getWriter().println();
            while (resultSet.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    resp.getWriter().print(resultSet.getString(i) + ", ");
                }
                resp.getWriter().println();
            }
            resultSet.close();


            statement.close();
            connection.close();
        } catch (SQLException e) {
            resp.getWriter().println(e.getMessage());
        }
    }
}
