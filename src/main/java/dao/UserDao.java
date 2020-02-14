package dao;

import beans.User;
import javafx.scene.input.Dragboard;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * AuThor：StAY_
 * Create:2019/11/23
 */
public class UserDao {
    public ArrayList queryAllUsers() throws IOException {
        Connection conn = null;
        ArrayList users = new ArrayList();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook","root","SUJR20051106.");
            String sql = "select * from user2";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                User user = new User();
                user.setId(rs.getString(1));
                user.setUsername(rs.getString(2));
                user.setPwd(rs.getString(3));
                user.setMail(rs.getString(4));
                users.add(user);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
}
